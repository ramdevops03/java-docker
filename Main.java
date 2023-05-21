import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import static spark.Spark.*;

public class Main {
    public static void main(String[] args) {
        // Set the port to listen on
        port(8080);

        // Serve the index.html file
        get("/", (req, res) -> {
            String content = new String(Files.readAllBytes(Paths.get("index.html")));
            res.type("text/html");
            return content;
        });
    }
}