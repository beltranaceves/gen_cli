defmodule Mix.Tasks.Gen do
  @moduledoc "The gen mix task: `mix help gen`"
  use Mix.Task

  # TODO: add whatever callback mix help _ needs to show instructions on the command line
  def run(argv) do
    {_switches, positional_args, _} = OptionParser.parse(argv, aliases: [h: :help, i: :interactive], strict: [interactive: :boolean, filepath: :string])
    GenCLI.Runner.run(positional_args |> List.first())
  end
end
