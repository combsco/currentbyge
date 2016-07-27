defmodule CurrentByGE.Mixfile do
  use Mix.Project

  def project do
    [app: :currentbyge,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  # def application do
  #   [applications: (Mix.env == :dev && [:exsync] || []) ++ [:logger, :httpoison, :exjsx]] #,
  #   #  mod: {CurrentByGE, []}]
  # end

  def application do
    [ applications: [ :httpoison, :exjsx ] ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:credo, "~> 0.4.7"},
      {:httpoison, "~> 0.9.0"},
      {:exjsx, "~> 3.2"},
      {:exsync, "~> 0.1.2", only: :dev}
    ]
  end
end
