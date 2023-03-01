package skypro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerNew {

    @GetMapping("/")
    public String showPublicInfo() {
        return "publicRoom";
    }

    @GetMapping("/security_info")
    public String showSecurityInfo() {
        return "securityRoom";
    }

    @GetMapping("/server_info")
    public String showServerInfo() {
        return "serverRoom";
    }

    @GetMapping("/director_info")
    public String showDirectorInfo() {
        return "directorOffice";
    }
}