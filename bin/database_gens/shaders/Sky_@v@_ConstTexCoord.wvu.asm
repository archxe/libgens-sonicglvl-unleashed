//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_SkyParam;
//   bool mrgHasBone;
//   float4 mrgTexcoordIndex[4];
//
//
// Registers:
//
//   Name             Reg   Size
//   ---------------- ----- ----
//   mrgHasBone       b0       1
//   g_MtxProjection  c0       4
//   g_MtxView        c4       4
//   g_MtxWorld       c8       3
//   g_MtxPalette     c28     75
//   g_EyePosition    c178     1
//   mrgTexcoordIndex c187     1
//   g_SkyParam       c219     1
//

    vs_3_0
    def c225, 3, 0, 0, 0
    def c221, 1, 0, 0, 0
    def c222, 0, 1, 0, 0
    def c223, 0, 0, 1, 0
    def c224, 0, 0, 0, 1
    dcl_position v0
    dcl_blendweight v1
    dcl_blendindices v2
    dcl_texcoord v3
    dcl_texcoord1 v4
    dcl_texcoord2 v5
    dcl_texcoord3 v6
    dcl_color v7
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    if b0
      mul r0, v2, c225.x
      mova a0, r0.yxzw
      mul r1, v1.y, c30[a0.x]
      mad r1, c30[a0.y], v1.x, r1
      mad r1, c30[a0.z], v1.z, r1
      add r0.x, v1.y, v1.x
      add r0.x, r0.x, v1.z
      add r0.x, -r0.x, c221.x
      mad r1, c30[a0.w], r0.x, r1
      dp4 r0.y, r1, v0
      mul r1, v1.y, c28[a0.x]
      mad r1, c28[a0.y], v1.x, r1
      mad r1, c28[a0.z], v1.z, r1
      mad r1, c28[a0.w], r0.x, r1
      dp4 r0.z, r1, v0
      mul r1, v1.y, c29[a0.x]
      mad r1, c29[a0.y], v1.x, r1
      mad r1, c29[a0.z], v1.z, r1
      mad r1, c29[a0.w], r0.x, r1
      dp4 r0.x, r1, v0
      mov r0.w, v0.w
    else
      mov r0, v0.yzxw
    endif
    mul r1.xyz, r0.x, c9
    mad r1.xyz, r0.z, c8, r1
    mad r0.xyz, r0.y, c10, r1
    mov r1.xyz, c178
    mad r0.xyz, r1, c219, r0
    mul r1, r0.y, c5
    mad r1, r0.x, c4, r1
    mad r1, r0.z, c6, r1
    mad r0, r0.w, c7, r1
    mul r1, r0.y, c1
    mad r1, r0.x, c0, r1
    mad r1, r0.z, c2, r1
    mad o0, r0.w, c3, r1
    frc r0.xy, c187
    slt r0.zw, -r0.xyxy, r0.xyxy
    add r0.xy, -r0, c187
    slt r1.xy, c187, -c187
    mad r0.xy, r1, r0.zwzw, r0
    mova a0.x, r0.x
    mul r0.xz, v3.xyyw, c221[a0.x].x
    mad r0.xz, c221[a0.x].y, v4.xyyw, r0
    mad r0.xz, c221[a0.x].z, v5.xyyw, r0
    mad o1.xy, c221[a0.x].w, v6, r0.xzzw
    mova a0.x, r0.y
    mul r0.xy, v3, c221[a0.x].x
    mad r0.xy, c221[a0.x].y, v4, r0
    mad r0.xy, c221[a0.x].z, v5, r0
    mad o1.zw, c221[a0.x].w, v6.xyxy, r0.xyxy
    mov o2, v7

// approximately 56 instruction slots used