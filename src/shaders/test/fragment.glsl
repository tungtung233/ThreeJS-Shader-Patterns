varying vec2 vUv;

// Pattern 23
float random(vec2 st)
{
  return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}


void main()
{
  // Pattern 1
  // gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);


  // Pattern 2
  // gl_FragColor = vec4(vUv.x, vUv.y, 0, 1.0);


  // Pattern 3
  // gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);


  // Pattern 4
  // float strength = vUv.y;
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 5
  // float strength = 1.0 - vUv.y;
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 6
  // float strength = vUv.y * 10.0;
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 7
  // // can't use '%' for modulo.
  // // first arg = value going to increment
  // // second arg = the limit -> goes back to 0 once this limit has been reached
  // float strength = mod(vUv.y * 10.0, 1.0);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 8
  // float strength = mod(vUv.y * 10.0, 1.0);

  // // this if statement works, but it is bad for performance
  // if (strength < 0.5) {
  //   strength = 0.0;
  // } else {
  //   strength = 1.0;
  // }

  // // ternary also works, but same issue as using an if statement - bad for performance
  // strength = strength < 0.5 ? 0.0 : 1.0;

  // // step function ->
  // // first arg = the limit
  // // second arg = value
  // // if the value is below the limit, then step will provide 0, if the value is above the limit, then step will provide 1
  // strength = step(0.5, strength);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 9
  // float strength = mod(vUv.y * 10.0, 1.0);
  // strength = step(0.8, strength);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 10
  // float strength = mod(vUv.x * 10.0, 1.0);
  // strength = step(0.8, strength);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 11
  // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
  // strength += step(0.8, mod(vUv.y * 10.0, 1.0)); 
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 12
  // float strength = step(0.8, mod(vUv.x * 10.0, 1.0));
  // // instead of adding them together, like in the previous example, now we can only see the pattern where the lines cross
  // strength *= step(0.8, mod(vUv.y * 10.0, 1.0)); 
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 13
  // float strength = step(0.4, mod(vUv.x * 10.0, 1.0));
  // strength *= step(0.8, mod(vUv.y * 10.0, 1.0)); 
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 14
  // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
  // barX *= step(0.8, mod(vUv.y * 10.0, 1.0)); 

  // float barY = step(0.8, mod(vUv.x * 10.0, 1.0));
  // barY *= step(0.4, mod(vUv.y * 10.0, 1.0)); 

  // float strength = barX + barY;
  
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 15
  // float barX = step(0.4, mod(vUv.x * 10.0, 1.0));
  // barX *= step(0.8, mod(vUv.y * 10.0 + 0.2, 1.0)); 

  // float barY = step(0.8, mod(vUv.x * 10.0 + 0.2, 1.0));
  // barY *= step(0.4, mod(vUv.y * 10.0, 1.0)); 

  // float strength = barX + barY;
  
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 16
  // // '-0.5' makes the UV coords go from -0.5 to 0.5, but the values between -0.5 to 0 won't show up as anything other than black.
  // // So using absolute values, -0.5 becomes 0.5
  // float strength = abs(vUv.x - 0.5);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 17
  // float strength = min(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 18
  // float strength = max(abs(vUv.x - 0.5), abs(vUv.y - 0.5));
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 19
  // float strength = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 20
  // float square1 = step(0.2, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));
  // float square2 = 1.0 - step(0.25, max(abs(vUv.x - 0.5), abs(vUv.y - 0.5)));

  // float strength = square1 * square2; // taking the intersection between the two squares
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 21
  // if it was just 'round(vUv.x)', then we'd just have two colors: black and white (anything below 0.5 = black, and anything above = white)
  // first we multiply by 10 -> so we get values from 0 to 10, then floor it to make them whole numbers, then divide by 10 to get valuese between 0 to 1 again
  // float strength = floor(vUv.x * 10.0) / 10.0;
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 22
  // float strength = (floor(vUv.x * 10.0) / 10.0) * (floor(vUv.y * 10.0) / 10.0);
  // gl_FragColor = vec4(strength, strength, strength, 1.0);


  // Pattern 23
  // there is no native random function in GLSL
  // The trick is to get a value so unpredictable that it looks random
  float strength = random(vUv);
  gl_FragColor = vec4(strength, strength, strength, 1.0);

}
