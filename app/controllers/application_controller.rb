class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_language

  private

  def set_language
    if params['locale'].present?
      lang = params['locale'].to_sym
      session['locale'] = lang
      redirect_to root_path
    elsif session['locale'].present?
      lang = session['locale']
    else
      lang = 'en'
    end

    I18n.locale = lang
  end
end
