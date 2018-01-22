ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
     columns do
       column do
         panel "First Inscriptions" do
           ul do
             Inscription.order("name").limit(5).map do |inscription|
               li link_to(inscription.name, admin_inscription_path(inscription))
             end
           end
         end
       end
       end

     columns do
       column do
         panel "First Individuals" do
           ul do
             Individual.order("name").limit(5).map do |individual|
               li link_to(individual.name, admin_individual_path(individual))
             end
           end
         end
       end
       end
       
       
     columns do
       column do
         panel "First Sites" do
           ul do
             Site.order("name").limit(5).map do |site|
               li link_to(site.name, admin_site_path(site))
             end
           end
         end
       end
       end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
