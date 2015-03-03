class SetLanguageController < ApplicationController
  def english

  	I18n.locale = :en
    set_session_and_redirect
  end

  def turkish
  	I18n.locale = :tr
    set_session_and_redirect
  end

  private
  def set_session_and_redirect

    params[:locale] = I18n.locale
    previous_location = Rails.application.routes.recognize_path request.referer
    puts "helo " + request.env['HTTP_REFERER']
    puts previous_location
    redirect_to(:controller => previous_location[:controller], :action => previous_location[:action])

  end

end
