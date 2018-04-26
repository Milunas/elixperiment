defmodule ApiFirst.Router do
  use ApiFirst.Web, :router

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

    scope "/api/v1", ApiFirst do
    pipe_through :api
    get "/users", UserController, :index
end

  # Other scopes may use custom stacks.
  # scope "/api", ApiFirst do
  #   pipe_through :api
  # end
end

