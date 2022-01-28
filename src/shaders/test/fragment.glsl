varying vec2 vUv;

void main()
{
  // Pattern 1
  // gl_FragColor = vec4(vUv.x, vUv.y, 1.0, 1.0);


  // Pattern 2
  // gl_FragColor = vec4(vUv.x, vUv.y, 0, 1.0);


  // Pattern 3
  gl_FragColor = vec4(vUv.x, vUv.x, vUv.x, 1.0);

}
