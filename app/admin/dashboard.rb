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
          table do
            thead do
              tr do
                th "Name"
                th "Description"
                th "Status"
                th "Created At"
                th "Updated At"
              end
            end
            tbody do
              Project.recent(5).map do |project|
                tr do
                  td link_to(project.name, admin_project_path(project))
                  td project.description
                  td Project.statuses.key(project.status)
                    td project.created_at.strftime("%B %d, %Y %H:%M")
                    td project.updated_at.strftime("%B %d, %Y %H:%M")
                end
              end
            end
          end
        end
      end

      column do
        panel "Recent Messages" do
          table do
            thead do
              tr do
                th "Title"
                th "Description"
                th "Status"
                th "Created At"
                th "Updated At"
              end
            end
            tbody do
              Message.recent(5).map do |message|
                tr do
              td link_to(message.title, admin_message_path(message))
              td message.description
              td message.status
              td message.created_at
              td message.updated_at
                end
              end
            end
          end
        end
      end
    end
  end # content
end
