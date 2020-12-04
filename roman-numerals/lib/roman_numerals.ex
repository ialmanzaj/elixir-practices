defmodule RomanNumerals do
  @doc """
  Convert the number to a roman number.
  """
  defp sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end
  defp sum_list([], accumulator) do
    accumulator
  end

  defp roman(num, resultado) do
    count = num
    if count > 0 do
      result =
        cond do
          num >= 1 and num < 4 -> [1, 'I']
          num >= 4 and num < 9 ->  [5, 'V']
          num >= 9 and num < 39 -> [10, 'X']
          num >= 40 and num < 89 -> [50, 'L']
          num >= 89 and num < 299 -> [100, 'C']
          num >= 500 -> [500, 'D']
          num >= 1000 and num <= 3000 -> [1000, 'M']
        end
      count = num - List.first(result)
      resultado = resultado ++ List.last(result)
      #IO.puts "#{resultado}"
      roman(count, resultado)
    else
      IO.puts "#{resultado}"
      to_string resultado
    end
  end
  @spec numeral(pos_integer) :: String.t()
  def numeral(num) do
    roman(num, [])

  end
end
