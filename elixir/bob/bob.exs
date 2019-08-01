defmodule Bob do

  defp is_uppercase(input) do
    Regex.match?(~r/^[^a-z]*$/, input) and !Regex.match?(~r/^[\d\W]+$/, input)
  end

  defp is_question(input) do
    String.ends_with?(input, "?")
  end

  defp is_silent(input) do
    String.trim(input) == ""
  end

  def hey(input) do
    cond do
      is_silent(input) -> "Fine. Be that way!"
      is_uppercase(input) and is_question(input) -> "Calm down, I know what I'm doing!"
      is_uppercase(input) -> "Whoa, chill out!"
      is_question(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
