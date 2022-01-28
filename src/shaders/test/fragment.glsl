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
  // can't use '%' for modulo.
  // first arg = value going to increment
  // second arg = the limit -> goes back to 0 once this limit has been reached
  float strength = mod(vUv.y * 10.0, 1.0);
  gl_FragColor = vec4(strength, strength, strength, 1.0);

}
