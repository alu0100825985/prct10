    class References # Clase para el desarrollo de referencias.
    
      attr_accessor :author, :title, :editorial, :date, :number_pages
      include Comparable # Módulo que permite que implementemos comparaciones convencionales en nuestra clase.
    
      #-----> MÉTODOS DE LA CLASE.
    
      def initialize(author, title, editorial, date, number_pages) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @author = author
      @title = title
      @editorial = editorial
      @date = date
      @number_pages = number_pages
      
      end
      
      def <=>(other) # Método para incluir el mixin comparable. Se usa el número de páginas para realizar la comparación.
        if other.is_a? References
          @number_pages <=> other.number_pages
        else
          false
        end
      end
      
      #-----> MÉTODOS GETTERS DE LA CLASE.
      
      def get_author() # Método para la devolución de author.
        return @author
      end
      
      def get_title() # Método para la devolución de title.
        return @title
      end
      
      def get_editorial() # Método para la devolución de editorial.
        return @editorial
      end
      
      def get_date() # Método para la devolución de date.
        return @date
      end
    end
    
    class Books < References # Clase para el desarrollo de referencias bibliográficas. Herencia de References.
    
      attr_accessor :series, :edition_number, :isbn
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(series, edition_number, isbn) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @series = series
      @edition_number = edition_number
      @isbn = isbn
      
      end
    end
    
    class Magazine_Articles < References # Clase para representar artículos de revistas
    
      attr_accessor :magazine, :issn
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(magazine, issn) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @magazine = magazine
      @issn = issn
      
      end
    end
    
    class Newspaper_Articles < References # Clase para representar artículos de periódicos.
    
      attr_accessor :newspaper, :print
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(newspaper, print) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @newspaper = newspaper
      @print = print
      
      end
    end
    
    class Electronic_Document < References # Clase para representar documentos electrónicos.
    
      attr_accessor :url
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(url) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @url = url
      
      end
    end
    
    
    
    
      