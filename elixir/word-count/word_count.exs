defmodule Words do
  defp split(sentence) do
    String.downcase(sentence)
    |> String.replace(~r/[^a-z\ 0-9]/, "")
    |> String.split()
  end
  defp word_count(word, map) do
    case Map.fetch(map, word) do
      :error -> 1
      {:ok, n} -> n+1
    end
  end
  defp add(word, map) do
    Map.put(map, word, word_count(word, map))
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

