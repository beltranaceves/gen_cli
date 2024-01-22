defmodule GenCLI.Runner do
  @moduledoc "The gen mix task: `mix help gen`"

  def run(args) do
    GenDSL.generate_from_filepath(args)
  end
end
