class Embed < ActiveRecord::Base
  def script_url
    host_and_domain = case self.environment
    when 'production'
      'https://podio.com'
    when 'staging'
      'https://nextpodio.dk'
    when 'development'
      'http://podio.dev'
    end

    "#{host_and_domain}/webforms_new/#{self.app_id}/#{self.webform_id}.js"
  end
end
