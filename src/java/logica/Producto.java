
package logica;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Producto implements Serializable {
    
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
   private int id;
    
  @Basic
    private  String nombre;
    private  String tipo;
    private  int precioCompra;
    private  int precioVenta;
    int cantStock;

    public Producto() {
    }

    public Producto(int id, String nombre, String tipo, int cantStock, int precioCompra, int precioVenta) {
        this.id = id;
        this.nombre = nombre;
        this.tipo = tipo;
        this.cantStock = cantStock;
        this.precioCompra = precioCompra;
        this.precioVenta = precioVenta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getCantStock() {
        return cantStock;
    }

    public void setCantStock(int cantStock) {
        this.cantStock = cantStock;
    }

    public int getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(int precioCompra) {
        this.precioCompra = precioCompra;
    }

    public int getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(int precioVenta) {
        this.precioVenta = precioVenta;
    }
    
    
    
}
