defmodule ListFilter do
  def call(list), do: filter(list)

  defp parseInt(list) do
    Enum.flat_map(list, fn elem ->
      case Integer.parse(elem) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end

  defp filter(list) do
    list = parseInt(list)
    Enum.filter(list, fn elem -> rem(elem, 2) == 1 end)
  end
end
