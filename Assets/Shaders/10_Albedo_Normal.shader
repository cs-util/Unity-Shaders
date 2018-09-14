﻿Shader "Custom/10-19/10_Albedo_Normal"
{
    SubShader
    {
        CGPROGRAM
        #pragma surface surf Lambert
        
        struct Input
        {
            float3 worldRefl;
        };
        
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = o.Normal;
        }
        ENDCG
    }
    Fallback "Diffuse"
}