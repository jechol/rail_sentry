defmodule RailSentry do
  def report_error(error, stacktrace) do
    Sentry.capture_message(error, stacktrace: stacktrace)
  end
end
