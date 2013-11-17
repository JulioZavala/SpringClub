
package app.controller.security;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AuthController {
    
    @RequestMapping("login")
    public String login(HttpSession seccion){
    
        Persona persona = (Persona)
        
        
        
        
    return "security/login";
    }
    
}
