defmodule ExAircall.Mixfile do
  use Mix.Project

  def project do
    [app: :ex_aircall,
     version: "0.3.3",
     elixir: "~> 1.3",
     docs: docs(),
     description: description(),
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:httpoison]]
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
      {:ex_doc, "~> 0.11", only: :dev},
      {:httpoison, "~> 0.9.0"},
      {:poison, "~> 3.0"}
    ]
  end

  defp docs do
    [
      extras: docs_extras(),
      main: "readme"
    ]
  end

  defp docs_extras do
    ["README.md"]
  end

  defp description do
    """
    An @aircall API interface for Elixir
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["Erik Nilsen"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/HiOperator/ex_aircall",
        "Docs" => "https://hexdocs.pm/ex_aircall"
      }
    ]
  end
end
