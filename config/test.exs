import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ex_aws_ses_template_manager, ExAwsSesTemplateManagerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "B/J4vKjHI/KcZepFIYc8+NqdJd47+AfWFhPHXSk1CY/rtPZs32CQ9Ltpt2u7Shfy",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
