class ParamsController < ApplicationController

  def name_method
    input_name = params["name"]
    render json: {}

  end
end
