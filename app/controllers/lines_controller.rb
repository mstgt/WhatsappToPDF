class LinesController < ApplicationController
    def edit
        @line= Line.find(params[:id])
    end

    def update
        @line= Line.find(params[:id])
        @line.update(line_params)
        redirect_to @line.conversation
    end 

    private
    def line_params
        params.require(:line).permit(:content)
    end 

end