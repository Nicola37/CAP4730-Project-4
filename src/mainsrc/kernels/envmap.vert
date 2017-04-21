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
	//vs_fs_position.x = VertexPosition.x;
	//vs_fs_position.y = VertexPosition.y;
	//vs_fs_position.z = VertexPosition.z;
	//gl_Position = vec4(vs_fs_position, 1.0);
	//vs_fs_normal = VertexNormal;
	//ReflectDir = vs_fs_position*vs_fs_normal;
	//gl_Position = ReflectDir;//vec4(vs_fs_normal*ReflectDir*vs_fs_position, 1.0);
	//gl_Position = ftransform();
	//gl_Position = gl_ProjectionMatrix*gl_ModelViewMatrix*VertexPosition;
	//vs_fs_position.x = VertexPosition.x;
	//vs_fs_position.y = VertexPosition.y;
	//vs_fs_position.z = VertexPosition.z;
	//vec4 transformNormal = gl_ModelViewMatrix*vec4(VertexNormal, 1.0);
	//vs_fs_normal = normalize(transformNormal.xyz);
	//ReflectDir = reflect(vs_fs_position, vs_fs_normal);
	//gl_ModelViewMatrix

	
	gl_Position = gl_ModelViewProjectionMatrix*VertexPosition;
	vs_fs_normal = mat3(transpose(inverse(gl_ModelViewMatrix)))*VertexNormal;
	vs_fs_position = vec3(gl_ModelViewMatrix*VertexPosition);
}
