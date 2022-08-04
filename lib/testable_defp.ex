defmodule TestableDefp do
  defmacro __using__([]) do
    quote do
      import Kernel, except: [defp: 1, defp: 2]
      import TestableDefp, only: [defp: 1, defp: 2]
    end
  end

  defmacro defp(head) do
    if Mix.env() == :test do
      quote do
        Kernel.def(unquote(head))
      end
    else
      quote do
        Kernel.defp(unquote(head))
      end
    end
  end

  defmacro defp(head, body) do
    if Mix.env() == :test do
      quote do
        Kernel.def(unquote(head), unquote(body))
      end
    else
      quote do
        Kernel.defp(unquote(head), unquote(body))
      end
    end
  end
end
