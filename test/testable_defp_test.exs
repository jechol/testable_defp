defmodule TestableDefpTest do
  use ExUnit.Case
  doctest TestableDefp

  defmodule Subject do
    use TestableDefp

    defp add(a, b) do
      a + b
    end
  end

  test "defp is def for test" do
    assert 3 == Subject.add(1, 2)
  end
end
