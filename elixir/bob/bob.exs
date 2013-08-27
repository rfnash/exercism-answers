defmodule Teenager do
  defp isShouting(heard) do
    String.upcase(heard) == heard
  end
  defp isQuestion(heard) do
    String.ends_with? heard, "?"
  end
  defp isSilence(heard) do
    String.lstrip(heard) == ""
  end
  def hey(heard) do
    cond do
      isSilence(heard) -> "Fine. Be that way!"
      isQuestion(heard) -> "Sure."
      isShouting(heard) -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
