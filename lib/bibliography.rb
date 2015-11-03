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
      
      #-----> MÉTODOS GETTERS DE LA CLASE.
      
      def get_author() # Método para la devolución de author.
        return @author
      end
      
      def get_title() # Método para la devolución de title.
        return @title
      end
      
      def get_series() # Método para la devolución de series.
        return @series
      end
      
      def get_editorial() # Método para la devolución de editorial.
        return @editorial
      end
      
      def get_edition_number() # Método para la devolución de edition_number.
        return @edition_number
      end
      
      def get_date() # Método para la devolución de date.
        return @date
      end
      
      def get_isbn() # Método para la devolución de isbn.
        return @isbn
      end
    end

      