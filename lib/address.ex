defmodule Kups.Address do
  @moduledoc """
  Functions for generating fake address data.
  """
  alias Kups.Collection.Address

  @doc """
  Returns a random city.

  ## Example
        iex> Kups.Address.city
        "Zamboanga"
  """
  @spec city() :: String.t
  def city do
    Enum.random(Address.city)
  end

  @doc """
  Returns a random province.

  ## Example
        iex> Kups.Address.province
        "Rizal"
  """
  @spec province() :: String.t
  def province do
    Enum.random(Address.province)
  end
end
