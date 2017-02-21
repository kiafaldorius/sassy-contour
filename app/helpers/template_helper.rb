module TemplateHelper
  def template_from_path(subdir, path, file_ext = nil)
    template_file = File.join(Sinatra::Application.root, 'views', subdir, "#{path}#{file_ext}")
    puts template_file.inspect
    # The path is valid if it's not empty, and the template file exists.
    # This check is a security measure to make sure the template is something
    # that we want to render.
    if !path.empty? and File.exist? template_file
      "#{subdir}/#{path}".to_sym
    end
  end
end
