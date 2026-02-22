## ns2-luals-kit

Shared LuaLS/EmmyLua stubs for Natural Selection 2 and Shine mod development.

## Contents

- `lua_stubs/` – NS2 + Shine API stub files used by Lua Language Server.

## License

MIT (see `LICENSE`).

## Using in your mod repo

Add as submodule:

```bash
git submodule add <your-repo-url> external/ns2-luals-kit
git submodule update --init --recursive
```

Then reference it from your project `.luarc.json`:

```json
{
  "workspace.library": [
    "lua",
    "external/ns2-luals-kit/lua_stubs"
  ],
  "workspace.ignoreDir": [
    "external/ns2-luals-kit/lua_stubs"
  ]
}
```

In VS Code workspace settings (`.vscode/settings.json`), mirror the same library path:

```jsonc
"Lua.workspace.library": [
  "${workspaceFolder}/lua",
  "${workspaceFolder}/external/ns2-luals-kit/lua_stubs"
]
```
