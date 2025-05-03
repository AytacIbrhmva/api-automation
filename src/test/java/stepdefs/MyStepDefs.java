package stepdefs;

import io.cucumber.java.en.*;
import io.restassured.RestAssured;
import io.restassured.response.Response;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

public class MyStepDefs {

    private Response response;

    @Given("I send a GET request to {string}")
    public void i_send_a_get_request_to(String url) {
        response = RestAssured.get(url);
    }

    @Then("the status code should be {int}")
    public void the_status_code_should_be(int expectedStatusCode) {
        assertThat(response.getStatusCode(), is(expectedStatusCode));
    }

    @Then("the response should contain {string}")
    public void the_response_should_contain(String key) {
        response.then().body("$", hasKey(key));
    }
}
