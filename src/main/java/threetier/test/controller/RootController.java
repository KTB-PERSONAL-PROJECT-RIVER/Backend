package threetier.test.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class RootController {
    @GetMapping("/healthcheck")
    public ResponseEntity<Boolean> healthCheck() {
        return ResponseEntity.ok(Boolean.TRUE);
    }
}