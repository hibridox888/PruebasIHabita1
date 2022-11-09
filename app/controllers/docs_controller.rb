class DocsController < ApplicationController
    before_action :authenticate_user!
    def show
        @docs = Doc.all
    end

    def new
        @doc = Doc.new

    end

    def create
        @doc = Doc.new(doc_params)
        @doc.save

        if @doc.save
            redirect_to docs_path
        else
            render :new

        end

    end

    private
    def doc_params
        params.require(:doc).permit(:empresa,:tipo,:rut,:numero)
    end



end
