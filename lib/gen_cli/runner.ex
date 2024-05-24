defmodule GenCLI.Runner do
  @moduledoc "The gen mix task: `mix help gen`"
  def run(args) do
    # Mix.install([{:gen_dsl, "~> 0.2.8"}], force: true)
    GenDSL.generate_from_filepath(args)
  end

  # Needed for escript
  def main(args) do
    run(args)
  end
end
