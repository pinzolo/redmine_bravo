# coding: utf-8
class BravosController < ApplicationController
  unloadable

  before_filter :load_from_params

  def users
    @users = Bravo.users(target_id: @target_id, target_type: @target_type)
  end

  def create
    @success = if @target_id.present?
                 @bravo = Bravo.new(target_id: @target_id, target_type: @target_type, user_id: User.current.id)
                 @bravo.save
               else
                 false
               end
  end

  private
  def load_from_params
    @target_id = params[:target_id]
    @target_type = params[:target_type] || "journal"
  end
end
