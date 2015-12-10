    class References # Clase para el desarrollo de referencias
    
      attr_accessor :author, :title, :editorial, :publication
      include Comparable # Módulo que permite que implementemos comparaciones convencionales en nuestra clase.
    
      #-----> MÉTODOS DE LA CLASE.
    
      def initialize(author, title, editorial, publication) # Constructor de la clase.
    
        # Declaración e inicialización de las variables de instancia.
        @author = author_format(author) # Obtenemos el nombre del author bajo formato.
        @title = title
        @editorial = editorial
        @publication = publication
      end
      
      def author_format(author) # Método para obtener el autor bajo el formato Autor, A. A.
        author_formated = "" # Inicializacion de una cadena de carácteres que almacenará el autor formateado.
          author.each do |word| # Para cada palabra que forma el nombre del autor.
  				  separate = word.split(/\W+/) # Usamos el método split para separar las palabras en función de una letra mayúscula.
  				  author_formated += separate[1] # Añadimos el primer apellido completo.
  				  author_formated += ", " # Añadimos una coma a continuación.
  				  
  				  unless separate[2].nil? # CONDICIÓN: Si el segundo apellido existe.
  				    author_formated += separate[2][0] # Añadimos su inicial.
   					  author_formated += ". " # Añadimos un punto a continuación.
   				  end
   				  
  				  author_formated += separate[0][0] # Añadimos la inicial del nombre.
  				  author_formated += "." # Añadimos un punto a continuación.
				  
  				  unless word == author.last # CONDICIÓN: Si la palabra actual no coincide con la última del nombre (existe otro autor).
  				    author_formated += " & " # Añadimos un ampersand a continuación.
  				  end
  				end
				
				return author_formated # Retornamos el autor bajo formato.
		  end
		  
		  def title_format(title) # Método para obtener el título bajo el formato APA.
		    title_formated = title.split(' ') # Usamos el método split para separar las palabras en función de un espacio.
			  title_formated.each do |word| # Para cada palabra que forma el título.
				  if word.length > 3 # CONDICIÓN: Si la palabra tiene más de tres letras.
				  	word.capitalize! # Ponemos su primera letra en mayúscula.
				  else
					  word.downcase! # Ponemos todas las letras en minúsculas.
				  end
				
				  if word == title_formated[0] # CONDICIÓN: Siempre la primera palabra irá con la primera letra en mayúscula.
					  word.capitalize!
				  end
			  end
			  
			  return title_formated.join(' ') # Retornamos el título aplicando un espacio entre palabra.
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
      @volume = volume
      
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
    
    
    
    
      