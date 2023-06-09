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

## Pipelines
* Pipelines allow a set of plugs to be applied to different sets of routes.

## Verified Routes
* `~p` This sigil returns an error if the Route doesn't match

## Ecto
`mix phx.gen.schema User users name:string email:string`

```
  iex -S mix

  alias LearnPhoenix.User
  changeset = User.changeset(%User{}, %{})
  alias LearnPhoenix.{Repo, User}
  Repo.insert(%User{email: "user1@example.com"})
  Repo.all(User)
  import Ecto.Query
  Repo.all(from u in User, select: u.email)
  Repo.one(from u in User, where: ilike(u.email, "%1%"), select: count(u.id))
```

