defmodule HelloWeb.TodoJSON do
  alias Hello.Todos.Todo

  @doc """
  Renders a list of todos.
  """
  def index(%{todos: todos}) do
    %{data: for(todo <- todos, do: data(todo))}
  end

  @doc """
  Renders a single todo.
  """
  def show(%{todo: todo}) do
    %{data: data(todo)}
  end

  defp data(%Todo{} = todo) do
    %{
      id: todo.id,
      status: todo.status,
      title: todo.title
    }
  end
end
