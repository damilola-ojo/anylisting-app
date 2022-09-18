module ApplicationHelper
  def form_error_notification(obj)
    if obj.errors.any?
      tag.div class: "alert alert-danger" do
        obj.errors.full_messages.to_sentence.capitalize
      end
    end
  end
end
