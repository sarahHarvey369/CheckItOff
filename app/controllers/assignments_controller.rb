class AssignmentsController < ApplicationController
    def index
        @assignments = current_user.assignments.all
    end

    def show
        @assignment = current_user.assignments.find(params[:id])
    end

    def new
        @assignment = current_user.assignments.new
    end

    def edit
        @assignment = current_user.assignments.find(params[:id])
    end

    def create
        @assignment = current_user.assignments.new(assignment_params)

        if @assignment.save
            redirect_to '/users/:user_id/assignments'
        else
            render 'new'
        end
    end

    def update
        @assignment = current_user.assignments.find(params[:id])

        if @assignment.update(assignment_params)
            redirect_to '/users/:user_id/assignments'
        else
            render 'edit'
        end
    end

    def destroy
        @assignment = current_user.assignments.find(params[:id])
        @assignment.destroy

        redirect_to '/users/:user_id/assignments'
    end

    def assignment_params
        params.require(:assignment).permit(:title, :discription, :deadline)
    end
end
