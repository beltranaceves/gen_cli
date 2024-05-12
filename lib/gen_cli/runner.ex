defmodule GenCLI.Runner do
  @moduledoc "The gen mix task: `mix help gen`"
  import GenDSL
  def run(args) do
    generate_from_filepath(args)
  end
end
