defmodule GenCLI.MixProject do
  use Mix.Project

  def project do
    [
      app: :gen_cli,
      description: "CLI tool for gen_dsl",
      version: "0.2.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/beltranaceves/gen_cli",
      homepage_url: "HEX_URL",
      package: [
        maintainers: ["Beltrán Aceves Gil"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => "https://github.com/beltranaceves/gen_cli"
        }
      ],
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :mix, :ex_unit, :hex]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.27", only: :dev, runtime: false},
      # TODO: check deps and versions
      # {:gen_dsl, path: "../gen_dsl"}
      {:gen_dsl, "~> 0.3.1"}
    ]
  end

  def escript do
    [main_module: GenCLI.Runner]
  end
end
