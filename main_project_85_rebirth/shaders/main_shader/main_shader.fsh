//
// simple colour swapping fragment shader
//
uniform vec3 f_Colour1;
uniform vec3 f_Colour2;
uniform vec3 f_Colour3;
uniform vec3 f_Colour4;
uniform vec3 f_Colour5;
uniform vec3 f_Colour6;
uniform vec3 f_Colour7;
uniform vec3 f_Colour8;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 col = texture2D( gm_BaseTexture, v_vTexcoord );
    if(( distance(col.r,f_Colour1.r) < 0.25 ) && ( distance(col.g,f_Colour1.g) < 0.25 ) && ( distance(col.b,f_Colour1.b) < 0.25 ))
    {
        col.rgb = f_Colour2.rgb;
    }
        else if(( distance(col.r,f_Colour3.r) < 0.25 ) && ( distance(col.g,f_Colour3.g) < 0.25 ) && ( distance(col.b,f_Colour3.b) < 0.25 ))
    {
        col.rgb = f_Colour4.rgb;
    }
        else if(( distance(col.r,f_Colour5.r) < 0.25 ) && ( distance(col.g,f_Colour5.g) < 0.25 ) && ( distance(col.b,f_Colour5.b) < 0.25 ))
    {
        col.rgb = f_Colour6.rgb;
    }
        else if(( distance(col.r,f_Colour7.r) < 0.25 ) && ( distance(col.g,f_Colour7.g) < 0.25 ) && ( distance(col.b,f_Colour7.b) < 0.25 ))
    {
        col.rgb = f_Colour8.rgb;
    }
    gl_FragColor = v_vColour * col;
}

