package persistencia;

import java.util.List;
import logica.Producto;

public class ControladoraPersistencia {

    ProductoJpaController prJpa = new ProductoJpaController();

    public void crearProducto(Producto pr) {
        prJpa.create(pr);
    }

    public List<Producto> traerProductos() {
        return prJpa.findProductoEntities();
    }

}
