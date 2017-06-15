class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    return unless @person.save
    redirect_to people_path
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    return unless @person.update(person_params)
    redirect_to people_path
  end

  def destroy
    Person.find(params[:id]).delete
    redirect_to people_path
  end

  def person_params
    params[:person].permit(:first_name,:last_name)
  end

  def test
    @person = Person.new
  end
end
