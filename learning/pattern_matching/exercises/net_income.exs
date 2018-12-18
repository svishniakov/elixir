defmodule IncomeTax do
  def total(brutto_salary) when brutto_salary <= 2000, do: 0
  def total(brutto_salary) when brutto_salary <= 3000, do: brutto_salary * 0.05
  def total(brutto_salary) when brutto_salary <= 6000, do: brutto_salary * 0.1
  def total(brutto_salary), do: brutto_salary * 0.15
end

brutto_salary = IO.gets("What is your brutto salary:\n")

salary = case Float.parse(brutto_salary) do
  :error -> "Invalid value entered: #{brutto_salary}"
  {brutto_salary, _} ->
    tax = IncomeTax.total(brutto_salary)
    "Net salary: #{brutto_salary - tax} - Income tax: #{tax}"
end

IO.puts salary
