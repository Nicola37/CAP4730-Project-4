#version 120
attribute  vec3 VertexPosition;
varying vec3 TexCoords;

varying vec3 ReflectDir;

void main()
{
	//set the texture coordinates for the skybox
	gl_Position = gl_ProjectionMatrix*gl_ModelViewMatrix * vec4(VertexPosition, 1.0);
	TexCoords = VertexPosition;
	TexCoords.y = -VertexPosition.y;
}
