defmodule NestedSetEcto do
  @moduledoc """
  Documentation for NestedSetEcto.
  A behaviour module for implementing Nested Set in Ecto.
  """
  
  @callback new_changeset(resource :: term, attrs :: term) :: %Ecto.Changeset{}
  @callback child_changeset(resource :: term, attrs :: term, parent_resource :: term) :: %Ecto.Changeset{}
  
  defmacro __using__(_opts) do
    quote do
      @behaviour NestedSetEcto
      
      use NestedSetEcto.Predicates
      use NestedSetEcto.Queries
      use NestedSetEcto.Multies
    end
  end
end
