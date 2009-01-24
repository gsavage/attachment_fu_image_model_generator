class <%= class_name %>ImageService
  
  def initialize(<%= file_name %>, <%= file_name %>_image)
    @<%= file_name -%> = <%= file_name %>
    @<%= file_name -%>_image = <%= file_name %>_image
    
  end
    
  def save
    return false unless valid?

    begin
      <%= class_name -%>.transaction do

        if @<%= file_name %>_image && @<%= file_name %>_image.new_record?
          @<%= file_name %>.<%= file_name -%>_image.destroy if @<%= file_name -%>.<%= file_name %>_image
          @<%= file_name %>_image.<%= file_name -%> = @<%= file_name %>
          @<%= file_name %>_image.save!
        end

        @<%= file_name %>.save!
        true
      end
    rescue
      
      false
    end
  end
  
  def valid?
    @<%= file_name %>.valid? && 
      (@<%= file_name %>_image.nil? || @<%= file_name %>_image.valid?)
  end
  
end
