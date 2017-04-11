module Hyrax
  module Admin
    class AppearancesController < ApplicationController
      before_action :require_permissions
      layout 'dashboard'

      def show
        add_breadcrumb t(:'hyrax.controls.home'), root_path
        add_breadcrumb t(:'hyrax.dashboard.breadcrumbs.admin'), hyrax.dashboard_path
        add_breadcrumb t(:'hyrax.admin.sidebar.configuration'), '#'
        add_breadcrumb t(:'hyrax.admin.sidebar.appearance'), request.path
        @form = form_class.new
      end

      def update
        form_class.new(update_params).update!
        redirect_to({ action: :show }, notice: t('.flash.success'))
      end

      private

        def update_params
          params.require(:admin_appearance).permit(:header_background_color,
                                                   :header_text_color,
                                                   :link_color,
                                                   :footer_link_color,
                                                   :primary_button_background_color)
        end

        def form_class
          Hyrax::Forms::Admin::Appearance
        end

        def require_permissions
          authorize! :update, :appearance
        end
    end
  end
end
