class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::ConnectionNotEstablished, with: :handle_database_error
  rescue_from ActiveRecord::StatementInvalid, with: :handle_database_error
  rescue_from PG::ConnectionBad, with: :handle_database_error

  private

  def handle_database_error(exception)
    logger.error "Database error: #{exception.message}"
    render "errors/database_error", status: :service_unavailable, layout: "application"
  end
end
