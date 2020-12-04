defmodule Bob do
  def hey(input) do
    cond do
      String.match?(input, ~r/([A-Z]{1,}\?+)/) -> "Calm down, I know what I'm doing!"
      String.match?(input, ~r/([A-Z][A-Z]+|\b[A-Z]\b)(|\!)/) -> "Whoa, chill out!"
      String.match?(input, ~r/[0-9a-zA-Z]{1,}\?+/) -> "Sure."
      true -> "Whatever."
    end
  end
end
