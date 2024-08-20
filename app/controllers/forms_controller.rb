class FormsController < ApplicationController
  before_action :set_form, only: [:show, :update, :destroy]

  def index
    @forms = Form.all

    render 'forms/index'
  end

  def show
    render 'forms/show'
  end

  private

  def set_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:name)
  end
end
