defmodule Workshop.Exercise.FirstExerciseCheck do
  use Workshop.Validator
  require FizzBuzz

  verify "verify FizzBuzz.translate(1)" do
    (FizzBuzz.translate(1) == 1 && :ok) || {:error, "FizzBuzz.translate(1) == 1 expected, got #{FizzBuzz.translate(1)}"}
  end

  verify "verify FizzBuzz.translate(5)" do
    (FizzBuzz.translate(5) == "Buzz" && :ok) || {:error, "FizzBuzz.translate(5) == 'Buzz', got #{FizzBuzz.translate(5)} "}
  end

  verify "verify FizzBuzz.translate(3)" do
    (FizzBuzz.translate(3) == "Fizz" && :ok) || {:error, "FizzBuzz.translate(3) == 'Fizz' expected, got #{FizzBuzz.translate(3)}"}
  end

  verify "verify FizzBuzz.translate(45)" do
    (FizzBuzz.translate(45) == "FizzBuzz" && :ok) || {:error, "FizzBuzz.translate(45) 'FizzBuzz' expected, got #{FizzBuzz.translate(45)}"}
  end
end
