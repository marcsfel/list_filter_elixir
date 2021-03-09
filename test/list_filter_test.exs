defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "convert and return just thr odd numbers" do
      list = ["1", "2", "7", "pedra"]

      response = ListFilter.call(list)

      expected_response = [1, 7]

      assert response == expected_response
    end
  end
end
