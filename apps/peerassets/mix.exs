defmodule Mercator.PeerAssets.Mixfile do
  use Mix.Project

  def project do
    [app: :peerassets,
     version: "0.1.0",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :rpc, :exprotobuf],
     mod: {Mercator.PeerAssets, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # To depend on another app inside the umbrella:
  #
  #   {:myapp, in_umbrella: true}
  #
  # Type "mix help deps" for more examples and options
  @priv_dir "../../_build/#{Mix.env}/lib/peerassets/priv/"
  defp deps do
    [{:rpc, in_umbrella: true},
     {:exprotobuf, "~> 1.2.1"},
     {:exrm, "~> 1.0"}]
  end
end
