
package app.controller.test;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class TestController {
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("mensaje", "METODO INDEX");
        return "test";
    }
    
    @RequestMapping ("ejemplo")
    public String ejemplo(Model model) {
        model.addAttribute("mensaje", "METODO EJEMPLO");
        return "test";
    }
    
}
