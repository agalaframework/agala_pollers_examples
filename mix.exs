defmodule Ape.MixProject do
  use Mix.Project

  def project do
    [
      app: :ape,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Ape, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:agala_telegram, "~> 3.0"},
      {:agala_vk, path: "~> 3.0"}
    ]
  end
end
