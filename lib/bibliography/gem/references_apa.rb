class References_APA # Clase para representar referencias bajo el formato APA.
         
    include Enumerable # Módulo que permite que implementemos enumeraciones convencionales en nuestra clase.
        
    def initialize() # Constructor de la clase
		@list = Double_List.new(nil,nil)
    end
		
	def to_s # Método para mostrar bajo formato.
		string = "" # Inicialiazición de una cadena de carácteres.
		@list.each do |reference|
			string << reference.to_s
			string << "\n"
		end
		return string
	end
		
	def insert_reference(reference) # Método para insertar una referencia.
		@list.inserta(reference)
	end
		
	def each # Sobrecarga del método each del mixin Enumerable.
		@list.each
	end
end