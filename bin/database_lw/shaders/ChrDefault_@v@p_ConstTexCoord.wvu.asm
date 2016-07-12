//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgMorphWeight;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//   float4 mrgZOffsetRate;
//
//
// Registers:
//
//   Name                          Reg   Size
//   ----------------------------- ----- ----
//   mrgHasBone                    b15      1
//   g_MtxPalette                  c28     75
//   g_EyePosition                 c178     1
//   mrgGlobalLight_Direction      c183     1
//   mrgTexcoordIndex              c187     1
//   mrgTexcoordOffset             c191     2
//   mrgFresnelParam               c193     1
//   mrgMorphWeight                c194     1
//   mrgZOffsetRate                c195     1
//   g_LightScatteringFarNearScale c199     1
//   g_MtxProjection               c224     4
//   g_MtxView                     c228     4
//   g_MtxWorld                    c232     4
//

    vs_3_0
    def c4, 3, 0.5, 0, 0
    def c0, 1, 0, 0, 0
    def c1, 0, 1, 0, 0
    def c2, 0, 0, 1, 0
    def c3, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_color v9
    dcl_normal v10
    dcl_blendweight v11
    dcl_blendindices v12
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord5 o5
    dcl_color o6
    mul r0.xyz, c194.y, v6
    mad r0.xyz, c194.x, v5, r0
    mad r0.xyz, c194.z, v7, r0
    mad r0.xyz, c194.w, v8, r0
    add r0.xyz, r0, v0
    if b15
      add r1.x, -v11.x, c0.x
      add r1.x, r1.x, -v11.y
      add r1.x, r1.x, -v11.z
      mul r2, v12, c4.x
      mova a0, r2.yxzw
      mul r3, v11.y, c30[a0.x]
      mad r3, v11.x, c30[a0.y], r3
      mad r3, v11.z, c30[a0.z], r3
      mad r2, r1.x, c30[a0.w], r3
      dp3 r1.y, r2, v10
      mov r0.w, c0.x
      dp4 r1.z, r2, r0
      mul r2, v11.y, c28[a0.x]
      mad r2, v11.x, c28[a0.y], r2
      mad r2, v11.z, c28[a0.z], r2
      mad r2, r1.x, c28[a0.w], r2
      dp3 r1.w, r2, v10
      dp4 r2.x, r2, r0
      mul r3, v11.y, c29[a0.x]
      mad r3, v11.x, c29[a0.y], r3
      mad r3, v11.z, c29[a0.z], r3
      mad r3, r1.x, c29[a0.w], r3
      dp4 r0.y, r3, r0
      dp3 r0.w, r3, v10
      mov r0.x, r2.x
      mov r0.z, r1.z
    else
      mov r0.w, v10.y
      mov r1.yw, v10.xzzx
    endif
    frc r1.x, c187.x
    slt r1.z, -r1.x, r1.x
    add r1.x, -r1.x, c187.x
    slt r2.x, c187.x, -c187.x
    mad r1.x, r2.x, r1.z, r1.x
    add r2.xy, c191, v1
    add r2.zw, c191, v2.xyxy
    add r3.xy, c192, v3
    mova a0.x, r1.x
    mul r1.xz, r2.xyyw, c0[a0.x].x
    mad r1.xz, c0[a0.x].y, r2.zyww, r1
    mad r1.xz, c0[a0.x].z, r3.xyyw, r1
    add r2.xy, c192.zwzw, v4
    mad o1.xy, c0[a0.x].w, r2, r1.xzzw
    mul r2.xyz, r0.w, c233
    mad r1.xzw, r1.w, c232.xyyz, r2.xyyz
    mad r1.xyz, r1.y, c234, r1.xzww
    nrm r2.xyz, r1
    mov o3.xyz, r2
    mul r1, r0.y, c233
    mad r1, r0.x, c232, r1
    mad r0, r0.z, c234, r1
    add r0, r0, c235
    mov o2.xyz, r0
    abs r1.x, c195.x
    sge r1.x, -r1.x, r1.x
    mul r3, r0.y, c229
    mad r3, r0.x, c228, r3
    mad r3, r0.z, c230, r3
    mad r3, r0.w, c231, r3
    mov r4.xyw, c0
    mad r5, c195.x, r4.yyxw, r3
    mul r1.yz, r5.y, c225.xzww
    mad r1.yz, r5.x, c224.xzww, r1
    mad r1.yz, r5.z, c226.xzww, r1
    mad r1.yz, r5.w, c227.xzww, r1
    rcp r0.w, r1.z
    mul r0.w, r0.w, r1.y
    mul r5, r3.y, c225
    mad r5, r3.x, c224, r5
    mad r5, r3.z, c226, r5
    mad r5, r3.w, c227, r5
    mov o0.xyw, r5
    mad r1.y, r0.w, -r5.w, r5.z
    mul r0.w, r0.w, r5.w
    mad o0.z, r1.x, r1.y, r0.w
    add r0.w, r4.x, -c193.x
    add r0.xyz, -r0, c178
    nrm r1.xyz, r0
    dp3_sat r0.x, r2, r1
    add r0.x, -r0.x, c0.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o3.w, r0.x, r0.w, c193.x
    add r0.x, -r3.z, -c195.x
    mov o2.w, r0.x
    add r0.x, r0.x, -c199.y
    mul_sat o5.x, r0.x, c199.x
    dp3 r0.x, -c183, r1
    mad o5.y, r0.x, c4.y, c4.y
    mov o1.zw, c0.w
    mov o4, c0.w
    mov o5.zw, c0.w
    mov o6, v9

// approximately 107 instruction slots used