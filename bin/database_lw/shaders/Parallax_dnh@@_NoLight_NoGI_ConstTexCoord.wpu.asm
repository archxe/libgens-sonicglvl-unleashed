//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_ParallaxParam;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampHeight;
//   sampler2D sampNrm;
//
//
// Registers:
//
//   Name                     Reg   Size
//   ------------------------ ----- ----
//   mrgGlobalLight_Direction c10      1
//   g_Diffuse                c16      1
//   g_Ambient                c17      1
//   mrgGlobalLight_Diffuse   c36      1
//   g_aLightField            c77      6
//   g_ParallaxParam          c150     1
//   sampDif                  s0       1
//   sampNrm                  s3       1
//   sampHeight               s4       1
//   sampDLScatter            s9       1
//

    ps_3_0
    def c0, 2, -1, 0, 1
    def c1, 0.5, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord3_pp v1
    dcl_texcoord4_pp v2
    dcl_texcoord5_pp v3
    dcl_texcoord7 v4.xy
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    mov_pp r0.z, v3.w
    mov_pp r0.x, v1.w
    mov_pp r0.y, v2.w
    dp3_pp r0.z, r0, r0
    rsq_pp r0.z, r0.z
    mul_pp r0.xy, r0.z, r0
    texld_pp r1, v0, s4
    mad_pp r0.z, r1.y, c150.y, c150.x
    mad r0.xy, r0, r0.z, v0
    texld_pp r1, r0, s3
    texld_pp r0, r0, s0
    mul_pp r1.x, r1.w, r1.x
    mad_pp r1.xy, r1, c0.x, c0.y
    nrm_pp r2.xyz, v2
    mul_pp r2.xyz, r1.y, r2
    nrm_pp r3.xyz, v1
    mad_pp r2.xyz, r1.x, r3, r2
    dp2add_sat_pp r1.x, r1, r1, c0.z
    add r1.x, -r1.x, c0.w
    rsq r1.x, r1.x
    rcp_pp r1.x, r1.x
    nrm_pp r3.xyz, v3
    mad_pp r1.xyz, r1.x, r3, r2
    mad_pp r2.xyz, r1, c1.x, c1.x
    mov r3.xyz, c77
    mad r3.xyz, c78, r2.x, r3
    mul_pp r4.xyz, r1, r1
    dp3_sat_pp r1.x, r1, -c10
    mul r1.x, r1.x, c77.w
    mul_pp r1.xyz, r1.x, c36
    mov r5.xyz, c80
    mad r2.xyw, r5.xyzz, r2.y, c79.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r2.z, c81
    mul r2.xyz, r2.xyww, r4.y
    mad_pp r2.xyz, r4.x, r3, r2
    mad_pp r2.xyz, r4.z, r5, r2
    mad_pp r1.xyz, r2, c17, r1
    mul_pp r1.xyz, r1, c16
    mul_pp r1.xyz, r0, r1
    mul_pp r1.w, r0.w, c16.w
    mul_pp r0, r1, v5
    texld_pp r1, v4.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1
    mov_pp oC0.w, r0.w

// approximately 52 instruction slots used (4 texture, 48 arithmetic)