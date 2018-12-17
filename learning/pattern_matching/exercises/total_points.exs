defmodule CharacterAttributes do
  def spent_points(%{strength: str, dexterity: dex, intelligence: int}) do
    (str * 2 ) + (dex * 3 ) + (int * 3)
  end
end
