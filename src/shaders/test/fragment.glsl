varying vec2 vUv;

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
  float strength = mod(vUv.x * 10.0, 1.0);
  strength = step(0.8, strength);
  gl_FragColor = vec4(strength, strength, strength, 1.0);

}
