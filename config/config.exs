use Mix.Config

config :fluxter,
  host: System.get_env("INFLUX_HOST"),
  port: System.get_env("INFLUX_PORT")
