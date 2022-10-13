# Description

This repo was created with Phoenix's default starter template.
1. https://hexdocs.pm/phoenix/installation.html#phoenix (installing phx.new command/generator)
2. https://hexdocs.pm/phoenix/up_and_running.html (running it with a folder name to generate a template project)

Then, the oban packages were added to mix.exs.

A renovate.json was also added.

Notice in mix.exs, a custom repo is specified for oban_web and oban_pro. That repo is usually added beforehand with this command. Hex in Elixir supports using custom repos from sources that are not hex.pm.

https://hexdocs.pm/hex/Mix.Tasks.Hex.Repo.html

You can add a repo and reference it with that custom name in your mix.exs.

Note that the command line options are optional, but still important - the custom repo we use requires --fetch-public-key and --auth-key.

See here for the specific config we use: https://hexdocs.pm/oban/2.11.0/pro_installation.html#authentication


### Below is what the phx starter template automatically generates.

# RenovateHexExternalRepo

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
