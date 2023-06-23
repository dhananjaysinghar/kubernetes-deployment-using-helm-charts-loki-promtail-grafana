package com.test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestController {


    @Value("${FILE_PATH}")
    private String filepath;

    @GetMapping("/hello")
    public String getMessage() throws IOException {
        Path path = Paths.get(filepath);
        return new String(Files.readAllBytes(path));
    }
}
