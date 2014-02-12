defmodule Words do
  defp split(sentence) do
    String.downcase(sentence)
    |> String.replace(~r/[^a-z\ 0-9]/, "")
    |> String.split()
  end
  defp add(word, map) do
    Map.put(map, word, 1)
  end
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map() 
  def count(sentence) do
    Enum.reduce(split(sentence),
      Map.new,
      fn (word, map) -> add(word, map) end)
  end
end

