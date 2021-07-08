package application.rest.v1;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Application;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import org.eclipse.microprofile.faulttolerance.Retry;

@RequestScoped
@ApplicationPath("/")
@Path("/")
public class stockquotedemo extends Application {

	private static final double TEST_PRICE = 123.45;
	private String stock = "IBM";
	private static int retryCounter;


    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{stock}")
    //@Retry(maxRetries = 4, retryOn = {RuntimeException.class})
    public Response getStockQuote(@PathParam("stock") String stock) {
        
    	System.out.println("Called getStockQuote a total of " + ++retryCounter + " times");
            	
        if (isDown()) throw new RuntimeException();
        
    	        //return Response.ok(json, MediaType.APPLICATION_JSON).build();
        
        Response res = Response.ok("{\"Symbol\":\"" + stock + "\",\"price\":\"" + TEST_PRICE +"\"}",MediaType.APPLICATION_JSON).build();
        //Response res = Response.ok("{\"Symbol\":\"" + stock + "\",\"price\":\"" + TEST_PRICE + "\",\"RETRIES\":\"" + retryCounter +"\"}",MediaType.APPLICATION_JSON).build();
        retryCounter = 0;
        
        return res;
    }

    private boolean isDown() {
        // approx 50% chance
        return Math.random() > 0.5;
    }

}



