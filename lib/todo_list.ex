defmodule TodoList do
  @moduledoc """
  Simple todo-list

  This module reference is `simple_todo.ex`
  """
  @doc """
  Initializing to-do list
  """
  @spec new() :: %{}
  def new, do: %{}

  @doc """
  Add or update to-do list
  """
  @spec add_entry(map(), Date.t(), String.t()) :: map()
  def add_entry(todo_list, date, title) do
    Map.update(
      todo_list,
      date,
      [title],
      fn titles -> [title | titles] end
    )
  end

  @doc """
  Querying to-do list
  """
  @spec entries(map(), Date.t()) :: map()
  def entries(todo_list, date) do
    Map.get(todo_list, date, [])
  end
end
