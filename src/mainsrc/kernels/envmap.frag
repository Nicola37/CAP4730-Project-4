#version 120

varying vec3 ReflectDir;
varying vec3 vs_fs_normal;
varying vec3 vs_fs_position;

uniform samplerCube CubeMapTex;
uniform vec3 cameraPos;

void main() {
	//vec3 I = normalize(vs_fs_position - cameraPos);
	//vec3 ReflectDir = reflect(I, normalize(vs_fs_normal));
	gl_FragColor = textureCube(CubeMapTex, ReflectDir);
}
