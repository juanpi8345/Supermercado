
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    
    ControladoraPersistencia control = new ControladoraPersistencia();
    
    public void crearProducto(Producto pr){
        control.crearProducto(pr);
    }
    
    public List<Producto> traerProductos(){
        return control.traerProductos();
    }
    
}
