#version 120

varying vec3 ReflectDir;


varying vec3 TexCoords;
uniform samplerCube CubeMapTex;


void main() {
	//gl_FragColor = textureCube(CubeMapTex, ReflectDir);
	//vec4 color = textureCube(CubeMapTex, ReflectDir);
	//gl_FragColor = color;
	gl_FragColor = textureCube(CubeMapTex, TexCoords);
}
