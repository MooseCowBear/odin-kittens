class ErrorsController < ApplicationController
  def not_found
    render status:404
  end

  def internal_server_error
    render status: 500
  end

  def unprocessable_content
    render states: 422
  end
end
