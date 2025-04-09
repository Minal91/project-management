# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel "Recent Projects" do
          ul do
            Project.recent(5).map do |project|
              li link_to(project.name, admin_project_path(project))
              li project.description
              li project.status
              li project.created_at
              li project.updated_at
            end
          end
        end
      end

      column do
        panel "Recent Messages" do
          ul do
            Message.recent(5).map do |message|
              li link_to(message.title, admin_message_path(message))
              li message.description
              li message.status
              li message.created_at
              li message.updated_at
            end
          end
        end
      end
    end
  end # content
end
