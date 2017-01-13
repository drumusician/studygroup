defmodule Workshop.Exercise.DeterminePairCheck do
  use Workshop.Validator
  use ExUnit.Case

  verify "one pair" do
    (Pair.determine_pair(one_pair) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "one pair separated should be valid" do
    (Pair.determine_pair(one_pair_separated) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "straight has no pair" do
    (Pair.determine_pair(straight) != true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "two pairs has a pair" do
    (Pair.determine_pair(two_pairs) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "full house has a pair" do
    (Pair.determine_pair(full_house) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "something has no pair" do
    (Pair.determine_pair(something) != true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "four of kind has a pair" do
    (Pair.determine_pair(four_of_kind) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  verify "three of kind has a pair" do
    (Pair.determine_pair(three_of_kind) == true && :ok) || {:error, "One Pair failed to validate"}
  end

  defp four_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 5], [:hearts, 7] ]
  end

  defp full_house do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 6] ]
  end

  defp straight do
    [ [:hearts, 4], [:spades, 5], [:diamonds, 6], [:clubs, 7], [:hearts, 8] ]
  end

  defp three_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 7] ]
  end

  defp two_pairs do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, 6], [:hearts, 7] ]
  end

  defp one_pair do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, :ace], [:hearts, 7] ]
  end

  defp one_pair_separated do
    [ [:hearts, 5], [:hearts, 7], [:diamonds, 6], [:clubs, :ace], [:spades, 5] ]
  end

  defp something do
    [ [:hearts, 5], [:spades, 4], [:diamonds, 6], [:clubs, :jack], [:hearts, 7] ]
  end

 # verify "all tests pass" do
 #   ((%{failures: 0} = ExUnit.run) && :ok) || ExUnit.start && {:error, "Some tests have failed"}
 # end
end
