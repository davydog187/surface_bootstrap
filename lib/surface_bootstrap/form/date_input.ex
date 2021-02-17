defmodule SurfaceBootstrap.Form.DateInput do
  @moduledoc """
  The date input element as defined here:
  - https://hexdocs.pm/phoenix_html/Phoenix.HTML.Form.html#date_input/3
  - https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/date
  """

  use Surface.Component
  use SurfaceBootstrap.Form.InputBase
  use SurfaceBootstrap.Form.InputAddonBase

  alias Surface.Components.Form.{Field, DateInput, Label}

  @doc "Largest date allowed, as enforced by client browser. Not validated by Elixir."
  prop max, :integer

  @doc "Earliest date allowed, as enforced by client browser. Not validated by Elixir."
  prop min, :integer

  def render(assigns) do
    ~H"""
    <Field
      class={{
        "field",
        "has-addons": slot_assigned?(:left_addon) || slot_assigned?(:right_addon),
        "is-expanded": @expanded
      }}
      name={{ @field }}
    >
      <Label
        :if={{ !(slot_assigned?(:left_addon) || slot_assigned?(:right_addon)) && @label }}
        class="label"
      >{{ @label }}</Label>
      <div :if={{ slot_assigned?(:left_addon) }} class="control">
        <slot name="left_addon" />
      </div>
      <div class={{
        "control",
        "is-expanded": @expanded
      }}>
        <DateInput
          class={{[
            "input",
            "is-danger": has_error?(assigns),
            "is-success": has_change?(assigns) && !has_error?(assigns),
            "is-static": @static
          ] ++ @class}}
          field={{ @field }}
          opts={{[
            disabled: @disabled,
            readonly: @readonly,
            max: @max,
            min: @min
          ] ++ @opts}}
        />
      </div>
      <div :if={{ slot_assigned?(:right_addon) }} class="control">
        <slot name="right_addon" />
      </div>
      <span :if={{ @help_text && !has_error?(assigns) }} class="help">{{ @help_text }}</span>
    </Field>
    """
  end
end
