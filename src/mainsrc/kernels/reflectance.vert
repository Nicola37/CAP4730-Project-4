#version 120
attribute  vec3 VertexPosition;
varying vec3 TexCoords;

varying vec3 ReflectDir;

void main()
{

	//vec3 normal = normalize(gl_NormalMatrix*gl_Normal);

	//VertexPosition = vec3(gl_ModelViewMatrix*gl_Vertex);

	//ReflectDir = gl_NormalMatrix*VertexPosition;

	//ReflectDir = VertexPosition;
	//ReflectDir = VertexPosition;

	//gl_Position = vec4(VertexPosition, 1.0);
	gl_Position = gl_ProjectionMatrix*gl_ModelViewMatrix * vec4(VertexPosition, 1.0);
	TexCoords = VertexPosition;
	
}
