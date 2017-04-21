#version 120

varying vec3 ReflectDir;


varying vec3 TexCoords;
uniform samplerCube CubeMapTex;


void main() {
	gl_FragColor = textureCube(CubeMapTex, TexCoords);
}
