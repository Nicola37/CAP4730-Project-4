#version 120


attribute  vec4 VertexPosition;
attribute  vec3 VertexNormal;

varying vec3 ReflectDir;
varying vec3 vs_fs_normal;
varying vec3 vs_fs_position;

void main(){
	//use reflect
	//vs_fs_position = vec3(VertexPosition);
	//gl_Position = vec4(VertexNormal*ReflectDir*vs_fs_position, 1.0);
	vs_fs_position.x = VertexPosition.x;
	vs_fs_position.y = VertexPosition.y;
	vs_fs_position.z = VertexPosition.z;
	vs_fs_normal = VertexNormal;
	gl_Position = ftransform();
	
}
