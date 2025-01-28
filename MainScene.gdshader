shader_type spatial;

uniform sampler2D texture1; // Positive X
uniform sampler2D texture2; // Negative X
uniform sampler2D texture3; // Positive Y
uniform sampler2D texture4; // Negative Y
uniform sampler2D texture5; // Positive Z
uniform sampler2D texture6; // Negative Z;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec3 n = NORMAL;
    vec4 tex_color;

    if (n == vec3(1.0, 0.0, 0.0)) { // Positive X
        tex_color = texture(texture1, UV);
    } else if (n == vec3(-1.0, 0.0, 0.0)) { // Negative X
        tex_color = texture(texture2, UV);
    } else if (n == vec3(0.0, 1.0, 0.0)) { // Positive Y
        tex_color = texture(texture3, UV);
    } else if (n == vec3(0.0, -1.0, 0.0)) { // Negative Y
        tex_color = texture(texture4, UV);
    } else if (n == vec3(0.0, 0.0, 1.0)) { // Positive Z
        tex_color = texture(texture5, UV);
    } else { // Negative Z
        tex_color = texture(texture6, UV);
    }

    ALBEDO = tex_color.rgb;
}

//void light() {
	// Called for every pixel for every light affecting the material.
	// Uncomment to replace the default light processing function with this one.
//}
