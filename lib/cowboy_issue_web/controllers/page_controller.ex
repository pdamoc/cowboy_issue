defmodule CowboyIssueWeb.PageController do
  use CowboyIssueWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
