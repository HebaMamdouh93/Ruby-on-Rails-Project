module CoursesHelper
    def users_for_select
        User.all.collect { |m| [m.name, m.id] }
      end
end
