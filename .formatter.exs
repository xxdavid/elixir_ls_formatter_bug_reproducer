apps_with_common_rules =
  "{#{"apps/*" |> Path.wildcard() |> Enum.map(&Path.basename/1) |> List.delete("app_three") |> Enum.join(",")}}"

[
  inputs: [
    ".formatter.exs",
    "mix*.exs",
    "{config,rel}/**/*.exs",
    "apps/#{apps_with_common_rules}/mix*.exs",
    "apps/#{apps_with_common_rules}/lib/**/*.ex",
    "apps/#{apps_with_common_rules}/{config,test}/**/*.exs"
  ],
  subdirectories: ["apps/app_three"]
]
