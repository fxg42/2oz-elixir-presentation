defmodule Greeter do
  use GenServer

  def init(greeting) do
    {:ok, %{greeting: greeting}}
  end
  def handle_call({:greet, name}, _sender, state) do
    {:reply, "#{state.greeting}, #{name}!", state}
  end
end
