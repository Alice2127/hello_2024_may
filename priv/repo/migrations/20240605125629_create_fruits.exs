defmodule Hello.Repo.Migrations.CreateFruits do
  use Ecto.Migration

  def change do
    create table(:fruits) do
      add :name, :string

      timestamps(type: :utc_datetime)
    end
  end
end
