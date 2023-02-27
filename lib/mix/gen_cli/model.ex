# Generable elements
defmodule :Html do
  defstruct [command: "html",
            "no-context": false,
            "no-schema": false,
            :context,
            :schema,
            :web]
  use ExConstructor
end

defmodule :Schema do
  defstruct [command: "schema",
            "no-migration": false,
            :fields]
  use ExConstructor
end

defmodule :Notifier do
  defstruct [command: "notifier",
            :context,
            :notifier_name,
            :message_names: []]
  use ExConstructor
end

defmodule :Secret do
  defstruct [command: "secret",
            :length]
  use ExConstructor
end

defmodule :Json do
  defstruct [command: "json",
            :context,
            :schema,
            :web,
            "no-context": false,
            "no-schema": false]
  use ExConstructor
end

defmodule :Embedded do
  defstruct [command: "embedded",
            :schema]
  use ExConstructor
end

defmodule :Release do
  defstruct [command: "release",
            docker: [],
            "no-ecto": [],
            ecto: [],
            ]
  use ExConstructor
end

defmodule :Socket do
  defstruct [command: "socket",
            :module_name]
  use ExConstructor
end

defmodule :Live do
  defstruct [command: "live",
            "no-context": false,
            "no-schema": false,
            :context,
            :schema,
            :web]
  use ExConstructor
end

defmodule :Presence do
  defstruct [command: "presence",
            :module_name]
  use ExConstructor
end

defmodule :Context do
  defstruct [command: "context",
            :name,
            :schema,
            "no-schema": false,
            "--merge-with-existing-context": false,
            "--no-merge-with-existing-context": false]
  use ExConstructor
end

defmodule :Cert do
  defstruct [command: "cert"]  #TODO: i don't understand this one, ask someone
  use ExConstructor
end

defmodule :Channel do
  defstruct [command: "channel",
            :module_name]
  use ExConstructor
end

defmodule :Auth do
  defstruct [command: "auth",
            :context,
            :schema,
            "hashing-lib": "bcrypt"
            :web]
  use ExConstructor
end
