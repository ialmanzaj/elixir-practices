defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """

  @spec count(String.t()) :: map
  def count(sentence) do
    String.split(sentence, ~r/([^\w\-]|_)/u)
    |> Enum.filter(fn x -> x != "" end)
    |> Enum.frequencies_by(&String.downcase/1)
    |> IO.inspect()
  end
end
