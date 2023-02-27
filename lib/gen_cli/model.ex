# Generable elements
defmodule :Html do
  defstruct [
            :context,
            :schema,
            :web,
            "no-context": false,
            "no-schema": false,
            command: "html"
            ]
  use ExConstructor
end

defmodule :Schema do
  defstruct [
            :fields,
            "no-migration": false,
            command: "schema"
            ]
  use ExConstructor
end

defmodule :Notifier do
  defstruct [
            :context,
            :notifier_name,
            message_names: [],
            command: "notifier"
            ]
  use ExConstructor
end

defmodule :Secret do
  defstruct [
            :length,
            command: "secret"
            ]
  use ExConstructor
end

defmodule :Json do
  defstruct [
            :context,
            :schema,
            :web,
            "no-context": false,
            "no-schema": false,
            command: "json"
            ]
  use ExConstructor
end

defmodule :Embedded do
  defstruct [
            :schema,
            command: "embedded"
            ]
  use ExConstructor
end

defmodule :Release do
  defstruct [
            docker: [],
            "no-ecto": [],
            ecto: [],
            command: "release"
            ]
  use ExConstructor
end

defmodule :Socket do
  defstruct [
            :module_name,
            command: "socket"]
  use ExConstructor
end

defmodule :Live do
  defstruct [
            :context,
            :schema,
            :web,
            "no-context": false,
            "no-schema": false,
            command: "live"
            ]
  use ExConstructor
end

defmodule :Presence do
  defstruct [
            :module_name,
            command: "presence"
            ]
  use ExConstructor
end

defmodule :Context do
  defstruct [
            :name,
            :schema,
            "no-schema": false,
            "--merge-with-existing-context": false,
            "--no-merge-with-existing-context": false,
            command: "context"
            ]
  use ExConstructor
end

defmodule :Cert do
  defstruct [command: "cert"]  #TODO: i don't understand this one, ask someone
  use ExConstructor
end

defmodule :Channel do
  defstruct [
            :module_name,
            command: "channel"
            ]
  use ExConstructor
end

defmodule :Auth do
  defstruct [
            :context,
            :schema,
            :web,
            "hashing-lib": "bcrypt",
            command: "auth"
            ]
  use ExConstructor
end