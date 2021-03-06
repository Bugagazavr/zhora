defmodule Zhora.Project do
  use Zhora.Web, :model

  schema "projects" do
    field :name, :string
    field :api_key, :string

    timestamps
  end

  @required_fields ~w(name api_key)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
