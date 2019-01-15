# Ueberauth Heroku Example

To start this example app:

  * Obtain Heroku OAuth credentials as listed in the [ueberauth_heroku README](https://github.com/maxbeizer/ueberauth_heroku#installation)
  * Create a `config/dev.secret.exs` and populate it like so:

```elixir
use Mix.Config

config :ueberauth, Ueberauth.Strategy.Heroku.OAuth,
  client_id: "My-Heroku-OAuth-Client-ID",
  client_secret: "My-Heroku-OAuth-Client-Secret"

```

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`
  * Now you can visit [`localhost:4000/auth/heroku`](http://localhost:4000/auth/heroku) from your browser.

## License

Please see [LICENSE](https://github.com/maxbeizer/ueberauth_heroku_example/blob/master/LICENSE) for licensing details.
