Shader "MyPipeline/Howdy"
{
    Properties
    {
    }
    SubShader
    {
		Cull Off ZWrite Off ZTest Always
        Pass
        {
            HLSLPROGRAM
			#pragma multi_compile_local __ BOUND_DEBUG USE_DEPTH_TEX USE_DIST_TEX
            #pragma vertex vert
            #pragma fragment frag
			#include "UnityCG.cginc"
			#include "PrimitiveFunctions.hlsl"
			#include "Howdy.hlsl"

            ENDHLSL
        }
    }
}
