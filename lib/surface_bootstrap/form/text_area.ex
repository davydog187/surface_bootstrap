defmodule SurfaceBootstrap.Form.TextArea do
  @moduledoc """
  The text area component as defined here: https://bulma.io/documentation/form/textarea/
  """

  use Surface.Component
  import SurfaceBootstrap.Form, only: [field_has_error?: 2, field_has_change?: 2]

  alias Surface.Components.Form.{Field, TextArea, ErrorTag, Label}

  @doc "The the field on the changeset"
  prop field, :atom, required: true

  @doc "The string label of the field"
  prop label, :string, required: true

  @doc "Disable embedded font awesome icons"
  prop disable_icons, :boolean, default: false

  @doc "Class to apply to input"
  prop class, :css_class, default: []

  @doc "Placeholder value"
  prop placeholder, :string, default: nil

  @doc "Size of textarea in css sense"
  prop size, :string, values: ["small", "normal", "medium", "large"], default: "normal"

  @doc "How many rows should textarea be, defaults to 10"
  prop rows, :integer

  def render(assigns) do
    %{__context__: %{{Surface.Components.Form, :form} => form}} = assigns

    has_error = field_has_error?(form, assigns.field)
    has_change = field_has_change?(form, assigns.field)

    ~H"""
    <Field class="field" name={{ @field }}>
      <Label class="label">{{ @label }}</Label>
      <div class={{ "control", "has-icons-right": !@disable_icons && (has_error || has_change) }}>
        <TextArea
          class={{[
            "textarea",
            "is-#{@size}",
            "is-danger": has_error,
            "is-success": has_change && !has_error
          ] ++ @class}}
          field={{ @field }}
          opts={{
            placeholder: @placeholder,
            rows: @rows
          }}
        />
        <ErrorTag class="help is-danger" field={{ @field }} />
      </div>
    </Field>
    """
  end
end
