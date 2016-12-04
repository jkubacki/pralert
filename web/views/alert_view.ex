defmodule Pralert.AlertView do
  use Pralert.Web, :view

  def render("index.json", %{body: body}) do
    %{body: body}
  end
end
