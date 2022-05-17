attribute vec3 in_Position; 
varying vec2 fragCoord; 
 void main() 
 {
    vec4 Position = vec4( in_Position, 1); 
   gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * Position; 
   fragCoord = in_Position.xy; 
 }
//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform float iGlobalTime; 
uniform vec3 iResolution; 
varying vec2 fragCoord; 

vec2 center = vec2(0.5,0.5);
float speed = 0.035;

void main( void )
{
    float invAr = iResolution.y / iResolution.x;

    vec2 uv = fragCoord.xy / iResolution.xy;
		
	vec3 col = vec4(uv,0.5+0.5*sin(iGlobalTime),1.0).xyz;
   
     vec3 texcol;
			
	float x = (center.x-uv.x);
	float y = (center.y-uv.y) *invAr;
		
	//float r = -sqrt(x*x + y*y); //uncoment this line to symmetric ripples
	float r = -(x*x + y*y);
	float z = 1.0 + 0.5*sin((r+iGlobalTime*speed)/0.013);
	
	texcol.x = z;
	texcol.y = z;
	texcol.z = z;
	
	gl_FragColor = vec4(col*texcol,1.0);
}
