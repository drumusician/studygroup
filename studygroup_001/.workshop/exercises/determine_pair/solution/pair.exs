defmodule Pair do

  # One pair
  @spec determine_pair(list) :: boolean
  def determine_pair(list) do
    new_list = Enum.uniq_by(list, fn [_, x] -> x end)
    cond do
      length(new_list) < 5 ->
        true
      true ->
        false
    end
  end
end
