defmodule UeberauthHerokuExample.Router do
  use UeberauthHerokuExample.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UeberauthHerokuExample do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  scope "/auth", UeberauthHerokuExample do
    pipe_through :browser

    get "/:identity", AuthController, :request
    get "/:identity/callback", AuthController, :callback
    delete "/logout", AuthController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", UeberauthHerokuExample do
  #   pipe_through :api
  # end
end
