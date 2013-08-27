defmodule Teenager do
  def hey(a) do
		cond do
			a == "" ->
        "Fine. Be that way!"
      String.ends_with? a, "?" ->
				"Sure."
      String.upcase(a) == a ->
         "Woah, chill out!"
			true ->
				"Whatever."
		end
  end
end