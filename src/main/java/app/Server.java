package app;

import static spark.Spark.get;
import static spark.Spark.secure;

public class Server {
    public static void main(String[] args) {
        secure("certs/KeyStore.jks", "rafael", null, null);
        get("/hello", (req, res) -> "Hello Secure World");
    }
}
