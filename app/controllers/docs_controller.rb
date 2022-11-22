=begin esta clase define los controladores que se utilizaran en las vistas de la carpeta docs, cada definicion sirve para definir parametros
que se utilizaran en cada una de las vistas 
=end

class DocsController < ApplicationController
    before_action :authenticate_user! # define la accion de autentificacion previa a cualquier entrada en pagina
    before_action :find_mmy
    def show # define los parametros que se usaran para la accion show que esta asociada a la vista show 
        @docs = Doc.all
    end

    def new # define los parametros que se usaran para la accion new que esta asociada a la vista new 
        @doc = Doc.new

    end

    def create # define los parametros para la ventana que crea nuevos elementos en la tabla Doc 
        @doc = Doc.new(doc_params) # define la instancia de crear una lista de elementos nuevos para la tabla Doc, con parametros definidos
        en la variable doc_params
        @doc.save  # guarda los parametros ingresados cuyos valores son ingresados en la variable doc_params 

        if @doc.save
            redirect_to docs_path # una vez guardados los datos, redirecciona a la ventana docs, la venta principal que despliega las opciones
            creadas en este sistema 
        else
            render :new # de no guardarse datos por alguna razon, como informacion incompleta, la pagina se mantiene en el mismo lugar 

        end

    end


    def vista # define los parametros para la ventana vista 
        @tipos = Tipo.all
        @empresasEmi = EmpresaEmisora.all
        @empresasGrup = EmpresaGrupo.all
        @info = InformacionDocumento.all
    end

    

    def vista2 # define los parametros para la ventana vista2 
        @empresasEmi = EmpresaEmisora.all
        @infos = InformacionDocumento.all
        @empresasGrup = EmpresaGrupo.all
        @tipos = Tipo.all
        
    end


        def cambioestado # genera un cambio instanciado en la ventana vista2, la variable estado se actualiza al apretar el boton correspondiente 
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
    # definiciones privadas para los metodos creados anteriormente. 
    private
    def doc_params
        params.require(:doc).permit(:empresa,:tipo,:rut,:numero)
    end
    def find_mmy
        @empresaEmi = EmpresaEmisora.find_by(id: params[:empresaEmi].presence)
        @info = InformacionDocumento.find_by(id: params[:info].presence)
    end

end
