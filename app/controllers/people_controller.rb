class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :forms]

  def index
    @people = Person.all

    render json: @people
  end

  def show
    render json: @person
  end

  def forms
    @forms = @person.forms

    render 'forms/index'
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :email, :phone_number, :address, :picture_url)
  end
end
