defmodule KupsTest.Address do
  use ExUnit.Case
  alias Kups.{Address}

  test "Kups.Address.city returns a random city" do
    assert Kups.Collection.Address.city |> Enum.member?(Address.city)
  end

  test "Kups.Address.province returns a random province" do
    assert Kups.Collection.Address.province |> Enum.member?(Address.province)
  end
end
