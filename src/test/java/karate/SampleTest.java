package karate;

import com.intuit.karate.junit5.Karate;

class SampleTest {
    @Karate.Test
    Karate testAll() {
        return Karate.run().relativeTo(getClass());
    }

    //mvn test -Dtest=SampleTest#Tag
    // @Karate.Test
    // Karate Tag() {
    //     return Karate.run("/feature/Sample").tags("Test").relativeTo(getClass());
    // }

    //mvn "-Dkarate.options=--tags @Test" test // for smoke specific one
    //mvn "-Dkarate.options=--tags ~@Skip" test // for Skip specific one

}
