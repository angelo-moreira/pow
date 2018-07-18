defmodule Authex.Extension.Ecto.Context.Base do
  @moduledoc """
  Used for extensions to add helpers for user contexts.

  ## Usage

      defmodule MyAuthexExtension.Ecto.Context do
        use Authex.Extension.Ecto.Context.Base

        def my_custom_action(_config) do
          mod  = user_mod(config)
          repo = repo(config)

          # ...
        end
      end
  """
  alias Authex.Ecto.Context

  defmacro __using__(_opts) do
    quote do
      def user_schema_mod(config), do: Context.user_schema_mod(config)
      def repo(config), do: Context.repo(config)
    end
  end
end