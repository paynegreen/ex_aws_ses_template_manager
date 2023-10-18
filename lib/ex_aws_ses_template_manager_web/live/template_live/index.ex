defmodule ExAwsSesTemplateManagerWeb.TemplateLive.Index do
  use ExAwsSesTemplateManagerWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, :templates, list_templates())}
  end

  @impl true
  def handle_params(params, _, socket) do
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :index, _params) do
    socket
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(form: to_form(%{}))
    |> assign(page_title: "New template")
  end

  defp apply_action(socket, :edit, _params) do
    socket
    |> assign(form: to_form(%{template_name: "MyTemplate"}))
    |> assign(page_title: "Edit template")
  end

  defp list_templates do
    [
      %{template_name: "My template", created_timestamp: "2020-11-01T00:00:00.000Z"},
      %{template_name: "My other template", created_timestamp: "2020-11-02T00:00:00.000Z"}
    ]
  end
end
