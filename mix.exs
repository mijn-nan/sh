defmodule Sh.Mixfile do
  use Mix.Project

  @version String.strip(File.read!("VERSION"))

  def project do
    [app: :sh,
     version: @version,
     elixir: "~> 1.0.0-rc1",
     description: "Run programs as functions in Elixir",
     deps: deps,
     package: package]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: []]
  end

  # Dependencies can be hex.pm packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end

  defp package do
    [files: ~w(lib mix.exs README.md UNLICENSE VERSION),
     contributors: ["Devin Torres"],
     licenses: ["Unlicense"],
     links: %{"GitHub" => "https://github.com/devinus/sh"}]
  end
end
