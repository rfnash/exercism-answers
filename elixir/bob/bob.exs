defmodule Teenager do
  defp shouting?(heard) do
    String.upcase(heard) == heard
  end
  defp question?(heard) do
    String.ends_with? heard, "?"
  end
  defp silence?(heard) do
    String.lstrip(heard) == ""
  end
  def hey(heard) do
    cond do
      silence?(heard) -> "Fine. Be that way!"
      question?(heard) -> "Sure."
      shouting?(heard) -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
