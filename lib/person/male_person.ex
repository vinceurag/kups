defmodule Kups.Person.Male do
  @moduledoc """
  Functions for generating fake data related to a male person.
  """
  alias Kups.Collection

    @doc """
    Generates a full name of a male person.

    Accepts a boolean parameter. Defaults to `false`.

    ## Examples

          iex(1)> Kups.Person.Male.full_name(true)
          "Juan R. Dela Cruz"
          iex(2)> Kups.Person.Male.full_name
          "Juan Dela Cruz"

    """
    @spec full_name() :: String.t
    def full_name(with_middle_initial \\ false) do
      case with_middle_initial do
        true ->
          middle_initial = String.split("abcdefghijklmnopqrstuvwxyz", "", trim: true)
          first_name() <> " #{String.capitalize(Enum.random(middle_initial))}. " <> last_name()
        false ->
          "#{first_name()} #{last_name()}"
      end
    end

    @doc """
    Generates first name of a male person.

    ## Example

          iex> Kups.Person.Male.first_name
          "Juan"

    """
    @spec first_name() :: String.t
    def first_name do
      Enum.random(Collection.Person.male_first_name)
    end

    @doc """
    Generates last name of a male person.

    ## Example

          iex> Kups.Person.Male.last_name
          "Dela Cruz"

    """
    @spec last_name() :: String.t
    def last_name do
      Enum.random(Collection.Person.last_name)
    end
end
