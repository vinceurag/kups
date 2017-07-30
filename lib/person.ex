defmodule Kups.Person do
  @moduledoc """
  Functions for generating fake data related to a person (any gender).
  """
  alias Kups.Collection

    @doc """
    Generates a full name of a person.

    Accepts a boolean parameter. Defaults to `false`.

    ## Examples

          iex(1)> Kups.Person.full_name(true)
          "Maria R. Dela Cruz"
          iex(2)> Kups.Person.full_name
          "Maria Dela Cruz"

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
    Generates first name of a person.

    ## Example

          iex> Kups.Person.first_name
          "Maria"

    """
    @spec first_name() :: String.t
    def first_name do
      Enum.random(Collection.Person.female_first_name ++ Collection.Person.male_first_name)
    end

    @doc """
    Generates last name of a person.

    ## Example

          iex> Kups.Person.last_name
          "Dela Cruz"

    """
    @spec last_name() :: String.t
    def last_name do
      Enum.random(Collection.Person.last_name)
    end

    @doc """
    Generates gender of a person.

    ## Example

          iex> Kups.Person.gender
          "male"

    """
    @spec gender() :: String.t
    def gender do
      Enum.random(Collection.Person.gender)
    end

    @doc """
    Generates salutation of a person.

    ## Example

          iex> Kups.Person.prefix
          "Gng."

    """
    @spec prefix() :: String.t
    def prefix do
      Enum.random(Collection.Person.prefix)
    end
end
