//
// Simple wave shader I stole lol
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

//Modify the following three consts to change the wave effect to your liking
uniform float xSpeed;
uniform float xFreq;
uniform float xSize;
//const float xSpeed = 0.05;
//const float xFreq = 100.00;
//const float xSize = 1.00;


void main()
{
    float xWave = sin(Time*xSpeed + v_vTexcoord.y*xFreq) * (xSize*Texel.x);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(xWave, 0.0));
}
