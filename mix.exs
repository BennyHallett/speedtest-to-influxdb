defmodule SpeedReporter.Mixfile do
  use Mix.Project

  def project do
    [app: :speed_reporter,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :fluxter]]
  end

  defp deps do
    [{:fluxter, "~> 0.5"}]
  end
end
