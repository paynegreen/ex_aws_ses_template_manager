defmodule ExAwsSesTemplateManagerWeb.Router do
  use ExAwsSesTemplateManagerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {ExAwsSesTemplateManagerWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", ExAwsSesTemplateManagerWeb do
    pipe_through :browser

    live "/", TemplateLive.Index, :index
    live "/new", TemplateLive.Index, :new
    live "/:template_name", TemplateLive.Index, :edit
  end
end
