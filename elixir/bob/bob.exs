defmodule Teenager do
  def hey(a) do
		cond do
			String.ends_with? a, "?" ->
				"Sure."
			true ->
				"Whatever."
		end
  end
end