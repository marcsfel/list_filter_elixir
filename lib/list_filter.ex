defmodule ListFilter do
  def call(list), do: count(list)

  defp parseInt(list) do
    Enum.flat_map(list, fn elem ->
      case Integer.parse(elem) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end

  defp count(list) do
    list = parseInt(list)
    Enum.count(list, fn elem -> rem(elem, 2) == 1 end)
  end
end
