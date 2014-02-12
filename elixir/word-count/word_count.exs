defmodule Words do
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
  defp split(sentence) do
    String.split(sentence)
  end
  defp add(word, map) do
    Map.put(map, word, 1)
  end
end

