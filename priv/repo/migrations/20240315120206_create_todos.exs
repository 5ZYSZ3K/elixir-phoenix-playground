defmodule Hello.Repo.Migrations.CreateTodos do
  use Ecto.Migration

  def change do
    create table(:todos) do
      add :status, :integer
      add :title, :string

      timestamps(type: :utc_datetime)
    end
  end
end
