package vo;

import java.util.ArrayList;

public class TiendaVO {
    
 private String categoria;
 private String nombre;
 private String vendedor;
 private ArrayList<String> producto;
 private double puntuacion;
 private String idFondo;

    public TiendaVO() {
        
    }
    
    public String getIdFondo() {
        return idFondo;
    }

    public void setIdFondo(String idFondo) {
        this.idFondo = idFondo;
    }
    
    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getVendedor() {
        return vendedor;
    }

    public void setVendedor(String vendedor) {
        this.vendedor = vendedor;
    }

    public ArrayList<String> getProducto() {
        return producto;
    }

    public void setProducto(ArrayList<String> producto) {
        this.producto = producto;
    }


    public double getPuntuacion() {
        return puntuacion;
    }

    public void setPuntuacion(double puntuacion) {
        this.puntuacion = puntuacion;
    }

    
 
 
 
 
 
 
}
