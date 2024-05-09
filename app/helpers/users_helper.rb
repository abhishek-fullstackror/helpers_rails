module UsersHelper
    def display_users(users)
        content_tag(:table, class: "table table-striped") do
          concat(content_tag(:thead, table_header))
          concat(content_tag(:tbody, users_rows(users)))
        end
    end

    private
    def table_header
        content_tag(:tr) do
          concat(content_tag(:th, 'Id'))
          concat(content_tag(:th, 'Name'))
          concat(content_tag(:th, 'Title'))
          concat(content_tag(:th, 'Email'))
          concat(content_tag(:th, 'Status'))
        end
      end

      def users_rows(users)
        users.map do |user|
          content_tag(:tr) do
            concat(content_tag(:td, user.id))
            concat(content_tag(:td, user&.name))
            concat(content_tag(:td, user&.title))
            concat(content_tag(:td, user&.email))
            concat(content_tag(:td, user&.status))
          end
        end.join.html_safe
      end
end

