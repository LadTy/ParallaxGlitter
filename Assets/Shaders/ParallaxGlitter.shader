// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32228,y:32793,varname:node_3138,prsc:2|emission-824-OUT;n:type:ShaderForge.SFN_Tex2d,id:8420,x:30252,y:33080,ptovrint:False,ptlb:GlitterNormals,ptin:_GlitterNormals,varname:node_8420,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:99c484450929ac441813f986c3e59c94,ntxv:3,isnm:True|UVIN-6329-OUT;n:type:ShaderForge.SFN_Slider,id:9129,x:30875,y:34147,ptovrint:False,ptlb:GlitterEdgesFalloff,ptin:_GlitterEdgesFalloff,varname:node_9129,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.12,max:5;n:type:ShaderForge.SFN_Color,id:7154,x:31576,y:33254,ptovrint:False,ptlb:GlitterColor,ptin:_GlitterColor,varname:node_7154,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:1702,x:31889,y:33428,varname:node_1702,prsc:2|A-7154-RGB,B-504-OUT,C-7154-A;n:type:ShaderForge.SFN_Power,id:7772,x:31378,y:33799,varname:node_7772,prsc:2|VAL-803-OUT,EXP-9129-OUT;n:type:ShaderForge.SFN_Transform,id:3765,x:30454,y:33080,varname:node_3765,prsc:2,tffrom:2,tfto:0|IN-8420-RGB;n:type:ShaderForge.SFN_Dot,id:4979,x:30665,y:33164,varname:node_4979,prsc:2,dt:3|A-3765-XYZ,B-4629-OUT;n:type:ShaderForge.SFN_ViewVector,id:4629,x:30454,y:33263,varname:node_4629,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6817,x:30863,y:33236,varname:node_6817,prsc:2|A-4979-OUT,B-9897-OUT;n:type:ShaderForge.SFN_Slider,id:9897,x:30303,y:33412,ptovrint:False,ptlb:GlitterFrequency,ptin:_GlitterFrequency,varname:node_9897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.6,max:16;n:type:ShaderForge.SFN_Sin,id:1844,x:31072,y:33258,varname:node_1844,prsc:2|IN-6817-OUT;n:type:ShaderForge.SFN_Dot,id:803,x:31122,y:33820,varname:node_803,prsc:2,dt:3|A-2090-OUT,B-9264-OUT;n:type:ShaderForge.SFN_ViewVector,id:9264,x:30912,y:33914,varname:node_9264,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2090,x:30912,y:33716,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:8151,x:31321,y:33613,ptovrint:False,ptlb:GlitterMask,ptin:_GlitterMask,varname:node_8151,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c88223f5e288c1548a19713464296782,ntxv:0,isnm:False|UVIN-9970-OUT;n:type:ShaderForge.SFN_Multiply,id:504,x:31674,y:33539,varname:node_504,prsc:2|A-2192-OUT,B-8151-R,C-7772-OUT;n:type:ShaderForge.SFN_Clamp01,id:2192,x:31450,y:33410,varname:node_2192,prsc:2|IN-9564-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:9564,x:31275,y:33314,varname:node_9564,prsc:2|IN-1844-OUT,IMIN-8961-OUT,IMAX-148-OUT,OMIN-9657-OUT,OMAX-1332-OUT;n:type:ShaderForge.SFN_Vector1,id:8961,x:30793,y:33380,varname:node_8961,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:148,x:30963,y:33380,varname:node_148,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:1332,x:30963,y:33441,varname:node_1332,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:9657,x:30614,y:33490,ptovrint:False,ptlb:GlitterDensityFactor,ptin:_GlitterDensityFactor,varname:node_9657,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-50,cur:-50,max:-2;n:type:ShaderForge.SFN_Tex2d,id:1709,x:31515,y:32605,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5158,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-6090-OUT;n:type:ShaderForge.SFN_Tex2d,id:1337,x:30370,y:32541,ptovrint:False,ptlb:MainHeighmap,ptin:_MainHeighmap,varname:node_2785,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:3117,x:30439,y:32841,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_6699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4,max:1;n:type:ShaderForge.SFN_ViewVector,id:8439,x:30412,y:32379,varname:node_8439,prsc:2;n:type:ShaderForge.SFN_Transform,id:585,x:30598,y:32398,varname:node_585,prsc:2,tffrom:0,tfto:2|IN-8439-OUT;n:type:ShaderForge.SFN_Multiply,id:2806,x:30835,y:32480,varname:node_2806,prsc:2|A-585-XYZ,B-3810-OUT,C-3117-OUT;n:type:ShaderForge.SFN_TexCoord,id:2794,x:30835,y:32292,varname:node_2794,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1034,x:31020,y:32407,varname:node_1034,prsc:2|A-2794-UVOUT,B-2806-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6090,x:31280,y:32586,varname:node_6090,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1034-OUT;n:type:ShaderForge.SFN_Slider,id:959,x:30249,y:32731,ptovrint:False,ptlb:BaseDepth,ptin:_BaseDepth,varname:node_1133,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Set,id:2210,x:32114,y:33428,varname:Glitter,prsc:2|IN-1702-OUT;n:type:ShaderForge.SFN_Get,id:5679,x:31778,y:33053,varname:node_5679,prsc:2|IN-2210-OUT;n:type:ShaderForge.SFN_Set,id:242,x:31913,y:32662,varname:MainColor,prsc:2|IN-9116-OUT;n:type:ShaderForge.SFN_Get,id:5183,x:31778,y:32924,varname:node_5183,prsc:2|IN-242-OUT;n:type:ShaderForge.SFN_Get,id:6329,x:30029,y:33080,varname:node_6329,prsc:2|IN-5911-OUT;n:type:ShaderForge.SFN_Get,id:9970,x:30924,y:33596,varname:node_9970,prsc:2|IN-5911-OUT;n:type:ShaderForge.SFN_Tex2d,id:4342,x:29611,y:34005,ptovrint:False,ptlb:GlitterHighmap,ptin:_GlitterHighmap,varname:_Heighmap_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2d73df7815f9fc04f90266eb042007fb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:73,x:29625,y:34310,ptovrint:False,ptlb:GlitterDepth,ptin:_GlitterDepth,varname:_Depth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_ViewVector,id:5112,x:29562,y:33798,varname:node_5112,prsc:2;n:type:ShaderForge.SFN_Transform,id:3482,x:29814,y:33842,varname:node_3482,prsc:2,tffrom:0,tfto:2|IN-5112-OUT;n:type:ShaderForge.SFN_Multiply,id:8729,x:30051,y:33924,varname:node_8729,prsc:2|A-3482-XYZ,B-8979-OUT,C-73-OUT;n:type:ShaderForge.SFN_TexCoord,id:7903,x:30051,y:33736,varname:node_7903,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6855,x:30236,y:33851,varname:node_6855,prsc:2|A-7903-UVOUT,B-8729-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1405,x:30430,y:33851,varname:node_1405,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6855-OUT;n:type:ShaderForge.SFN_Set,id:5911,x:30629,y:33851,varname:GlitterParallaxUVOffset,prsc:2|IN-1405-OUT;n:type:ShaderForge.SFN_Slider,id:5600,x:29454,y:34199,ptovrint:False,ptlb:GlitterBaseDepth,ptin:_GlitterBaseDepth,varname:node_5600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Subtract,id:3810,x:30587,y:32585,varname:node_3810,prsc:2|A-1337-R,B-959-OUT;n:type:ShaderForge.SFN_Subtract,id:8979,x:29827,y:34040,varname:node_8979,prsc:2|A-4342-R,B-5600-OUT;n:type:ShaderForge.SFN_Multiply,id:9116,x:31732,y:32641,varname:node_9116,prsc:2|A-1709-RGB,B-7488-RGB;n:type:ShaderForge.SFN_VertexColor,id:7488,x:31499,y:32801,varname:node_7488,prsc:2;n:type:ShaderForge.SFN_Add,id:824,x:32015,y:32957,varname:node_824,prsc:2|A-5183-OUT,B-5679-OUT;proporder:959-3117-1709-1337-5600-73-9657-9897-9129-7154-8420-8151-4342;pass:END;sub:END;*/

Shader "LadTy/Experiments/ParallaxGlitter" {
    Properties {
        _BaseDepth ("BaseDepth", Range(0, 3)) = 1
        _Depth ("Depth", Range(0, 1)) = 0.4
        _MainTex ("MainTex", 2D) = "black" {}
        _MainHeighmap ("MainHeighmap", 2D) = "white" {}
        _GlitterBaseDepth ("GlitterBaseDepth", Range(0, 3)) = 1
        _GlitterDepth ("GlitterDepth", Range(0, 1)) = 0.1
        _GlitterDensityFactor ("GlitterDensityFactor", Range(-50, -2)) = -50
        _GlitterFrequency ("GlitterFrequency", Range(0, 16)) = 2.6
        _GlitterEdgesFalloff ("GlitterEdgesFalloff", Range(0, 5)) = 0.12
        _GlitterColor ("GlitterColor", Color) = (1,1,1,1)
        _GlitterNormals ("GlitterNormals", 2D) = "bump" {}
        _GlitterMask ("GlitterMask", 2D) = "white" {}
        _GlitterHighmap ("GlitterHighmap", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _GlitterNormals; uniform float4 _GlitterNormals_ST;
            uniform float _GlitterEdgesFalloff;
            uniform float4 _GlitterColor;
            uniform float _GlitterFrequency;
            uniform sampler2D _GlitterMask; uniform float4 _GlitterMask_ST;
            uniform float _GlitterDensityFactor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MainHeighmap; uniform float4 _MainHeighmap_ST;
            uniform float _Depth;
            uniform float _BaseDepth;
            uniform sampler2D _GlitterHighmap; uniform float4 _GlitterHighmap_ST;
            uniform float _GlitterDepth;
            uniform float _GlitterBaseDepth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainHeighmap_var = tex2D(_MainHeighmap,TRANSFORM_TEX(i.uv0, _MainHeighmap));
                float2 node_6090 = (float3(i.uv0,0.0)+(mul( tangentTransform, viewDirection ).xyz.rgb*(_MainHeighmap_var.r-_BaseDepth)*_Depth)).rg;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6090, _MainTex));
                float3 MainColor = (_MainTex_var.rgb*i.vertexColor.rgb);
                float4 _GlitterHighmap_var = tex2D(_GlitterHighmap,TRANSFORM_TEX(i.uv0, _GlitterHighmap));
                float2 GlitterParallaxUVOffset = (float3(i.uv0,0.0)+(mul( tangentTransform, viewDirection ).xyz.rgb*(_GlitterHighmap_var.r-_GlitterBaseDepth)*_GlitterDepth)).rg;
                float2 node_6329 = GlitterParallaxUVOffset;
                float3 _GlitterNormals_var = UnpackNormal(tex2D(_GlitterNormals,TRANSFORM_TEX(node_6329, _GlitterNormals)));
                float node_8961 = (-1.0);
                float2 node_9970 = GlitterParallaxUVOffset;
                float4 _GlitterMask_var = tex2D(_GlitterMask,TRANSFORM_TEX(node_9970, _GlitterMask));
                float3 Glitter = (_GlitterColor.rgb*(saturate((_GlitterDensityFactor + ( (sin((abs(dot(mul( _GlitterNormals_var.rgb, tangentTransform ).xyz.rgb,viewDirection))*_GlitterFrequency)) - node_8961) * (1.0 - _GlitterDensityFactor) ) / (1.0 - node_8961)))*_GlitterMask_var.r*pow(abs(dot(i.normalDir,viewDirection)),_GlitterEdgesFalloff))*_GlitterColor.a);
                float3 emissive = (MainColor+Glitter);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
