﻿Shader "Custom/50-59/59_01_Glitch_Order"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

            struct appdata
            {
                float4 vertex : POSITION;
            };

            struct v2f
            {
                float4 vertex : SV_POSITION;
            };
            
            v2f vert(appdata v)
            {
                v2f o;
                UNITY_INITIALIZE_OUTPUT(v2f, o);
                o.vertex = UnityObjectToClipPos(v.vertex);
                v.vertex.x += sin(_Time.y);
                return o;
            }
            
            fixed4 frag(v2f i) : SV_Target
            {
                return fixed4(0, 0, 0, 1);
            }
            ENDCG
        }
    }
}   