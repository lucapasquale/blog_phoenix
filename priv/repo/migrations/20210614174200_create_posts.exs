defmodule BlogPhoenix.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :body, :string
      add :published_at, :naive_datetime

      add :user_id, references(:users, on_delete: :nothing), null: false
      timestamps()
    end

    create index(:posts, [:user_id])
  end
end
