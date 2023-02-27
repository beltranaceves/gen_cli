defmodule Mix.Tasks.Gen do
  @moduledoc "The gen mix task: `mix help gen`"
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function."
  def run(argv) do
    GenCLI.Runner.run(argv)
  end
end
