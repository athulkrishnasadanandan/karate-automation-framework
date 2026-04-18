package com.automation;

import com.intuit.karate.junit5.Karate;

public class ApiRunnerTest {

    @Karate.Test
Karate testAll() {
    return Karate.run("classpath:api"); 
}
}