    class References # Clase para el desarrollo de referencias
    
      attr_accessor :author, :title, :editorial, :publication
      include Comparable # Módulo que permite que implementemos comparaciones convencionales en nuestra clase.
    
      #-----> MÉTODOS DE LA CLASE.
    
      def initialize(author, title, editorial, publication) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      @author = author
      @title = title
      @editorial = editorial
      @publication = publication
      
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

    end
    
    class Books < References # Clase para el desarrollo de referencias bibliográficas. Herencia de References.
    
      attr_accessor :edition, :volume
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, editorial, publication, edition, volume) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      super(author, title, editorial, publication) # Atributos de la clase padre.
      @edition = edition
      @volume = isbn
      
      end
    end
    
    class Articles < References # Clase para representar artículos de revistas
    
      attr_accessor :format
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, editorial, publication, format) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      super(author, title, editorial, publication) # Atributos de la clase padre.
      @format = format
      
      end
    end
    
    class Newspaper_Articles < Articles # Clase para representar artículos de periódicos.
    
      attr_accessor :number_pages
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, editorial, publication, format, number_pages) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      super(author, title, editorial, publication, format) # Atributos de la clase padre.
      @number_pages = number_pages
      
      end
    end
    
    class Electronic_Document < Articles # Clase para representar documentos electrónicos.
    
      attr_accessor :url, :access_date
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(author, title, editorial, publication, format, url, access_date) # Constructor de la clase.
    
      # Declaración e inicialización de las variables de instancia.
      super(author, title, editorial, publication, format) # Atributos de la clase padre.
      @url = url
      @access_date = access_date
      
      end
    end
    
    
    
    
      