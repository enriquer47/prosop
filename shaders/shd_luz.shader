attribute vec3 in_Position;               

varying vec2 pos;

uniform float u_z;

void main()
{

    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, u_z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    pos=in_Position.xy;
    
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 pos;
uniform vec2 u_pos;
const float zz=40.;


void main()
{
    vec2 dis=pos-u_pos;
    float intensidad=1./(sqrt(dis.x*dis.x+dis.y*dis.y+zz*zz)-zz);
    gl_FragColor = vec4(vec3(intensidad),1.);
}

