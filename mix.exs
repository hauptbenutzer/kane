defmodule Kane.Mixfile do
  use Mix.Project

  def project do
    [app: :kane,
     version: "0.3.4",
     elixir: "~> 1.2",
     package: package(),
     description: description(),
     deps: deps()]
  end

  def application do
    [applications: [:logger, :goth]]
  end

  defp deps do
    [{:goth, "~> 0.4"},
    {:poison, "~> 3.1.0"},
    {:httpoison, "~> 0.11.2"},
    {:bypass, "~> 0.6", only: :test},
    {:mix_test_watch, "~> 0.4", only: :dev},
    {:ex_doc, "~> 0.16.1", only: [:dev]},
    {:earmark, "~> 1.2.2", only: [:dev]},
    {:uuid, "~> 1.1.7", only: :test}]
  end

  defp description do
    """
    A library for interacting with Google Cloud Pub/Sub (PubSub).
    Supports both publication and pull subscription
    """
  end

  defp package do
    [
      maintainers: ["Phil Burrows"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/peburrows/kane"}
    ]
  end
end
