defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """

  @spec verse(integer) :: String.t()
  def verse(number) do
    cond do
      number > 1 ->
        "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{
          number - 1
        } bottle#{if number == 2, do: "", else: "s"} of beer on the wall.\n"

      number == 1 ->
        "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"

      number == 0 ->
        "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"

      true ->
        "Don't exist"
    end
  end

  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()
  def lyrics(range) do
    _..last = range

    for n <- range,
        into: "",
        do: verse(n) <> if(Enum.count(range) > 1 and n != last, do: "\n", else: "")
  end

  def lyrics() do
    lyrics(99..0)
  end
end
