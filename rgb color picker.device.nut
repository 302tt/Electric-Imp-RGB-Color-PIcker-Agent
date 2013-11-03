/*

https://github.com/joel-wehr/electric_imp_agents_jquery_colorpicker

*/

imp.configure("RGB Color Picker",[],[]);
hardware.pin7.configure(PWM_OUT, 0.0001, 0);
hardware.pin2.configure(PWM_OUT, 0.0001, 0);
hardware.pin5.configure(PWM_OUT, 0.0001, 0);

red <- 255;
green <- 255;
blue <- 255;

agent.on("rgb", function(data) {
    red = data.red.tointeger()/255.0;
    green = data.green.tointeger()/255.0;
    blue = data.blue.tointeger()/255.0;
    server.log("RGB: " + red + ", " + green + ", " + blue);
    hardware.pin2.write(green);
    hardware.pin5.write(blue);
    hardware.pin7.write(red);
});