defmodule Pralert.Router do
  use Pralert.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
    scope "/", Pralert do
      get "/test", AlertController, :test
      post "/alert", AlertController, :index
    end
  end

  scope "/", Pralert do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Pralert do
  #   pipe_through :api
  # end
end
