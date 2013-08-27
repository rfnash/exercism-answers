defmodule Teenager do
  def hey(heard) do
    cond do
      String.lstrip(heard) == "" -> "Fine. Be that way!"
      String.ends_with? heard, "?" -> "Sure."
      String.upcase(heard) == heard -> "Woah, chill out!"
      true -> "Whatever."
    end
  end
end
