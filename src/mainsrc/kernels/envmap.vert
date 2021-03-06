#version 120


attribute  vec4 VertexPosition;
attribute  vec3 VertexNormal;

varying vec3 ReflectDir;
varying vec3 vs_fs_normal;
varying vec3 vs_fs_position;

void main(){
	//Set the position and normal.
	gl_Position = gl_ModelViewProjectionMatrix*VertexPosition;
	vs_fs_normal = mat3(transpose(inverse(gl_ModelViewMatrix)))*VertexNormal;
	vs_fs_position = vec3(gl_ModelViewMatrix*VertexPosition);
}
