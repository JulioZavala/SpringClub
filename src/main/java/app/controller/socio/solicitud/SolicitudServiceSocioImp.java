
package app.controller.socio.solicitud;


import app.dao.SolicitudAlquilerDAO;
import app.model.Persona;
import app.model.SolicitudAlquiler;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SolicitudServiceSocioImp implements SolicitudServiceSocio{
    
    @Autowired
    SolicitudAlquilerDAO solicitudAlquilerDAO;
    
    @Override
    public List<SolicitudAlquiler> list() {
        return solicitudAlquilerDAO.list();
    }

    @Override
    public List<SolicitudAlquiler> listByPersona(Persona persona) {
        return solicitudAlquilerDAO.listByPersona(persona);
    }

    
    
    @Override
    public SolicitudAlquiler get(SolicitudAlquiler t) {
        return solicitudAlquilerDAO.get(t);
    }

    @Override
    public void save(SolicitudAlquiler t) {
        solicitudAlquilerDAO.save(t);
    }

    @Override
    public void update(SolicitudAlquiler t) {
        solicitudAlquilerDAO.update(t);
    }

    @Override
    public void delete(SolicitudAlquiler t) {
        solicitudAlquilerDAO.delete(t);
    }
    
    
    
}
