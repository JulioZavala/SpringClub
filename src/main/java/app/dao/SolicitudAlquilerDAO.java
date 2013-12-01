
package app.dao;

import app.model.Persona;
import app.model.SolicitudAlquiler;
import app.zelper.GenericCrud;
import java.util.List;


public interface SolicitudAlquilerDAO extends GenericCrud<SolicitudAlquiler>{
 
        List<SolicitudAlquiler> listByPersona(Persona persona);
}
