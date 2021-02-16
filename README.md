# SurfaceBootstrap (WIP)

A set of simple [Surface](https://github.com/msaraiva/surface/) components
based on [Bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/).



## Components

  * 

More components will be added soon. Contributions are welcome!

## Example

```jsx
<Table data={{ album <- @albums }} rowClass={{ &rowClass/2 }} bordered>
  <Column label="Album">
    {{ album.name }}
  </Column>
  <Column label="Released">
    {{ album.released }}
  </Column>
  <Column label="Artist">
    <a href="#">{{ album.artist }}</a>
  </Column>
</Table>
```

## Usage

Add `surface_bootstrap` to the list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    ...
    {:surface_bootstrap, "~> 0.1.0"}
  ]
end
```

To use Bootstraps's CSS styles, choose one of the following methods:

### 1. Using CDN or downloading files

Add the following line to your `layout_view.ex`:

```
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.8.0/css/bulma.min.css" />
```

Or download the `.css` file and manually add it to your `priv/static/css` folder.
In this case, add the following line to your `layout_view.ex`:

```
<link rel="stylesheet" href={{ Routes.static_path(@conn, "/css/bulma.min.css") }} />
```

### 2. NPM or Yarn

Add `bulma` to the list of dependencies in `assets/package.json`:

```
"dependencies": {
  ...
  "bulma": "0.8.0"
}
```

## License

Copyright (c) 2020, Marlus Saraiva.

Surface source code is licensed under the [MIT License](LICENSE.md).