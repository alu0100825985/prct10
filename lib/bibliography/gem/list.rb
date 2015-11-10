    class List # Clase para el desarrollo de una lista.
    
      attr_accessor :head
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(head) # Constructor de la clase.
    
        # Declaración e inicialización de las variables de instancia.
        @head = head
      end
      
      def insert(item) # Método para insertar un nodo al principio de la lista.
        item.next = @head # Establecemos como next del nodo insertado a head (INSERTA AL PRINCIPIO)
        @head = item # El head será ahora el elemento nodo insertado.
      end
      
      def extract # Método para extraer un nodo del principio de la lista.
        node_extract = @head # Variable auxiliar para conservar el primer nodo de la lista.
        @head = @head.next # Establecemos con head al siguiente nodo.
        return node_extract # Extraemos el head anterior, almacenado en la variable auxiliar.
      end
  
      def empty? # Método para comprobar si la lista está vacía.
        @head == nil
      end
      
    end