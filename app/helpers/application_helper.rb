module ApplicationHelper

  def flash_messages
    return if flash.empty?
    alert_classes = { error: "error", notice: "success", alert: "error" }

    flash.collect do |name, msg|
      content_tag :div, { class: "alert alert-#{alert_classes[name]}"} do
        content_tag(:button, "\u00D7", type: "button", class: "close", "data-dismiss" => "alert") +
          msg
      end
    end.join("\n").html_safe
  end
end
