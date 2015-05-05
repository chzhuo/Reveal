//
//  Copyright (c) 2014 Itty Bitty Apps. All rights reserved.
//


// These uniforms are set by KVC values on the material
uniform float dashedLineGeometryWidth = 1.0;
uniform float dashedLineGeometryHeight = 1.0;


// Force pixel transparency
#pragma transparent


// Draw alternating transparency for "dashed" line pattern
#pragma body


vec2 geometryxy = _surface.diffuseTexcoord;

float positionX = geometryxy.x * dashedLineGeometryWidth;
float positionY = geometryxy.y * dashedLineGeometryHeight;

float dashScale = 3.333333;
bool inX = mod(floor(positionX / dashScale), 2.0) == 0;
bool inY = mod(floor(positionY / dashScale), 2.0) == 0;

if ((inX && inY) || (!inX && !inY))
{
    _output.color.a = 1.0;
}
else
{
    _output.color.a = 0.0;
}
