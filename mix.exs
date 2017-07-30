defmodule Kups.Mixfile do
  use Mix.Project

  def project do
    [app: :kups,
    description: "A library for generating fake data in context of Filipinos.",
    package: package,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),

    #  Docs
     name: "Kups",
     source_url: "https://github.com/vinceurag/kups"
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, "~> 0.14", only: :dev, runtime: false}]
  end

  defp package do
    [
      contributors: ["Vince Urag"],
      licenses: ["MIT"],
      links: %{github: "https://github.com/vinceurag/kups"},
      files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"]
    ]
  end
end
