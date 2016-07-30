class SettingsController < ApplicationController
	before_action :get_setting

  def index
    @settings = Setting.get_all
  end

	def edit
	end

	def update
		if @setting.value != params[:setting][:value]
			@setting.value = params[:setting][:value]
			@setting.save
			redirect_to root_path, notice: 'Setting has updated.'
		else
			redirect_to root_path
		end
	end

  private
	def get_setting
		@setting = Setting.find_by(var: params[:id]) || Setting.new(var: params[:id])
	end
end
