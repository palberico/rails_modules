class PeopleController < ApplicationController
    def index #shows all the people
        @people = Person.all
    end

    def new #show form to create new person
        @people = Person.new
    end

    def create #adds new person to database
        @people = Person.new(people_params)
        
           if @people.save
             redirect_to people_path
           else
             render :new
           end
    end

    def show #view one person
        @person = Person.find(params[:id])
    end

    def edit #form to edit a person who is already created
        @person = Person.find(params[:id])
    end

    def update #changes someone who is already in database
        @person = Person.find(params[:id])
          
            if @person.update(people_params)
              redirect_to people_path
            else
              render :edit
            end
     end

    def destroy
        @person = Person.find(params[:id]).destroy
        redirect_to person_path
    end
      

    private
    
       def people_params
         params.require(:person).permit(:nam, :age, :hair_color, :eye_color, :gender, :alive)
       end
end
