package app.controller.socio.solicitud;

import app.model.Evento;
import app.model.Persona;
import app.model.SolicitudAlquiler;
import app.zelper.Constantes;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("socio/solicitud")
public class SolicitudControllerSocio {

    @Autowired
    SolicitudServiceSocio service;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model, HttpSession session) {
        Persona persona = (Persona) session.getAttribute(Constantes.SESSION_USUARIO);

        
        model.addAttribute("persona", persona);


        return "socio/solicitud/solicitud";
    }

    
    @ResponseBody
    @RequestMapping("eventos")
    public String eventos(@RequestParam long id) {
        Persona persona = new Persona(id);
        List<SolicitudAlquiler> solicitudes = service.listByPersona(persona);
        List<Evento> eventos = new ArrayList<Evento>();

        for (SolicitudAlquiler solicitudAlquiler : solicitudes) {
            eventos.add(solicitudAlquiler.getEvento());
        }

        String json = new String();
        Gson gson = new Gson();
        json = gson.toJson(eventos);
        System.out.println(json);
        return json;
    }
    
    
    
    @RequestMapping("new")
    public String nuevo(Model model) {

        model.addAttribute("solicitud", new SolicitudAlquiler());

        return "socio/solicitud/solicitudForm";
    }

    @RequestMapping("update/{id}")
    public String update(@PathVariable long id, Model model) {
        SolicitudAlquiler solicitud = service.get(new SolicitudAlquiler(id));

        if (solicitud == null) {
            return "redirect:/socio/solicitud";
        }

        model.addAttribute("solicitud", solicitud);

        return "socio/solicitud/solicitudForm";
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(@ModelAttribute SolicitudAlquiler solicitud) {
        if (solicitud.getId() == null) {
            service.save(solicitud);
        } else {
            service.update(solicitud);
        }

        return "redirect:/socio/solicitud";
    }

    @RequestMapping("delete/{id}")
    public String delete(@PathVariable long id) {

        service.delete(new SolicitudAlquiler(id));

        return "redirect:/socio/solicitud";
    }
}
