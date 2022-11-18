class DocsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_mmy
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


    def vista
        @tipos = Tipo.all
        @empresasEmi = EmpresaEmisora.all
        @empresasGrup = EmpresaGrupo.all
        @info = InformacionDocumento.all
    end

    

    def vista2
        @empresasEmi = EmpresaEmisora.all
        @infos = InformacionDocumento.all
        @empresasGrup = EmpresaGrupo.all
        @tipos = Tipo.all
        
    end


    def cambioestado
        @info2 = InformacionDocumento.where(id: params[:id])
        if params[:decision] == "true"
            if params[:estado] == "visible"
                @info2.update(estado: "editable")
                redirect_to docs_cambioestado_path
            else
                @info2.update(estado: "visible")
                redirect_to docs_cambioestado_path
            end
        else
          render :vista2
        end

    end
    private
    def doc_params
        params.require(:doc).permit(:empresa,:tipo,:rut,:numero)
    end
    def find_mmy
        @empresaEmi = EmpresaEmisora.find_by(id: params[:empresaEmi].presence)
        @info = InformacionDocumento.find_by(id: params[:info].presence)
    end

end
