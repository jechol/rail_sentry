defmodule RailSentry.MixProject do
  use Mix.Project

  def project do
    [
      app: :rail_sentry,
      description: "Rail error reporter for Sentry",
      docs: docs(),
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      source_url: "https://github.com/jechol/rail_sentry"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :crypto]
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/jechol/rail_sentry"},
      maintainers: ["Jechol Lee (mr.jechol@gmail.com)"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:sentry, ">= 8.0.0"},
      {:rail, ">= 1.0.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp docs() do
    [
      main: "readme",
      name: "rail_sentry",
      canonical: "http://hexdocs.pm/rail_sentry",
      source_url: "https://github.com/jechol/rail_sentry",
      extras: [
        "README.md",
        "LICENSE"
      ]
    ]
  end
end
