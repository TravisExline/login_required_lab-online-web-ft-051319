class SecretsController < ApplicationController
  def show
  end

  private

  def login_required
    return head(:forbidden) unless session.include? :name
  end
end