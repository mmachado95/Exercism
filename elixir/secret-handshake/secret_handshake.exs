defmodule SecretHandshake do
  @doc """
  Returns a char list corresponding to the binary representation of a decimal number
  """
  @spec get_binary_representation(number :: integer) :: String.t()
  def get_binary_representation(number) do
    binary_string = Integer.to_string(number, 2)
    Enum.reverse(String.graphemes(binary_string))
  end

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    t = get_binary_representation(10)
    IO.puts t
  end
end
