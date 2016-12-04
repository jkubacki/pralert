defmodule Pralert.AlertController do
  use Pralert.Web, :controller

  def index(conn, params) do
    action = params["action"]
    url = params["pull_request"]["url"]
    {:ok, body} = Pralert.Smser.send_pr_alert(System.get_env("alertnumber"), action, url)
    render(conn, "index.json", body: body)
  end
end
