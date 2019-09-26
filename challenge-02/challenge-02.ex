defmodule DiamondGenerator do
  def diamond(n, char \\ "*") do
    IO.puts(accordion(n)
    |> Enum.take_every(2)
    |> Enum.map(fn char_count ->
      blanks = n - char_count
      padding = trunc(blanks / 2)

      ""
      |> String.pad_leading(padding)
      |> String.pad_trailing(padding + char_count, char)
    end)
    |> Enum.join("\n"))
  end

  defp accordion(n) do
    #Option 1
    Enum.concat(Enum.to_list(1..n), Enum.reverse(1..n - 1))

    # Could be a concat with two ranges but hey let's be creative
    #Option 2
    # 1..(2 * n - 1)
    # |> Enum.map(fn
    #   x when x > n ->
    #     n - (x - n)

    #   x ->
    #     x
    # end)
  end
end
