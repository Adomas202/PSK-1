package lt.vu.mif.services;

import org.apache.deltaspike.core.api.future.Futureable;

import javax.ejb.AsyncResult;
import javax.enterprise.context.ApplicationScoped;
import java.io.Serializable;
import java.util.concurrent.Future;

@ApplicationScoped
public class IntensiveCalculator implements Serializable {

    @Futureable
    public Future<Integer> calculateIntensively() {
        try {
            Thread.sleep(3000);
        } catch (InterruptedException e) {
        }

        int result = 501;
        return new AsyncResult<>(result);
    }
}
