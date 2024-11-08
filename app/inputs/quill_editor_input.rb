# app/inputs/quill_editor_input.rb
class QuillEditorInput < Formtastic::Inputs::TextInput
    def to_html
      input_wrapping do
        label_html <<
        builder.text_area(method, input_html_options.merge(class: "quill-editor"))
      end
    end
  end
  