
package app.controller.socio.solicitud;


import app.model.Persona;
import app.model.SolicitudAlquiler;
import app.zelper.GenericCrud;
import java.util.List;

public interface SolicitudServiceSocio extends GenericCrud<SolicitudAlquiler>{
    
    List<SolicitudAlquiler> listByPersona(Persona persona);
}
