# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
#
#     config :rpc, key: :value
#
# And access this configuration in your application as:
#
#     Application.get_env(:rpc, :key)
#
# Or configure a 3rd-party app:
#
#     config :logger, level: :info
#

# Configures the RPC connection
config :rpc,
  rpc_lib: Gold,
  chain_type: :pos,
  network: "peercoin-testnet",
  hostname: "localhost",
  port: 8444,
  user: "testnet",
  password: "testnet"

# ppcoin: 1PPC = 1e6 * satoshi
config :gold, :satoshi_exponent, 6

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
