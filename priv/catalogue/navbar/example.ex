defmodule SurfaceBootstrap.Catalogue.NavBar.Example do
  use Surface.Catalogue.Example,
    subject: SurfaceBootstrap.NavBar,
    catalogue: SurfaceBootstrap.Catalogue,
    title: "Sample navbars",
    direction: "vertical",
    height: "400px"

  alias SurfaceBootstrap.{Container, NavBar}
  alias SurfaceBootstrap.NavBar.{Brand, Item}
  alias SurfaceBootstrap.DropDown

  # data changeset, :map,
  #   default:
  #     SampleModel.changeset(%SampleModel{}, %{})
  #     |> Map.put(:action, :insert)

  def render(assigns) do
    ~H"""
    <Container class="mb-5">
      <NavBar>
        <Item group="left">
          <a class="nav-link" href="#">
            Menu
          </a>
        </Item>
        <Item group="right">
          <span class="navbar-text">This is text</span>
        </Item>
      </NavBar>
    </Container>

    <Container class="mb-5">
      <NavBar>
        <Item group="left">
          <a class="nav-link" href="#">
            Menu
          </a>
        </Item>
        <Item group="left">
          <a class="nav-link" href="#">
            Menu 2
          </a>
        </Item>
      </NavBar>
    </Container>

    <Container class="mb-5">
      <NavBar bg_color="primary">
        <Item group="middle">
          <a class="nav-link active" href="#">
            Menu in middle
          </a>
        </Item>
      </NavBar>
    </Container>

    <Container class="mb-5">
      <NavBar color_type="dark" bg_color="info">
        <Item group="left">
          <a class="nav-link" href="#">
            Menu
          </a>
        </Item>
        <Item group="left">
          <a class="nav-link" href="#">
            Menu 2
          </a>
        </Item>
        <Item group="right">
          <a class="nav-link active" href="#">
            Menu right
          </a>
        </Item>
      </NavBar>
    </Container>

    <Container class="mb-5">
      <NavBar>
        <Item group="left">
          <a class="nav-link" href="#">
            Menu
          </a>
        </Item>
        <Item group="right">
        <DropDown wrapper="nav_item" label="dropdown" button={{false}}>
        <DropDown.Item>
        <Link class="dropdown-item" to: "#">A link</Link>
        </DropDown.Item>
        </DropDown>
        </Item>
      </NavBar>
    </Container>
    """
  end
end
