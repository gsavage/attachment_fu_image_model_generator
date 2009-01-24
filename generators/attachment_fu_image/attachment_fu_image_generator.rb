class AttachmentFuImageGenerator < Rails::Generator::NamedBase

  def manifest
    record do |m|
      m.class_collisions class_name
      
      m.template "app/models/model_template.rb",
                 "app/models/#{file_name}_image.rb"
      m.template "app/models/model_service_template.rb",
                 "app/models/#{file_name}_image_service.rb"
      m.migration_template "db/migrations/migration_template.rb", "db/migrate", :migration_file_name => "create_#{file_name}_image"
    end
    
  end
  
  
end