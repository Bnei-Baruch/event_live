ActiveAdmin.register Widget do
  form do |f|
    f.inputs "Widget Details" do
      f.input :content, :input_html => { :class => "ckeditor" }
    end
    f.buttons
  end

end
