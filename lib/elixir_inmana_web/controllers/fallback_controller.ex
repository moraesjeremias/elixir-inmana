defmodule ElixirInmanaWeb.FallbackController do
  use ElixirInmanaWeb, :controller
  alias ElixirInmanaWeb.ErrorView

  def call(conn, {:error, %{result: result, status: status}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("validation_error.json", result: result)
  end
end
