/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejemplos;

/**
 *
 * @author scuev
 */
public class MensajeBean {
    
    private String mensaje = "Valor no establecido";

    public String getMensaje()
    {
        return (mensaje);
    }

    public void setMensaje(String mensaje)
    {
        this.mensaje = mensaje;
    }
    
}
