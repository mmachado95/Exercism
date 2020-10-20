defmodule SecretHandshake do
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    code
    |> Integer.digits(2)
    |> Enum.reverse
    |> Enum.with_index
    |> Enum.map(&process/1)
    |> Enum.filter(& &1)
    |> reverse
  end

  defp process({1, 0}), do: "wink"
  defp process({1, 1}), do: "double blink"
  defp process({1, 2}), do: "close your eyes"
  defp process({1, 3}), do: "jump"
  defp process({1, 4}), do: "reverse"
  defp process({_, _}), do: nil

  defp reverse(code) do
    case Enum.at(code, -1) do
      "reverse" -> code |> Enum.drop(-1) |> Enum.reverse
      _ -> code
    end
  end
end
