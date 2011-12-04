ActiveAdmin.register Widget do
  index do
    column :id
    column :title
    column :content
    column :updated_at
    column "Actions" do |widget|
      link_to("View", admin_widget_path(widget)) +
      "&nbsp;&nbsp;&nbsp;".html_safe +
      link_to("Edit", edit_admin_widget_path(widget))
    end
  end


  form do |f|
    f.inputs "Widget Details" do
      f.input :title
      f.input :content, :input_html => { :class => "ckeditor" }
    end
    f.buttons
  end

end
