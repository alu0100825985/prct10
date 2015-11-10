    class List # Clase para el desarrollo de una lista.
    
      attr_accessor :head
    
      #-----> MÉTODOS ELEMENTALES DE LA CLASE.
    
      def initialize(head) # Constructor de la clase.
    
        # Declaración e inicialización de las variables de instancia.
        @head = head
      end
      
      def insert(item) # Métodos para insertar nodos al principio de la lista.
        item.next = @head # Establecemos como next del nodo insertado a head (INSERTA AL PRINCIPIO)
        @head = item # El head será ahora el elemento nodo insertado.
      end
  
      def empty? # Método para comprobar si la lista está vacía.
        @head == nil
      end
      
    end