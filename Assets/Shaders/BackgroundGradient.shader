// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:2,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:0,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:3554,x:32480,y:32959,varname:node_3554,prsc:2|emission-3841-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8678,x:31178,y:33170,varname:node_8678,prsc:2,sctp:0;n:type:ShaderForge.SFN_Distance,id:1810,x:31938,y:33244,varname:node_1810,prsc:2|A-4758-OUT,B-4235-OUT;n:type:ShaderForge.SFN_Vector2,id:4235,x:31711,y:33372,varname:node_4235,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Lerp,id:3841,x:32159,y:33074,varname:node_3841,prsc:2|A-3905-RGB,B-7765-RGB,T-1810-OUT;n:type:ShaderForge.SFN_Color,id:3905,x:31873,y:32919,ptovrint:False,ptlb:InnerColor,ptin:_InnerColor,varname:node_3905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2205882,c2:0.2205882,c3:0.2205882,c4:1;n:type:ShaderForge.SFN_Color,id:7765,x:31901,y:33087,ptovrint:False,ptlb:OuterColor,ptin:_OuterColor,varname:node_7765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.06617647,c2:0.06617647,c3:0.06617647,c4:1;n:type:ShaderForge.SFN_Vector4Property,id:4336,x:31193,y:33032,ptovrint:False,ptlb:OffsetXY,ptin:_OffsetXY,varname:node_4336,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:1,v4:1;n:type:ShaderForge.SFN_Add,id:5236,x:31563,y:33145,varname:node_5236,prsc:2|A-4336-X,B-5652-OUT;n:type:ShaderForge.SFN_Add,id:3933,x:31563,y:33277,varname:node_3933,prsc:2|A-4336-Y,B-65-OUT;n:type:ShaderForge.SFN_Append,id:4758,x:31755,y:33226,varname:node_4758,prsc:2|A-5236-OUT,B-3933-OUT;n:type:ShaderForge.SFN_Multiply,id:5652,x:31380,y:33145,varname:node_5652,prsc:2|A-8678-U,B-4336-Z;n:type:ShaderForge.SFN_Multiply,id:65,x:31380,y:33277,varname:node_65,prsc:2|A-8678-V,B-4336-W;proporder:3905-7765-4336;pass:END;sub:END;*/

Shader "LadTy/Experiments/BackgroundGradient" {
    Properties {
        _InnerColor ("InnerColor", Color) = (0.2205882,0.2205882,0.2205882,1)
        _OuterColor ("OuterColor", Color) = (0.06617647,0.06617647,0.06617647,1)
        _OffsetXY ("OffsetXY", Vector) = (0,0,1,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Background"
            "RenderType"="Opaque"
            "PreviewType"="Skybox"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform float4 _InnerColor;
            uniform float4 _OuterColor;
            uniform float4 _OffsetXY;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 screenPos : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_InnerColor.rgb,_OuterColor.rgb,distance(float2((_OffsetXY.r+(i.screenPos.r*_OffsetXY.b)),(_OffsetXY.g+(i.screenPos.g*_OffsetXY.a))),float2(0,0)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
