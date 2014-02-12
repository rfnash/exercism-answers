defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map() 
  def count(sentence) do
    Enum.reduce(String.split(sentence), Map.new, fn(word, map) -> Map.put(map, word, 1) end)
  end
end
