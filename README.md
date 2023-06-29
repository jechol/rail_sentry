# RailSentry

Rail error reporter for Sentry

## Installation

```elixir
def deps do
  [
    {:rail_sentry, "~> 0.1.0"}
  ]
end
```

Config globally

```elixir
config :rail, :error_reporter, RailSentry
```

or only for current process.

```elixir
Process.put(:rail_error_reporter, RailSentry)
```
