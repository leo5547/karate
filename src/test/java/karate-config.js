function fn(){ 
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev'; // a custom 'intelligent' default
    }
    var config = {
        env: env,
        myVarName: 'someValue'
    };
    if (env == 'dev') {
        // customize
    }else if (env == 'e2e') {
        // customize
    }
    return config;
}