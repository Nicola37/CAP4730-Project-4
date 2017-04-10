#version 120

varying vec3 ReflectDir;


uniform samplerCube CubeMapTex;


void main() {
	gl_FragColor = textureCube(CubeMapTex, ReflectDir);
}
