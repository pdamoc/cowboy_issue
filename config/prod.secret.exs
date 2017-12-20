use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :cowboy_issue, CowboyIssueWeb.Endpoint,
  secret_key_base: "p8+6m635OSiekB0Dn5tXlgyLYTDbn1kAFxmEfiQy77HhNfZjhw2aCyBi0PVq0jJ9"

# Configure your database
config :cowboy_issue, CowboyIssue.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "cowboy_issue_prod",
  pool_size: 15
