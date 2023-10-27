module ApplicationHelper
    # Format a datetime in a user-friendly way
    def formatted_datetime(datetime)
      datetime.strftime('%B %d, %Y at %I:%M %p')
    end
  
    # Display flash messages with different styles
    def flash_message
      flash.each do |key, message|
        content_tag(:div, message, class: "alert alert-#{key}")
      end
    end
  
    # Generate a link for confirming an action
    def confirm_link(link_text, confirmation_message, url, options = {})
      link_to link_text, url, options.merge(data: { confirm: confirmation_message })
    end
  
    # Show an error message for a form field
    def form_field_error(object, field)
      if object.errors[field].any?
        content_tag(:p, object.errors[field].join(', '), class: 'field-error')
      end
    end
  end
  