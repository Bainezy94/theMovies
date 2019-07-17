module BreadcrumbsHelper
    def ensure_navigation
        @navigation ||= [ { :title => 'Home', :url => '/' } ]
    end

    def add_breadcrumb(title, url)
        ensure_navigation << { :title => title, :url => url }
    end

    def render_navigation
        render :partial => 'partials/breadcrumbs', :locals => { :nav => ensure_navigation }
    end
end