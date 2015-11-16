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
      
      def formatted_reference() # Método para mostrar la referencia bajo formato.
        "AUTORES: #{@author[0]}, #{@author[1]}, #{@author[2]} | TÍTULO: #{@title} | SERIE: #{@series} | EDITORIAL: #{@editorial} | NÚMERO DE EDICIÓN: #{@edition_number} | FECHA DE PUBLICACIÓN: #{@date} | ISBN: #{@isbn[0]}, #{@isbn[1]}"
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
  
    class Periodicals # Clase para representar publicaciones periódicas.
  
      attr_accessor :author, :title
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @author = author
      @title = title
      
      end
    end
    
    class Magazine_Articles < Periodicals # Clase para representar artículos de revistas
    
      attr_accessor :magazine
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(magazine) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @magazine = magazine
      
      end
    end
    
    class Newspaper_Articles < Periodicals # Clase para representar artículos de periódicos.
    
      attr_accessor :newspaper
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(newspaper) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @newspaper = newspaper
      
      end
    end
    
    class Electronic_Document < Periodicals # Clase para representar documentos electrónicos.
    
      attr_accessor :website
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(website) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @website = website
      
      end
    end
    
    
    
    
      