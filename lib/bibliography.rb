    class Bibliography # Clase para el desarrollo de referencias bibliográficas.
    
      attr_accessor :author, :title, :series, :editorial, :edition_number, :date, :isbn
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, series, editorial, edition_number, date, isbn) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @author = author
      @title = title
      @series = series
      @editorial = editorial
      @edition_number = edition_number
      @date = date
      @isbn = isbn
      end
    end
