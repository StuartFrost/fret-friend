class ToolsController < ApplicationController
  def index
    @major_scales = ToolsHelper.primary_major_scales
    @minor_scales = ToolsHelper.primary_minor_scales
  end
end
