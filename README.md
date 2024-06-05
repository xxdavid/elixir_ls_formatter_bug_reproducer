# ElixirLsFormatterBugReproducerUmbrella

Reproducer for https://github.com/elixir-lsp/elixir-ls/issues/1099

If I open for example `apps/app_one/lib/app_one.ex` and save the file twice quickly enough, the message

> File /some_path/elixir_ls_formatter_bug_reproducer_umbrella/apps/app_one/lib/app_one.ex not included in /some_path/elixir_ls_formatter_bug_reproducer_umbrella/.formatter.exs`

pops up.

If compilation is too quick on your machine, add something like `@fib_40 Fib.fib(40)` to the `AppOne` module.
