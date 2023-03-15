# LearnPhoenix

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Notes

### lib/project_name
* Business logic and business domain
* Inside `lib/learn_phoenix` lives all the "Model" files in MVC architecture
* They interact directly with the DB

### lib/project_name_web
* Responsible for exposing business domain to the world, through a web app
* It holds View and Controllers

### Controllers actions
* Actions in controllers has a `conn` argument
* `conn` is a struct which holds data about request

### Assigns
https://hexdocs.pm/phoenix/request_lifecycle.html#another-new-template
> The values we passed to the view from the controller are collectively called our "assigns". We could access our messenger value via assigns.messenger but through some metaprogramming, Phoenix gives us the much cleaner @ syntax for use in templates.
