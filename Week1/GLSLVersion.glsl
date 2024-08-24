void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord.xy/iResolution.xy;

    //aspect ratio correction
    //If the width and height are not equal, x coor is scaled by the ratio of the width to height to maintain correct proportions
    //ensures the image is not distorted when rendering
    uv.x *= iResolution.x/iResolution.y;

    // Time varying pixel color
    //color calculation
    vec3 col = vec3(0.); //initializes to black
    //sets the colour based on uv.x, uv.y, and iTime
    col = vec3(uv.x,uv.y,abs(sin(iTime)));

    // Output to screen
    fragColor = vec4(col,1.0);//vec4 combines rgb with alpha value of 1.0 to form final color output for pixel
}