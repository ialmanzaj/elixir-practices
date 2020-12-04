defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'

  """

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> pattern_matching
  end

  defp pattern_matching(molecula) do
    cond do
      molecula == 'G' -> 'C'
      molecula == 'C' -> 'G'
      molecula == 'T' -> 'A'
      molecula == 'A' -> 'U'
      true -> "unknown"
    end
  end
end
