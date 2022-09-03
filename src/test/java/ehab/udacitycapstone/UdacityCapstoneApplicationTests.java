package ehab.udacitycapstone;

import ehab.udacitycapstone.controller.HomeController;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
class UdacityCapstoneApplicationTests {

    HomeController homeController;

    @BeforeEach
    void setUp(){
        homeController = new HomeController();
    }

    @Test
    void contextLoads() {
        assertEquals("App is up", homeController.home());
    }

}
