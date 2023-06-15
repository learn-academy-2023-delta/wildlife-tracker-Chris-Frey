# README

# Steps
## Setting up Rails Generate Resource (after creating database)
rails generate resource Animal common_name:string scientific_name:string 

## Rails DB Migrate
rails db:migrate

## Routes(not necessary, just shows the formatting of the route files)
rails routes

## Add some entries in the rails console 
ModelName item1: value, item2: value

## Disable Authenticity Token in app/controllers/application_controller.rb
skip_before_action :verify_authenticity_token

## Add index method to controller file:
 def index
    animals = Animal.all 
    render json: animals
  end

## Add http://127.0.0.1:3000/animals to postman
using a get request, send request

## Add show method to controller file:
  def show
    animals = Animal.find(params[:id])
    render json: animals
  end

## Add /1 to the previous postman request
http://127.0.0.1:3000/animals/1
this gives you the return of the first item in your list

## Add create method and private method to define what is allowed to be altered by the user
  def create
    animal = Animal.create(animal_params)
    if animal.valid?
      render json: animal
    else
      render json: animal.errors
    end
  end

    private
  def animal_params
    params.require(:animal).permit(:common_name, :scientific_name)
  end

  ## Send test request through postman:
  - set type to POST
  - select Body section
  - sselect RAW bubble
  - select JSON from dropdown
  - input object sample in text area
  {
    "common_name": "rabbit",
    "scientific_name": "hatia pullus"
}

## Create destroy method (almost the same as create)
  def destroy
    animal = Animal.find(params[:id])
    if animal.destroy
      render json: animal
    else
      render json: animal.errors
    end
  end
    try this out in postman with DELETE and updating one of the entries (don't forget to call a single id in the address bar)

  ## Create Update method (almost same as create)
  def update
    animal = Animal.find(params[:id])
    animal.update(animal_params)
    if animal.valid?
      render json: animal
    else
      render json: animal.errors
    end
  end
  try this out in postman with PATCH and updating one of the entries (don't forget to call a single id in the address bar)

  <!-- done with the above means the database is set up correctly -->

  # Associating another model
  update the model files with `has_many :name` and `belongs_to :name`
  app/models/animal.rb

  ## create entries for the new model(with foreign key!)
 