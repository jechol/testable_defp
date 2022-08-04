# Testable defp

Change defp to def when mix test

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `testable_defp` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:testable_defp, "~> 0.1.0"}
  ]
end
```

## Example

```elixir
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
```
