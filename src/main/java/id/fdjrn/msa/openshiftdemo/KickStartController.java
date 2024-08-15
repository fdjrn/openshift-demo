package id.fdjrn.msa.openshiftdemo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/kickstart")
public class KickStartController {


    @GetMapping
    public String kickStart() {
        return "Kick Start";
    }

}
