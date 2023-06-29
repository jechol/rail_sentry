defmodule RailSentry do
  @behaviour Rail.ErrorReporter

  @impl true
  def report_error(error, stacktrace) do
    Sentry.capture_message(error, stacktrace: stacktrace)
    :ok
  end
end
