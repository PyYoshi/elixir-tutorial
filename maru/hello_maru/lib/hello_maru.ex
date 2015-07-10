defmodule HelloMaru do
end

defmodule HelloMaru.Router.Homepage do
  use Maru.Router

  get do
    %{ hello: :world }
  end
end

defmodule HelloMaru.API do
  use Maru.Router

  mount HelloMaru.Router.Homepage

  rescue_from :all do
    status 500
    "Server Error"
  end
end
