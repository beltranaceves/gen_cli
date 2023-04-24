defmodule GenCLI.Runner do
  @moduledoc "The gen mix task: `mix help gen`"

  @default_flags ["--install"]

  def run(args) do
    args = args ++ @default_flags
    [generated_app_name | _] = args ++ @default_flags
    # Create a new Phoenix project
    # Force download all its dependencies so phx.gen is available
    # Mix.Tasks.Phx.New.run(args)
    # Read and Parse Blueprint
    gen_elements = GenDSL.Parser.read_blueprint()
    # Execute commands
    # File.cd(generated_app_name)
    # gen_commands = Enum.map(gen_elements, &GenDSL.Parser.struct_to_command/1)
    # TODO: change this to capture all output and show it at the end
    # Enum.each(gen_commands, &run_command/1)
  end

  def run_command(command) do
    {command_head, command_args} = command |> List.pop_at(0)
    command = ["phx.gen." <> command_head | command_args]
    {cmd_output, _} = System.cmd("mix", command)
    Mix.shell().info(cmd_output)
  end
end
