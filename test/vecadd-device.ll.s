	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.weak	_ZN6Kalmar12__index_leafILi0EEC2Ei ; -- Begin function _ZN6Kalmar12__index_leafILi0EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEC2Ei,@function
_ZN6Kalmar12__index_leafILi0EEC2Ei:     ; @_ZN6Kalmar12__index_leafILi0EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	_ZN6Kalmar12__index_leafILi0EEC2Ei, .Lfunc_end0-_ZN6Kalmar12__index_leafILi0EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 204
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v4, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v4, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v3, v2, v3, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v2, v2, v4, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end1:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev, .Lfunc_end1-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 252
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC2Ev ; -- Begin function _ZN6Kalmar5indexILi1EEC2Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC2Ev,@function
_ZN6Kalmar5indexILi1EEC2Ev:             ; @_ZN6Kalmar5indexILi1EEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end2:
	.size	_ZN6Kalmar5indexILi1EEC2Ev, .Lfunc_end2-_ZN6Kalmar5indexILi1EEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC1Ev ; -- Begin function _ZN6Kalmar5indexILi1EEC1Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC1Ev,@function
_ZN6Kalmar5indexILi1EEC1Ev:             ; @_ZN6Kalmar5indexILi1EEC1Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end3:
	.size	_ZN6Kalmar5indexILi1EEC1Ev, .Lfunc_end3-_ZN6Kalmar5indexILi1EEC1Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar12__index_leafILi0EE3getEv ; -- Begin function _ZNK6Kalmar12__index_leafILi0EE3getEv
	.p2align	2
	.type	_ZNK6Kalmar12__index_leafILi0EE3getEv,@function
_ZNK6Kalmar12__index_leafILi0EE3getEv:  ; @_ZNK6Kalmar12__index_leafILi0EE3getEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end4:
	.size	_ZNK6Kalmar12__index_leafILi0EE3getEv, .Lfunc_end4-_ZNK6Kalmar12__index_leafILi0EE3getEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end5:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei, .Lfunc_end5-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s35, 0
	v_writelane_b32 v34, s30, 1
	v_writelane_b32 v34, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v34, 1
	v_readlane_b32 s5, v34, 2
	v_readlane_b32 s35, v34, 0
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end6:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_, .Lfunc_end6-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 424
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC2ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEC2ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC2ERKS1_,@function
_ZN6Kalmar5indexILi1EEC2ERKS1_:         ; @_ZN6Kalmar5indexILi1EEC2ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2ERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end7:
	.size	_ZN6Kalmar5indexILi1EEC2ERKS1_, .Lfunc_end7-_ZN6Kalmar5indexILi1EEC2ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC1ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEC1ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC1ERKS1_,@function
_ZN6Kalmar5indexILi1EEC1ERKS1_:         ; @_ZN6Kalmar5indexILi1EEC1ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC2ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC2ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end8:
	.size	_ZN6Kalmar5indexILi1EEC1ERKS1_, .Lfunc_end8-_ZN6Kalmar5indexILi1EEC1ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 168
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC2Ei ; -- Begin function _ZN6Kalmar5indexILi1EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC2Ei,@function
_ZN6Kalmar5indexILi1EEC2Ei:             ; @_ZN6Kalmar5indexILi1EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end9:
	.size	_ZN6Kalmar5indexILi1EEC2Ei, .Lfunc_end9-_ZN6Kalmar5indexILi1EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC1Ei ; -- Begin function _ZN6Kalmar5indexILi1EEC1Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC1Ei,@function
_ZN6Kalmar5indexILi1EEC1Ei:             ; @_ZN6Kalmar5indexILi1EEC1Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end10:
	.size	_ZN6Kalmar5indexILi1EEC1Ei, .Lfunc_end10-_ZN6Kalmar5indexILi1EEC1Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end11:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi, .Lfunc_end11-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC2EPKi ; -- Begin function _ZN6Kalmar5indexILi1EEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC2EPKi,@function
_ZN6Kalmar5indexILi1EEC2EPKi:           ; @_ZN6Kalmar5indexILi1EEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end12:
	.size	_ZN6Kalmar5indexILi1EEC2EPKi, .Lfunc_end12-_ZN6Kalmar5indexILi1EEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC1EPKi ; -- Begin function _ZN6Kalmar5indexILi1EEC1EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC1EPKi,@function
_ZN6Kalmar5indexILi1EEC1EPKi:           ; @_ZN6Kalmar5indexILi1EEC1EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end13:
	.size	_ZN6Kalmar5indexILi1EEC1EPKi, .Lfunc_end13-_ZN6Kalmar5indexILi1EEC1EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end14:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi, .Lfunc_end14-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC2EPi ; -- Begin function _ZN6Kalmar5indexILi1EEC2EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC2EPi,@function
_ZN6Kalmar5indexILi1EEC2EPi:            ; @_ZN6Kalmar5indexILi1EEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end15:
	.size	_ZN6Kalmar5indexILi1EEC2EPi, .Lfunc_end15-_ZN6Kalmar5indexILi1EEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEC1EPi ; -- Begin function _ZN6Kalmar5indexILi1EEC1EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEC1EPi,@function
_ZN6Kalmar5indexILi1EEC1EPi:            ; @_ZN6Kalmar5indexILi1EEC1EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end16:
	.size	_ZN6Kalmar5indexILi1EEC1EPi, .Lfunc_end16-_ZN6Kalmar5indexILi1EEC1EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EEaSEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EEaSEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEaSEi,@function
_ZN6Kalmar12__index_leafILi0EEaSEi:     ; @_ZN6Kalmar12__index_leafILi0EEaSEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end17:
	.size	_ZN6Kalmar12__index_leafILi0EEaSEi, .Lfunc_end17-_ZN6Kalmar12__index_leafILi0EEaSEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 216
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v2, 6, vcc_hi
	s_mov_b32 s4, 0
	s_sub_u32 vcc_lo, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_lo
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end18:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_, .Lfunc_end18-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 128
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end19:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_, .Lfunc_end19-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEaSERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEaSERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEaSERKS1_,@function
_ZN6Kalmar5indexILi1EEaSERKS1_:         ; @_ZN6Kalmar5indexILi1EEaSERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEaSERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end20:
	.size	_ZN6Kalmar5indexILi1EEaSERKS1_, .Lfunc_end20-_ZN6Kalmar5indexILi1EEaSERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj ; -- Begin function _ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
	.p2align	2
	.type	_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj,@function
_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj: ; @_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v0, v[0:1]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end21:
	.size	_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj, .Lfunc_end21-_ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi1EEixEj ; -- Begin function _ZNK6Kalmar5indexILi1EEixEj
	.p2align	2
	.type	_ZNK6Kalmar5indexILi1EEixEj,@function
_ZNK6Kalmar5indexILi1EEixEj:            ; @_ZNK6Kalmar5indexILi1EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end22:
	.size	_ZNK6Kalmar5indexILi1EEixEj, .Lfunc_end22-_ZNK6Kalmar5indexILi1EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EE3getEv ; -- Begin function _ZN6Kalmar12__index_leafILi0EE3getEv
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EE3getEv,@function
_ZN6Kalmar12__index_leafILi0EE3getEv:   ; @_ZN6Kalmar12__index_leafILi0EE3getEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end23:
	.size	_ZN6Kalmar12__index_leafILi0EE3getEv, .Lfunc_end23-_ZN6Kalmar12__index_leafILi0EE3getEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end24:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj, .Lfunc_end24-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEixEj ; -- Begin function _ZN6Kalmar5indexILi1EEixEj
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEixEj,@function
_ZN6Kalmar5indexILi1EEixEj:             ; @_ZN6Kalmar5indexILi1EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end25:
	.size	_ZN6Kalmar5indexILi1EEixEj, .Lfunc_end25-_ZN6Kalmar5indexILi1EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s36, 1
	v_writelane_b32 v35, s37, 2
	v_writelane_b32 v35, s30, 3
	v_writelane_b32 v35, s31, 4
	v_mov_b32_e32 v6, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, v6
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s8, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s8, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v7, s8
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v4, v7, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v7, 32, v32
	v_cmp_ne_u32_e64 s[4:5], v7, v6
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v8, s8
	v_cndmask_b32_e64 v34, v6, v8, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v33, v6, v7, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[33:34], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi1EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi1EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 0
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[4:5], v32, v0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v35, 3
	v_readlane_b32 s5, v35, 4
	v_readlane_b32 s37, v35, 2
	v_readlane_b32 s36, v35, 1
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end26:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_, .Lfunc_end26-_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 456
; NumSgprs: 40
; NumVgprs: 36
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi1EEeqERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi1EEeqERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi1EEeqERKS1_,@function
_ZNK6Kalmar5indexILi1EEeqERKS1_:        ; @_ZNK6Kalmar5indexILi1EEeqERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end27:
	.size	_ZNK6Kalmar5indexILi1EEeqERKS1_, .Lfunc_end27-_ZNK6Kalmar5indexILi1EEeqERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 40
; NumVgprs: 36
; ScratchSize: 168
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi1EEneERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi1EEneERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi1EEneERKS1_,@function
_ZNK6Kalmar5indexILi1EEneERKS1_:        ; @_ZNK6Kalmar5indexILi1EEneERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi1EEeqERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi1EEeqERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_mov_b64 s[6:7], -1
	s_xor_b64 s[4:5], s[4:5], s[6:7]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end28:
	.size	_ZNK6Kalmar5indexILi1EEneERKS1_, .Lfunc_end28-_ZNK6Kalmar5indexILi1EEneERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 40
; NumVgprs: 36
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EEpLEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EEpLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEpLEi,@function
_ZN6Kalmar12__index_leafILi0EEpLEi:     ; @_ZN6Kalmar12__index_leafILi0EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end29:
	.size	_ZN6Kalmar12__index_leafILi0EEpLEi, .Lfunc_end29-_ZN6Kalmar12__index_leafILi0EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end30:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_, .Lfunc_end30-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEpLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEpLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEpLERKS1_,@function
_ZN6Kalmar5indexILi1EEpLERKS1_:         ; @_ZN6Kalmar5indexILi1EEpLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end31:
	.size	_ZN6Kalmar5indexILi1EEpLERKS1_, .Lfunc_end31-_ZN6Kalmar5indexILi1EEpLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EEmIEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EEmIEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEmIEi,@function
_ZN6Kalmar12__index_leafILi0EEmIEi:     ; @_ZN6Kalmar12__index_leafILi0EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end32:
	.size	_ZN6Kalmar12__index_leafILi0EEmIEi, .Lfunc_end32-_ZN6Kalmar12__index_leafILi0EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end33:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_, .Lfunc_end33-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmIERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEmIERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmIERKS1_,@function
_ZN6Kalmar5indexILi1EEmIERKS1_:         ; @_ZN6Kalmar5indexILi1EEmIERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end34:
	.size	_ZN6Kalmar5indexILi1EEmIERKS1_, .Lfunc_end34-_ZN6Kalmar5indexILi1EEmIERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EEmLEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EEmLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEmLEi,@function
_ZN6Kalmar12__index_leafILi0EEmLEi:     ; @_ZN6Kalmar12__index_leafILi0EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end35:
	.size	_ZN6Kalmar12__index_leafILi0EEmLEi, .Lfunc_end35-_ZN6Kalmar12__index_leafILi0EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end36:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_, .Lfunc_end36-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEmLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmLERKS1_,@function
_ZN6Kalmar5indexILi1EEmLERKS1_:         ; @_ZN6Kalmar5indexILi1EEmLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end37:
	.size	_ZN6Kalmar5indexILi1EEmLERKS1_, .Lfunc_end37-_ZN6Kalmar5indexILi1EEmLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EEdVEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EEdVEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EEdVEi,@function
_ZN6Kalmar12__index_leafILi0EEdVEi:     ; @_ZN6Kalmar12__index_leafILi0EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v5, v2
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f800000, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_hi_u32 v6, v5, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_mul_lo_u32 v6, v5, v2
	v_sub_u32_e64 v7, s8, v6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mul_hi_u32 v6, v6, v5
	v_add_u32_e64 v7, v5, v6
	v_sub_u32_e64 v5, v5, v6
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v6, s6, v3
	v_add_u32_e64 v3, v3, v6
	v_xor_b32_e32 v3, v3, v6
	v_mul_hi_u32 v5, v5, v3
	v_mul_lo_u32 v7, v5, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v7
	s_mov_b32 s6, -1
	v_mov_b32_e32 v8, s8
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_sub_u32_e64 v3, v3, v7
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v2, s8
	v_cndmask_b32_e64 v2, v2, v8, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v2, s8
	s_mov_b32 s7, 1
	v_add_u32_e64 v2, v5, s7
	v_cndmask_b32_e64 v2, v2, v5, s[4:5]
	v_add_u32_e64 v3, v5, s6
	v_cmp_eq_u32_e64 s[4:5], v8, s8
	v_cndmask_b32_e64 v2, v2, v3, s[4:5]
	v_xor_b32_e32 v3, v6, v4
	v_xor_b32_e32 v2, v2, v3
	v_sub_u32_e64 v2, v2, v3
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end38:
	.size	_ZN6Kalmar12__index_leafILi0EEdVEi, .Lfunc_end38-_ZN6Kalmar12__index_leafILi0EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 504
; NumSgprs: 37
; NumVgprs: 10
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end39:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_, .Lfunc_end39-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEdVERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EEdVERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEdVERKS1_,@function
_ZN6Kalmar5indexILi1EEdVERKS1_:         ; @_ZN6Kalmar5indexILi1EEdVERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end40:
	.size	_ZN6Kalmar5indexILi1EEdVERKS1_, .Lfunc_end40-_ZN6Kalmar5indexILi1EEdVERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi0EErMEi ; -- Begin function _ZN6Kalmar12__index_leafILi0EErMEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi0EErMEi,@function
_ZN6Kalmar12__index_leafILi0EErMEi:     ; @_ZN6Kalmar12__index_leafILi0EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v4, v2
	v_rcp_iflag_f32_e32 v4, v4
	v_mul_f32_e32 v4, 0x4f800000, v4
	v_cvt_u32_f32_e32 v4, v4
	v_mul_hi_u32 v5, v4, v2
	v_cmp_eq_u32_e64 s[4:5], v5, s8
	v_mul_lo_u32 v5, v4, v2
	v_sub_u32_e64 v6, s8, v5
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mul_hi_u32 v5, v5, v4
	v_add_u32_e64 v6, v4, v5
	v_sub_u32_e64 v4, v4, v5
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, s6, v3
	v_add_u32_e64 v3, v3, v5
	v_xor_b32_e32 v3, v3, v5
	v_mul_hi_u32 v4, v4, v3
	v_mul_lo_u32 v4, v4, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v4
	s_mov_b32 s6, -1
	v_mov_b32_e32 v6, s8
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_sub_u32_e64 v3, v3, v4
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v4, s8
	v_sub_u32_e64 v4, v3, v2
	v_cndmask_b32_e64 v4, v4, v3, s[4:5]
	v_add_u32_e64 v2, v3, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	v_xor_b32_e32 v2, v2, v5
	v_sub_u32_e64 v2, v2, v5
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end41:
	.size	_ZN6Kalmar12__index_leafILi0EErMEi, .Lfunc_end41-_ZN6Kalmar12__index_leafILi0EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 496
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s38, 3
	v_writelane_b32 v37, s30, 4
	v_writelane_b32 v37, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 40, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v8, 48, v34
	v_cmp_ne_u32_e64 s[4:5], v8, s35
	v_mov_b32_e32 v9, s37
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s36
	v_cndmask_b32_e64 v35, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[33:34], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 4
	v_readlane_b32 s5, v37, 5
	v_readlane_b32 s38, v37, 3
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end42:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_, .Lfunc_end42-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 700
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EErMERKS1_ ; -- Begin function _ZN6Kalmar5indexILi1EErMERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EErMERKS1_,@function
_ZN6Kalmar5indexILi1EErMERKS1_:         ; @_ZN6Kalmar5indexILi1EErMERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end43:
	.size	_ZN6Kalmar5indexILi1EErMERKS1_, .Lfunc_end43-_ZN6Kalmar5indexILi1EErMERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s30, 3
	v_writelane_b32 v37, s31, 4
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v3, 32, v10
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v5, 40, v10
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, s35
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v36, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v35, v8, v7, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 3
	v_readlane_b32 s5, v37, 4
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end44:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi, .Lfunc_end44-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEpLEi ; -- Begin function _ZN6Kalmar5indexILi1EEpLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEpLEi,@function
_ZN6Kalmar5indexILi1EEpLEi:             ; @_ZN6Kalmar5indexILi1EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end45:
	.size	_ZN6Kalmar5indexILi1EEpLEi, .Lfunc_end45-_ZN6Kalmar5indexILi1EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s30, 3
	v_writelane_b32 v37, s31, 4
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v3, 32, v10
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v5, 40, v10
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, s35
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v36, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v35, v8, v7, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 3
	v_readlane_b32 s5, v37, 4
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end46:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi, .Lfunc_end46-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmIEi ; -- Begin function _ZN6Kalmar5indexILi1EEmIEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmIEi,@function
_ZN6Kalmar5indexILi1EEmIEi:             ; @_ZN6Kalmar5indexILi1EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end47:
	.size	_ZN6Kalmar5indexILi1EEmIEi, .Lfunc_end47-_ZN6Kalmar5indexILi1EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s30, 3
	v_writelane_b32 v37, s31, 4
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v3, 32, v10
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v5, 40, v10
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, s35
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v36, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v35, v8, v7, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 3
	v_readlane_b32 s5, v37, 4
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end48:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi, .Lfunc_end48-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmLEi ; -- Begin function _ZN6Kalmar5indexILi1EEmLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmLEi,@function
_ZN6Kalmar5indexILi1EEmLEi:             ; @_ZN6Kalmar5indexILi1EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end49:
	.size	_ZN6Kalmar5indexILi1EEmLEi, .Lfunc_end49-_ZN6Kalmar5indexILi1EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s30, 3
	v_writelane_b32 v37, s31, 4
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v3, 32, v10
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v5, 40, v10
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, s35
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v36, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v35, v8, v7, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 3
	v_readlane_b32 s5, v37, 4
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end50:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi, .Lfunc_end50-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEdVEi ; -- Begin function _ZN6Kalmar5indexILi1EEdVEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEdVEi,@function
_ZN6Kalmar5indexILi1EEdVEi:             ; @_ZN6Kalmar5indexILi1EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end51:
	.size	_ZN6Kalmar5indexILi1EEdVEi, .Lfunc_end51-_ZN6Kalmar5indexILi1EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s36, 1
	v_writelane_b32 v37, s37, 2
	v_writelane_b32 v37, s30, 3
	v_writelane_b32 v37, s31, 4
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v3, 32, v10
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v5, 40, v10
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, s35
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v36, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v35, v8, v7, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[35:36], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[35:36], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v35, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEE9__swallowIJNS_12__index_leafILi0EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v37, 3
	v_readlane_b32 s5, v37, 4
	v_readlane_b32 s37, v37, 2
	v_readlane_b32 s36, v37, 1
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v37, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:56 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end52:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi, .Lfunc_end52-_ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 96
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EErMEi ; -- Begin function _ZN6Kalmar5indexILi1EErMEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EErMEi,@function
_ZN6Kalmar5indexILi1EErMEi:             ; @_ZN6Kalmar5indexILi1EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end53:
	.size	_ZN6Kalmar5indexILi1EErMEi, .Lfunc_end53-_ZN6Kalmar5indexILi1EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEppEv ; -- Begin function _ZN6Kalmar5indexILi1EEppEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEppEv,@function
_ZN6Kalmar5indexILi1EEppEv:             ; @_ZN6Kalmar5indexILi1EEppEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end54:
	.size	_ZN6Kalmar5indexILi1EEppEv, .Lfunc_end54-_ZN6Kalmar5indexILi1EEppEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEppEi ; -- Begin function _ZN6Kalmar5indexILi1EEppEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEppEi,@function
_ZN6Kalmar5indexILi1EEppEi:             ; @_ZN6Kalmar5indexILi1EEppEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end55:
	.size	_ZN6Kalmar5indexILi1EEppEi, .Lfunc_end55-_ZN6Kalmar5indexILi1EEppEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 216
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmmEv ; -- Begin function _ZN6Kalmar5indexILi1EEmmEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmmEv,@function
_ZN6Kalmar5indexILi1EEmmEv:             ; @_ZN6Kalmar5indexILi1EEmmEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end56:
	.size	_ZN6Kalmar5indexILi1EEmmEv, .Lfunc_end56-_ZN6Kalmar5indexILi1EEmmEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 144
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EEmmEi ; -- Begin function _ZN6Kalmar5indexILi1EEmmEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EEmmEi,@function
_ZN6Kalmar5indexILi1EEmmEi:             ; @_ZN6Kalmar5indexILi1EEmmEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end57:
	.size	_ZN6Kalmar5indexILi1EEmmEi, .Lfunc_end57-_ZN6Kalmar5indexILi1EEmmEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 40
; NumVgprs: 38
; ScratchSize: 216
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v3, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v33, v2, v3, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi1EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi1EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end58:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_, .Lfunc_end58-_ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16416
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv ; -- Begin function _ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv,@function
_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv: ; @_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi1EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end59:
	.size	_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv, .Lfunc_end59-_ZN6Kalmar5indexILi1EE21__cxxamp_opencl_indexEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16448
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEC2Ei ; -- Begin function _ZN6Kalmar12__index_leafILi1EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEC2Ei,@function
_ZN6Kalmar12__index_leafILi1EEC2Ei:     ; @_ZN6Kalmar12__index_leafILi1EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end60:
	.size	_ZN6Kalmar12__index_leafILi1EEC2Ei, .Lfunc_end60-_ZN6Kalmar12__index_leafILi1EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 204
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s35, 0
	v_writelane_b32 v34, s30, 1
	v_writelane_b32 v34, s31, 2
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v4, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v4, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v3, v2, v3, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v2, v2, v4, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v34, 1
	v_readlane_b32 s5, v34, 2
	v_readlane_b32 s35, v34, 0
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v34, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end61:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev, .Lfunc_end61-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 376
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC2Ev ; -- Begin function _ZN6Kalmar5indexILi2EEC2Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC2Ev,@function
_ZN6Kalmar5indexILi2EEC2Ev:             ; @_ZN6Kalmar5indexILi2EEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end62:
	.size	_ZN6Kalmar5indexILi2EEC2Ev, .Lfunc_end62-_ZN6Kalmar5indexILi2EEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC1Ev ; -- Begin function _ZN6Kalmar5indexILi2EEC1Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC1Ev,@function
_ZN6Kalmar5indexILi2EEC1Ev:             ; @_ZN6Kalmar5indexILi2EEC1Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end63:
	.size	_ZN6Kalmar5indexILi2EEC1Ev, .Lfunc_end63-_ZN6Kalmar5indexILi2EEC1Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar12__index_leafILi1EE3getEv ; -- Begin function _ZNK6Kalmar12__index_leafILi1EE3getEv
	.p2align	2
	.type	_ZNK6Kalmar12__index_leafILi1EE3getEv,@function
_ZNK6Kalmar12__index_leafILi1EE3getEv:  ; @_ZNK6Kalmar12__index_leafILi1EE3getEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end64:
	.size	_ZNK6Kalmar12__index_leafILi1EE3getEv, .Lfunc_end64-_ZNK6Kalmar12__index_leafILi1EE3getEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 24, v11
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v6, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v8, 36, v11
	v_cmp_ne_u32_e64 s[4:5], v8, s8
	v_mov_b32_e32 v9, s7
	v_mov_b32_e32 v10, s9
	v_cndmask_b32_e64 v35, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v34, v9, v8, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dword v[6:7], v2
	flat_store_dword v[34:35], v3
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dword v3, v[6:7]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[34:35]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end65:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_, .Lfunc_end65-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 544
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v37, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v37, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v37, s35, 0
	v_writelane_b32 v37, s30, 1
	v_writelane_b32 v37, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v6, 32, v34
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v36, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v35, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[35:36], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[35:36]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v34, v[0:1]
	flat_load_dwordx2 v[0:1], v[35:36]
	s_mov_b64 s[6:7], 8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2IJiiEEEDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v37, 1
	v_readlane_b32 s5, v37, 2
	v_readlane_b32 s35, v37, 0
	buffer_load_dword v36, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v37, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v37, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end66:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_, .Lfunc_end66-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 560
; NumSgprs: 38
; NumVgprs: 38
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC2ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEC2ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC2ERKS1_,@function
_ZN6Kalmar5indexILi2EEC2ERKS1_:         ; @_ZN6Kalmar5indexILi2EEC2ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2ERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end67:
	.size	_ZN6Kalmar5indexILi2EEC2ERKS1_, .Lfunc_end67-_ZN6Kalmar5indexILi2EEC2ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 38
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC1ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEC1ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC1ERKS1_,@function
_ZN6Kalmar5indexILi2EEC1ERKS1_:         ; @_ZN6Kalmar5indexILi2EEC1ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC2ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC2ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end68:
	.size	_ZN6Kalmar5indexILi2EEC1ERKS1_, .Lfunc_end68-_ZN6Kalmar5indexILi2EEC1ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 38
; ScratchSize: 184
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v35, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v34, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[34:35], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v3, v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[34:35]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end69:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei, .Lfunc_end69-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 484
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC2Ei ; -- Begin function _ZN6Kalmar5indexILi2EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC2Ei,@function
_ZN6Kalmar5indexILi2EEC2Ei:             ; @_ZN6Kalmar5indexILi2EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end70:
	.size	_ZN6Kalmar5indexILi2EEC2Ei, .Lfunc_end70-_ZN6Kalmar5indexILi2EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC1Ei ; -- Begin function _ZN6Kalmar5indexILi2EEC1Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC1Ei,@function
_ZN6Kalmar5indexILi2EEC1Ei:             ; @_ZN6Kalmar5indexILi2EEC1Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end71:
	.size	_ZN6Kalmar5indexILi2EEC1Ei, .Lfunc_end71-_ZN6Kalmar5indexILi2EEC1Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:4
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end72:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi, .Lfunc_end72-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 504
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC2EPKi ; -- Begin function _ZN6Kalmar5indexILi2EEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC2EPKi,@function
_ZN6Kalmar5indexILi2EEC2EPKi:           ; @_ZN6Kalmar5indexILi2EEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end73:
	.size	_ZN6Kalmar5indexILi2EEC2EPKi, .Lfunc_end73-_ZN6Kalmar5indexILi2EEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC1EPKi ; -- Begin function _ZN6Kalmar5indexILi2EEC1EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC1EPKi,@function
_ZN6Kalmar5indexILi2EEC1EPKi:           ; @_ZN6Kalmar5indexILi2EEC1EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end74:
	.size	_ZN6Kalmar5indexILi2EEC1EPKi, .Lfunc_end74-_ZN6Kalmar5indexILi2EEC1EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:4
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end75:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi, .Lfunc_end75-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 504
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC2EPi ; -- Begin function _ZN6Kalmar5indexILi2EEC2EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC2EPi,@function
_ZN6Kalmar5indexILi2EEC2EPi:            ; @_ZN6Kalmar5indexILi2EEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end76:
	.size	_ZN6Kalmar5indexILi2EEC2EPi, .Lfunc_end76-_ZN6Kalmar5indexILi2EEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEC1EPi ; -- Begin function _ZN6Kalmar5indexILi2EEC1EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEC1EPi,@function
_ZN6Kalmar5indexILi2EEC1EPi:            ; @_ZN6Kalmar5indexILi2EEC1EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end77:
	.size	_ZN6Kalmar5indexILi2EEC1EPi, .Lfunc_end77-_ZN6Kalmar5indexILi2EEC1EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEaSEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EEaSEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEaSEi,@function
_ZN6Kalmar12__index_leafILi1EEaSEi:     ; @_ZN6Kalmar12__index_leafILi1EEaSEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end78:
	.size	_ZN6Kalmar12__index_leafILi1EEaSEi, .Lfunc_end78-_ZN6Kalmar12__index_leafILi1EEaSEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 216
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v2, 6, vcc_hi
	s_mov_b32 s4, 0
	s_sub_u32 vcc_lo, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_lo
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s9
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end79:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_, .Lfunc_end79-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 144
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end80:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_, .Lfunc_end80-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEaSERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEaSERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEaSERKS1_,@function
_ZN6Kalmar5indexILi2EEaSERKS1_:         ; @_ZN6Kalmar5indexILi2EEaSERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEaSERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end81:
	.size	_ZN6Kalmar5indexILi2EEaSERKS1_, .Lfunc_end81-_ZN6Kalmar5indexILi2EEaSERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj ; -- Begin function _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
	.p2align	2
	.type	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj,@function
_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj: ; @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v0, v[0:1]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end82:
	.size	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj, .Lfunc_end82-_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi2EEixEj ; -- Begin function _ZNK6Kalmar5indexILi2EEixEj
	.p2align	2
	.type	_ZNK6Kalmar5indexILi2EEixEj,@function
_ZNK6Kalmar5indexILi2EEixEj:            ; @_ZNK6Kalmar5indexILi2EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end83:
	.size	_ZNK6Kalmar5indexILi2EEixEj, .Lfunc_end83-_ZNK6Kalmar5indexILi2EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end84:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj, .Lfunc_end84-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEixEj ; -- Begin function _ZN6Kalmar5indexILi2EEixEj
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEixEj,@function
_ZN6Kalmar5indexILi2EEixEj:             ; @_ZN6Kalmar5indexILi2EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end85:
	.size	_ZN6Kalmar5indexILi2EEixEj, .Lfunc_end85-_ZN6Kalmar5indexILi2EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s36, 1
	v_writelane_b32 v35, s37, 2
	v_writelane_b32 v35, s30, 3
	v_writelane_b32 v35, s31, 4
	v_mov_b32_e32 v6, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, v6
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s8, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s8, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v7, s8
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v4, v7, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v7, 32, v32
	v_cmp_ne_u32_e64 s[4:5], v7, v6
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v8, s8
	v_cndmask_b32_e64 v34, v6, v8, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v33, v6, v7, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[33:34], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi2EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi2EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 0
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[4:5], v32, v0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v35, 3
	v_readlane_b32 s5, v35, 4
	v_readlane_b32 s37, v35, 2
	v_readlane_b32 s36, v35, 1
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end86:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_, .Lfunc_end86-_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 456
; NumSgprs: 40
; NumVgprs: 36
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v38, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v38, s35, 0
	v_writelane_b32 v38, s36, 1
	v_writelane_b32 v38, s37, 2
	v_writelane_b32 v38, s30, 3
	v_writelane_b32 v38, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v7, 6, vcc_hi
	v_add_u32_e32 v4, 32, v7
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v35, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v34, v5, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v33, 6, vcc_hi
	v_add_u32_e32 v4, 40, v33
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v37, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v36, v5, v4, s[4:5]
	flat_store_dwordx2 v[34:35], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi2EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi2EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v32, 1
	v_mov_b32_e32 v2, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v33, v0
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, v32
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[6:7], v33, v0
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[36:37], exec
	s_and_b64 s[6:7], s[36:37], s[6:7]
	s_mov_b64 exec, s[6:7]
	; mask branch BB87_2
	s_cbranch_execz BB87_2
BB87_1:                                 ; %land.rhs
	flat_load_dwordx2 v[0:1], v[34:35]
	flat_load_dwordx2 v[2:3], v[36:37]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_and_b64 s[4:5], s[4:5], exec
BB87_2:                                 ; %land.end
	s_or_b64 exec, exec, s[36:37]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v38, 3
	v_readlane_b32 s5, v38, 4
	v_readlane_b32 s37, v38, 2
	v_readlane_b32 s36, v38, 1
	v_readlane_b32 s35, v38, 0
	buffer_load_dword v37, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v38, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end87:
	.size	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_, .Lfunc_end87-_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi2EEeqERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi2EEeqERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi2EEeqERKS1_,@function
_ZNK6Kalmar5indexILi2EEeqERKS1_:        ; @_ZNK6Kalmar5indexILi2EEeqERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end88:
	.size	_ZNK6Kalmar5indexILi2EEeqERKS1_, .Lfunc_end88-_ZNK6Kalmar5indexILi2EEeqERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 232
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi2EEneERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi2EEneERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi2EEneERKS1_,@function
_ZNK6Kalmar5indexILi2EEneERKS1_:        ; @_ZNK6Kalmar5indexILi2EEneERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi2EEeqERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi2EEeqERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_mov_b64 s[6:7], -1
	s_xor_b64 s[4:5], s[4:5], s[6:7]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end89:
	.size	_ZNK6Kalmar5indexILi2EEneERKS1_, .Lfunc_end89-_ZNK6Kalmar5indexILi2EEneERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEpLEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EEpLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEpLEi,@function
_ZN6Kalmar12__index_leafILi1EEpLEi:     ; @_ZN6Kalmar12__index_leafILi1EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end90:
	.size	_ZN6Kalmar12__index_leafILi1EEpLEi, .Lfunc_end90-_ZN6Kalmar12__index_leafILi1EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end91:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_, .Lfunc_end91-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEpLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEpLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEpLERKS1_,@function
_ZN6Kalmar5indexILi2EEpLERKS1_:         ; @_ZN6Kalmar5indexILi2EEpLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end92:
	.size	_ZN6Kalmar5indexILi2EEpLERKS1_, .Lfunc_end92-_ZN6Kalmar5indexILi2EEpLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEmIEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EEmIEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEmIEi,@function
_ZN6Kalmar12__index_leafILi1EEmIEi:     ; @_ZN6Kalmar12__index_leafILi1EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end93:
	.size	_ZN6Kalmar12__index_leafILi1EEmIEi, .Lfunc_end93-_ZN6Kalmar12__index_leafILi1EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end94:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_, .Lfunc_end94-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmIERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEmIERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmIERKS1_,@function
_ZN6Kalmar5indexILi2EEmIERKS1_:         ; @_ZN6Kalmar5indexILi2EEmIERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end95:
	.size	_ZN6Kalmar5indexILi2EEmIERKS1_, .Lfunc_end95-_ZN6Kalmar5indexILi2EEmIERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEmLEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EEmLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEmLEi,@function
_ZN6Kalmar12__index_leafILi1EEmLEi:     ; @_ZN6Kalmar12__index_leafILi1EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end96:
	.size	_ZN6Kalmar12__index_leafILi1EEmLEi, .Lfunc_end96-_ZN6Kalmar12__index_leafILi1EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end97:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_, .Lfunc_end97-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEmLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmLERKS1_,@function
_ZN6Kalmar5indexILi2EEmLERKS1_:         ; @_ZN6Kalmar5indexILi2EEmLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end98:
	.size	_ZN6Kalmar5indexILi2EEmLERKS1_, .Lfunc_end98-_ZN6Kalmar5indexILi2EEmLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EEdVEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EEdVEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EEdVEi,@function
_ZN6Kalmar12__index_leafILi1EEdVEi:     ; @_ZN6Kalmar12__index_leafILi1EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v5, v2
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f800000, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_hi_u32 v6, v5, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_mul_lo_u32 v6, v5, v2
	v_sub_u32_e64 v7, s8, v6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mul_hi_u32 v6, v6, v5
	v_add_u32_e64 v7, v5, v6
	v_sub_u32_e64 v5, v5, v6
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v6, s6, v3
	v_add_u32_e64 v3, v3, v6
	v_xor_b32_e32 v3, v3, v6
	v_mul_hi_u32 v5, v5, v3
	v_mul_lo_u32 v7, v5, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v7
	s_mov_b32 s6, -1
	v_mov_b32_e32 v8, s8
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_sub_u32_e64 v3, v3, v7
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v2, s8
	v_cndmask_b32_e64 v2, v2, v8, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v2, s8
	s_mov_b32 s7, 1
	v_add_u32_e64 v2, v5, s7
	v_cndmask_b32_e64 v2, v2, v5, s[4:5]
	v_add_u32_e64 v3, v5, s6
	v_cmp_eq_u32_e64 s[4:5], v8, s8
	v_cndmask_b32_e64 v2, v2, v3, s[4:5]
	v_xor_b32_e32 v3, v6, v4
	v_xor_b32_e32 v2, v2, v3
	v_sub_u32_e64 v2, v2, v3
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end99:
	.size	_ZN6Kalmar12__index_leafILi1EEdVEi, .Lfunc_end99-_ZN6Kalmar12__index_leafILi1EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 504
; NumSgprs: 37
; NumVgprs: 10
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end100:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_, .Lfunc_end100-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEdVERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EEdVERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEdVERKS1_,@function
_ZN6Kalmar5indexILi2EEdVERKS1_:         ; @_ZN6Kalmar5indexILi2EEdVERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end101:
	.size	_ZN6Kalmar5indexILi2EEdVERKS1_, .Lfunc_end101-_ZN6Kalmar5indexILi2EEdVERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi1EErMEi ; -- Begin function _ZN6Kalmar12__index_leafILi1EErMEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi1EErMEi,@function
_ZN6Kalmar12__index_leafILi1EErMEi:     ; @_ZN6Kalmar12__index_leafILi1EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v4, v2
	v_rcp_iflag_f32_e32 v4, v4
	v_mul_f32_e32 v4, 0x4f800000, v4
	v_cvt_u32_f32_e32 v4, v4
	v_mul_hi_u32 v5, v4, v2
	v_cmp_eq_u32_e64 s[4:5], v5, s8
	v_mul_lo_u32 v5, v4, v2
	v_sub_u32_e64 v6, s8, v5
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mul_hi_u32 v5, v5, v4
	v_add_u32_e64 v6, v4, v5
	v_sub_u32_e64 v4, v4, v5
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, s6, v3
	v_add_u32_e64 v3, v3, v5
	v_xor_b32_e32 v3, v3, v5
	v_mul_hi_u32 v4, v4, v3
	v_mul_lo_u32 v4, v4, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v4
	s_mov_b32 s6, -1
	v_mov_b32_e32 v6, s8
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_sub_u32_e64 v3, v3, v4
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v4, s8
	v_sub_u32_e64 v4, v3, v2
	v_cndmask_b32_e64 v4, v4, v3, s[4:5]
	v_add_u32_e64 v2, v3, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	v_xor_b32_e32 v2, v2, v5
	v_sub_u32_e64 v2, v2, v5
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end102:
	.size	_ZN6Kalmar12__index_leafILi1EErMEi, .Lfunc_end102-_ZN6Kalmar12__index_leafILi1EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 496
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v43, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v43, s35, 0
	v_writelane_b32 v43, s36, 1
	v_writelane_b32 v43, s37, 2
	v_writelane_b32 v43, s38, 3
	v_writelane_b32 v43, s30, 4
	v_writelane_b32 v43, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 56, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v43, 4
	v_readlane_b32 s5, v43, 5
	v_readlane_b32 s38, v43, 3
	v_readlane_b32 s37, v43, 2
	v_readlane_b32 s36, v43, 1
	v_readlane_b32 s35, v43, 0
	buffer_load_dword v42, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v43, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v43, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end103:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_, .Lfunc_end103-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1092
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EErMERKS1_ ; -- Begin function _ZN6Kalmar5indexILi2EErMERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EErMERKS1_,@function
_ZN6Kalmar5indexILi2EErMERKS1_:         ; @_ZN6Kalmar5indexILi2EErMERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end104:
	.size	_ZN6Kalmar5indexILi2EErMERKS1_, .Lfunc_end104-_ZN6Kalmar5indexILi2EErMERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 44
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s38, 3
	v_writelane_b32 v42, s30, 4
	v_writelane_b32 v42, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 56, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v42, 4
	v_readlane_b32 s5, v42, 5
	v_readlane_b32 s38, v42, 3
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end105:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi, .Lfunc_end105-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 944
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEpLEi ; -- Begin function _ZN6Kalmar5indexILi2EEpLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEpLEi,@function
_ZN6Kalmar5indexILi2EEpLEi:             ; @_ZN6Kalmar5indexILi2EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end106:
	.size	_ZN6Kalmar5indexILi2EEpLEi, .Lfunc_end106-_ZN6Kalmar5indexILi2EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s38, 3
	v_writelane_b32 v42, s30, 4
	v_writelane_b32 v42, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 56, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v42, 4
	v_readlane_b32 s5, v42, 5
	v_readlane_b32 s38, v42, 3
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end107:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi, .Lfunc_end107-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 944
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmIEi ; -- Begin function _ZN6Kalmar5indexILi2EEmIEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmIEi,@function
_ZN6Kalmar5indexILi2EEmIEi:             ; @_ZN6Kalmar5indexILi2EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end108:
	.size	_ZN6Kalmar5indexILi2EEmIEi, .Lfunc_end108-_ZN6Kalmar5indexILi2EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s38, 3
	v_writelane_b32 v42, s30, 4
	v_writelane_b32 v42, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 56, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v42, 4
	v_readlane_b32 s5, v42, 5
	v_readlane_b32 s38, v42, 3
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end109:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi, .Lfunc_end109-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 944
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmLEi ; -- Begin function _ZN6Kalmar5indexILi2EEmLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmLEi,@function
_ZN6Kalmar5indexILi2EEmLEi:             ; @_ZN6Kalmar5indexILi2EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end110:
	.size	_ZN6Kalmar5indexILi2EEmLEi, .Lfunc_end110-_ZN6Kalmar5indexILi2EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s38, 3
	v_writelane_b32 v42, s30, 4
	v_writelane_b32 v42, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 56, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v42, 4
	v_readlane_b32 s5, v42, 5
	v_readlane_b32 s38, v42, 3
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end111:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi, .Lfunc_end111-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 944
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEdVEi ; -- Begin function _ZN6Kalmar5indexILi2EEdVEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEdVEi,@function
_ZN6Kalmar5indexILi2EEdVEi:             ; @_ZN6Kalmar5indexILi2EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end112:
	.size	_ZN6Kalmar5indexILi2EEdVEi, .Lfunc_end112-_ZN6Kalmar5indexILi2EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s38, 3
	v_writelane_b32 v42, s30, 4
	v_writelane_b32 v42, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 56, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v42, 4
	v_readlane_b32 s5, v42, 5
	v_readlane_b32 s38, v42, 3
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end113:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi, .Lfunc_end113-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 944
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 128
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EErMEi ; -- Begin function _ZN6Kalmar5indexILi2EErMEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EErMEi,@function
_ZN6Kalmar5indexILi2EErMEi:             ; @_ZN6Kalmar5indexILi2EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end114:
	.size	_ZN6Kalmar5indexILi2EErMEi, .Lfunc_end114-_ZN6Kalmar5indexILi2EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEppEv ; -- Begin function _ZN6Kalmar5indexILi2EEppEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEppEv,@function
_ZN6Kalmar5indexILi2EEppEv:             ; @_ZN6Kalmar5indexILi2EEppEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end115:
	.size	_ZN6Kalmar5indexILi2EEppEv, .Lfunc_end115-_ZN6Kalmar5indexILi2EEppEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEppEi ; -- Begin function _ZN6Kalmar5indexILi2EEppEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEppEi,@function
_ZN6Kalmar5indexILi2EEppEi:             ; @_ZN6Kalmar5indexILi2EEppEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end116:
	.size	_ZN6Kalmar5indexILi2EEppEi, .Lfunc_end116-_ZN6Kalmar5indexILi2EEppEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 232
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmmEv ; -- Begin function _ZN6Kalmar5indexILi2EEmmEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmmEv,@function
_ZN6Kalmar5indexILi2EEmmEv:             ; @_ZN6Kalmar5indexILi2EEmmEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end117:
	.size	_ZN6Kalmar5indexILi2EEmmEv, .Lfunc_end117-_ZN6Kalmar5indexILi2EEmmEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 176
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EEmmEi ; -- Begin function _ZN6Kalmar5indexILi2EEmmEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EEmmEi,@function
_ZN6Kalmar5indexILi2EEmmEi:             ; @_ZN6Kalmar5indexILi2EEmmEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end118:
	.size	_ZN6Kalmar5indexILi2EEmmEi, .Lfunc_end118-_ZN6Kalmar5indexILi2EEmmEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 41
; NumVgprs: 43
; ScratchSize: 232
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v3, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v33, v2, v3, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end119:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_, .Lfunc_end119-_ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16416
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s30, 1
	v_writelane_b32 v35, s31, 2
	v_mov_b32_e32 v2, 0
	s_sub_u32 s35, s34, s33
	v_lshrrev_b32_e64 v32, 6, s35
	v_add_u32_e32 v3, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v33, v2, v3, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi2EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi2EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi2EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 1
	v_readlane_b32 s5, v35, 2
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end120:
	.size	_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_, .Lfunc_end120-_ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 424
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16448
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv ; -- Begin function _ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv,@function
_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv: ; @_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi2ENS_5indexILi2EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end121:
	.size	_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv, .Lfunc_end121-_ZN6Kalmar5indexILi2EE21__cxxamp_opencl_indexEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16480
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEC2Ei ; -- Begin function _ZN6Kalmar12__index_leafILi2EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEC2Ei,@function
_ZN6Kalmar12__index_leafILi2EEC2Ei:     ; @_ZN6Kalmar12__index_leafILi2EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end122:
	.size	_ZN6Kalmar12__index_leafILi2EEC2Ei, .Lfunc_end122-_ZN6Kalmar12__index_leafILi2EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 204
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s35, 0
	v_writelane_b32 v34, s30, 1
	v_writelane_b32 v34, s31, 2
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v4, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v4, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v3, v2, v3, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v2, v2, v4, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v34, 1
	v_readlane_b32 s5, v34, 2
	v_readlane_b32 s35, v34, 0
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v34, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end123:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev, .Lfunc_end123-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 448
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC2Ev ; -- Begin function _ZN6Kalmar5indexILi3EEC2Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC2Ev,@function
_ZN6Kalmar5indexILi3EEC2Ev:             ; @_ZN6Kalmar5indexILi3EEC2Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end124:
	.size	_ZN6Kalmar5indexILi3EEC2Ev, .Lfunc_end124-_ZN6Kalmar5indexILi3EEC2Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC1Ev ; -- Begin function _ZN6Kalmar5indexILi3EEC1Ev
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC1Ev,@function
_ZN6Kalmar5indexILi3EEC1Ev:             ; @_ZN6Kalmar5indexILi3EEC1Ev
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC2Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC2Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end125:
	.size	_ZN6Kalmar5indexILi3EEC1Ev, .Lfunc_end125-_ZN6Kalmar5indexILi3EEC1Ev
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar12__index_leafILi2EE3getEv ; -- Begin function _ZNK6Kalmar12__index_leafILi2EE3getEv
	.p2align	2
	.type	_ZNK6Kalmar12__index_leafILi2EE3getEv,@function
_ZNK6Kalmar12__index_leafILi2EE3getEv:  ; @_ZNK6Kalmar12__index_leafILi2EE3getEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end126:
	.size	_ZNK6Kalmar12__index_leafILi2EE3getEv, .Lfunc_end126-_ZNK6Kalmar12__index_leafILi2EE3getEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v38, off, s[0:3], s32 offset:52 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v38, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v38, s35, 0
	v_writelane_b32 v38, s30, 1
	v_writelane_b32 v38, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 40, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 44, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v35, v10, v11, s[4:5]
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v34, v10, v9, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 48, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v37, v10, v11, s[4:5]
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v36, v10, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dword v[7:8], v2
	flat_store_dword v[34:35], v3
	flat_store_dword v[36:37], v4
	flat_load_dwordx2 v[32:33], v[5:6]
	flat_load_dword v3, v[7:8]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[34:35]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v38, 1
	v_readlane_b32 s5, v38, 2
	v_readlane_b32 s35, v38, 0
	buffer_load_dword v37, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v38, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v38, off, s[0:3], s32 offset:52 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end127:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_, .Lfunc_end127-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 716
; NumSgprs: 38
; NumVgprs: 39
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v38, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v38, s35, 0
	v_writelane_b32 v38, s30, 1
	v_writelane_b32 v38, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v35, 6, vcc_hi
	v_add_u32_e32 v6, 40, v35
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v37, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v36, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[36:37]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v34, v[0:1]
	flat_load_dwordx2 v[0:1], v[36:37]
	s_mov_b64 s[6:7], 8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v35, v[0:1]
	flat_load_dwordx2 v[0:1], v[36:37]
	s_mov_b64 s[6:7], 16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v4, v[0:1]
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2IJiiiEEEDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v38, 1
	v_readlane_b32 s5, v38, 2
	v_readlane_b32 s35, v38, 0
	buffer_load_dword v37, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v38, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end128:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_, .Lfunc_end128-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 668
; NumSgprs: 38
; NumVgprs: 39
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC2ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEC2ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC2ERKS1_,@function
_ZN6Kalmar5indexILi3EEC2ERKS1_:         ; @_ZN6Kalmar5indexILi3EEC2ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2ERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end129:
	.size	_ZN6Kalmar5indexILi3EEC2ERKS1_, .Lfunc_end129-_ZN6Kalmar5indexILi3EEC2ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 39
; ScratchSize: 184
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC1ERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEC1ERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC1ERKS1_,@function
_ZN6Kalmar5indexILi3EEC1ERKS1_:         ; @_ZN6Kalmar5indexILi3EEC1ERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC2ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC2ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end130:
	.size	_ZN6Kalmar5indexILi3EEC1ERKS1_, .Lfunc_end130-_ZN6Kalmar5indexILi3EEC1ERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 39
; ScratchSize: 216
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v35, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v34, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[34:35], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v3, v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[34:35]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[34:35]
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end131:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei, .Lfunc_end131-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 564
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC2Ei ; -- Begin function _ZN6Kalmar5indexILi3EEC2Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC2Ei,@function
_ZN6Kalmar5indexILi3EEC2Ei:             ; @_ZN6Kalmar5indexILi3EEC2Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end132:
	.size	_ZN6Kalmar5indexILi3EEC2Ei, .Lfunc_end132-_ZN6Kalmar5indexILi3EEC2Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC1Ei ; -- Begin function _ZN6Kalmar5indexILi3EEC1Ei
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC1Ei,@function
_ZN6Kalmar5indexILi3EEC1Ei:             ; @_ZN6Kalmar5indexILi3EEC1Ei
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end133:
	.size	_ZN6Kalmar5indexILi3EEC1Ei, .Lfunc_end133-_ZN6Kalmar5indexILi3EEC1Ei
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:4
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:8
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end134:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi, .Lfunc_end134-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 596
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC2EPKi ; -- Begin function _ZN6Kalmar5indexILi3EEC2EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC2EPKi,@function
_ZN6Kalmar5indexILi3EEC2EPKi:           ; @_ZN6Kalmar5indexILi3EEC2EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end135:
	.size	_ZN6Kalmar5indexILi3EEC2EPKi, .Lfunc_end135-_ZN6Kalmar5indexILi3EEC2EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC1EPKi ; -- Begin function _ZN6Kalmar5indexILi3EEC1EPKi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC1EPKi,@function
_ZN6Kalmar5indexILi3EEC1EPKi:           ; @_ZN6Kalmar5indexILi3EEC1EPKi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC2EPKi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC2EPKi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end136:
	.size	_ZN6Kalmar5indexILi3EEC1EPKi, .Lfunc_end136-_ZN6Kalmar5indexILi3EEC1EPKi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:4
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dwordx2 v[2:3], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[2:3] offset:8
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEC2Ei@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end137:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi, .Lfunc_end137-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 596
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC2EPi ; -- Begin function _ZN6Kalmar5indexILi3EEC2EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC2EPi,@function
_ZN6Kalmar5indexILi3EEC2EPi:            ; @_ZN6Kalmar5indexILi3EEC2EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end138:
	.size	_ZN6Kalmar5indexILi3EEC2EPi, .Lfunc_end138-_ZN6Kalmar5indexILi3EEC2EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 104
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEC1EPi ; -- Begin function _ZN6Kalmar5indexILi3EEC1EPi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEC1EPi,@function
_ZN6Kalmar5indexILi3EEC1EPi:            ; @_ZN6Kalmar5indexILi3EEC1EPi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC2EPi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC2EPi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end139:
	.size	_ZN6Kalmar5indexILi3EEC1EPi, .Lfunc_end139-_ZN6Kalmar5indexILi3EEC1EPi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEaSEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EEaSEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEaSEi,@function
_ZN6Kalmar12__index_leafILi2EEaSEi:     ; @_ZN6Kalmar12__index_leafILi2EEaSEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end140:
	.size	_ZN6Kalmar12__index_leafILi2EEaSEi, .Lfunc_end140-_ZN6Kalmar12__index_leafILi2EEaSEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 216
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xa00
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v2, 6, vcc_hi
	s_mov_b32 s4, 0
	s_sub_u32 vcc_lo, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_lo
	v_add_u32_e32 v2, 32, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_sub_u32 s32, s32, 0xa00
	s_mov_b32 s34, s9
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end141:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_, .Lfunc_end141-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 160
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 40
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEaSEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEaSEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end142:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_, .Lfunc_end142-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEaSERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEaSERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEaSERKS1_,@function
_ZN6Kalmar5indexILi3EEaSERKS1_:         ; @_ZN6Kalmar5indexILi3EEaSERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEaSERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end143:
	.size	_ZN6Kalmar5indexILi3EEaSERKS1_, .Lfunc_end143-_ZN6Kalmar5indexILi3EEaSERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj ; -- Begin function _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
	.p2align	2
	.type	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj,@function
_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj: ; @_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v0, v[0:1]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end144:
	.size	_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj, .Lfunc_end144-_ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi3EEixEj ; -- Begin function _ZNK6Kalmar5indexILi3EEixEj
	.p2align	2
	.type	_ZNK6Kalmar5indexILi3EEixEj,@function
_ZNK6Kalmar5indexILi3EEixEj:            ; @_ZNK6Kalmar5indexILi3EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 8, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:20 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end145:
	.size	_ZNK6Kalmar5indexILi3EEixEj, .Lfunc_end145-_ZNK6Kalmar5indexILi3EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 0
	v_mov_b32_e32 v3, 0
	s_mov_b32 s4, 3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end146:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj, .Lfunc_end146-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEixEj ; -- Begin function _ZN6Kalmar5indexILi3EEixEj
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEixEj,@function
_ZN6Kalmar5indexILi3EEixEj:             ; @_ZN6Kalmar5indexILi3EEixEj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v3, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:28 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end147:
	.size	_ZN6Kalmar5indexILi3EEixEj, .Lfunc_end147-_ZN6Kalmar5indexILi3EEixEj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 320
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s36, 1
	v_writelane_b32 v35, s37, 2
	v_writelane_b32 v35, s30, 3
	v_writelane_b32 v35, s31, 4
	v_mov_b32_e32 v6, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, v6
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s8, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s8, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v7, s8
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v4, v7, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v7, 32, v32
	v_cmp_ne_u32_e64 s[4:5], v7, v6
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v8, s8
	v_cndmask_b32_e64 v34, v6, v8, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v33, v6, v7, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[33:34], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 0
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[4:5], v32, v0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v35, 3
	v_readlane_b32 s5, v35, 4
	v_readlane_b32 s37, v35, 2
	v_readlane_b32 s36, v35, 1
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end148:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_, .Lfunc_end148-_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 456
; NumSgprs: 40
; NumVgprs: 36
; ScratchSize: 136
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v38, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v38, s35, 0
	v_writelane_b32 v38, s36, 1
	v_writelane_b32 v38, s37, 2
	v_writelane_b32 v38, s30, 3
	v_writelane_b32 v38, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v7, 6, vcc_hi
	v_add_u32_e32 v4, 32, v7
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v35, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v34, v5, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v33, 6, vcc_hi
	v_add_u32_e32 v4, 40, v33
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v37, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v36, v5, v4, s[4:5]
	flat_store_dwordx2 v[34:35], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v32, 1
	v_mov_b32_e32 v2, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v33, v0
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, v32
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[6:7], v33, v0
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[36:37], exec
	s_and_b64 s[6:7], s[36:37], s[6:7]
	s_mov_b64 exec, s[6:7]
	; mask branch BB149_2
	s_cbranch_execz BB149_2
BB149_1:                                ; %land.rhs
	flat_load_dwordx2 v[0:1], v[34:35]
	flat_load_dwordx2 v[2:3], v[36:37]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_and_b64 s[4:5], s[4:5], exec
BB149_2:                                ; %land.end
	s_or_b64 exec, exec, s[36:37]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v38, 3
	v_readlane_b32 s5, v38, 4
	v_readlane_b32 s37, v38, 2
	v_readlane_b32 s36, v38, 1
	v_readlane_b32 s35, v38, 0
	buffer_load_dword v37, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v38, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end149:
	.size	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_, .Lfunc_end149-_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_ ; -- Begin function _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_,@function
_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_: ; @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v38, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v38, s35, 0
	v_writelane_b32 v38, s36, 1
	v_writelane_b32 v38, s37, 2
	v_writelane_b32 v38, s30, 3
	v_writelane_b32 v38, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v7, 6, vcc_hi
	v_add_u32_e32 v4, 32, v7
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v35, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v34, v5, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v33, 6, vcc_hi
	v_add_u32_e32 v4, 40, v33
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v37, v5, v6, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v36, v5, v4, s[4:5]
	flat_store_dwordx2 v[34:35], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v32, 2
	v_mov_b32_e32 v2, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v33, v0
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, v32
	s_swappc_b64 s[30:31], s[36:37]
	v_cmp_eq_u32_e64 s[6:7], v33, v0
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[36:37], exec
	s_and_b64 s[6:7], s[36:37], s[6:7]
	s_mov_b64 exec, s[6:7]
	; mask branch BB150_2
	s_cbranch_execz BB150_2
BB150_1:                                ; %land.rhs
	flat_load_dwordx2 v[0:1], v[34:35]
	flat_load_dwordx2 v[2:3], v[36:37]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_and_b64 s[4:5], s[4:5], exec
BB150_2:                                ; %land.end
	s_or_b64 exec, exec, s[36:37]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v38, 3
	v_readlane_b32 s5, v38, 4
	v_readlane_b32 s37, v38, 2
	v_readlane_b32 s36, v38, 1
	v_readlane_b32 s35, v38, 0
	buffer_load_dword v37, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v38, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v38, off, s[0:3], s32 offset:48 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end150:
	.size	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_, .Lfunc_end150-_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 632
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi3EEeqERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi3EEeqERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi3EEeqERKS1_,@function
_ZNK6Kalmar5indexILi3EEeqERKS1_:        ; @_ZNK6Kalmar5indexILi3EEeqERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE5equalERKS2_S5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end151:
	.size	_ZNK6Kalmar5indexILi3EEeqERKS1_, .Lfunc_end151-_ZNK6Kalmar5indexILi3EEeqERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 296
; MemoryBound: 0
	.text
	.weak	_ZNK6Kalmar5indexILi3EEneERKS1_ ; -- Begin function _ZNK6Kalmar5indexILi3EEneERKS1_
	.p2align	2
	.type	_ZNK6Kalmar5indexILi3EEneERKS1_,@function
_ZNK6Kalmar5indexILi3EEneERKS1_:        ; @_ZNK6Kalmar5indexILi3EEneERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar5indexILi3EEeqERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar5indexILi3EEeqERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_and_b32_e64 v0, 1, v0
	v_cmp_eq_u32_e64 s[4:5], v0, 1
	s_mov_b64 s[6:7], -1
	s_xor_b64 s[4:5], s[4:5], s[6:7]
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end152:
	.size	_ZNK6Kalmar5indexILi3EEneERKS1_, .Lfunc_end152-_ZNK6Kalmar5indexILi3EEneERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 360
; NumSgprs: 40
; NumVgprs: 39
; ScratchSize: 328
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEpLEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EEpLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEpLEi,@function
_ZN6Kalmar12__index_leafILi2EEpLEi:     ; @_ZN6Kalmar12__index_leafILi2EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end153:
	.size	_ZN6Kalmar12__index_leafILi2EEpLEi, .Lfunc_end153-_ZN6Kalmar12__index_leafILi2EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end154:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_, .Lfunc_end154-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEpLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEpLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEpLERKS1_,@function
_ZN6Kalmar5indexILi3EEpLERKS1_:         ; @_ZN6Kalmar5indexILi3EEpLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end155:
	.size	_ZN6Kalmar5indexILi3EEpLERKS1_, .Lfunc_end155-_ZN6Kalmar5indexILi3EEpLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEmIEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EEmIEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEmIEi,@function
_ZN6Kalmar12__index_leafILi2EEmIEi:     ; @_ZN6Kalmar12__index_leafILi2EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_sub_u32_e64 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end156:
	.size	_ZN6Kalmar12__index_leafILi2EEmIEi, .Lfunc_end156-_ZN6Kalmar12__index_leafILi2EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end157:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_, .Lfunc_end157-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmIERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEmIERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmIERKS1_,@function
_ZN6Kalmar5indexILi3EEmIERKS1_:         ; @_ZN6Kalmar5indexILi3EEmIERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end158:
	.size	_ZN6Kalmar5indexILi3EEmIERKS1_, .Lfunc_end158-_ZN6Kalmar5indexILi3EEmIERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEmLEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EEmLEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEmLEi,@function
_ZN6Kalmar12__index_leafILi2EEmLEi:     ; @_ZN6Kalmar12__index_leafILi2EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v2, v3, v2
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end159:
	.size	_ZN6Kalmar12__index_leafILi2EEmLEi, .Lfunc_end159-_ZN6Kalmar12__index_leafILi2EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 236
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end160:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_, .Lfunc_end160-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmLERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEmLERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmLERKS1_,@function
_ZN6Kalmar5indexILi3EEmLERKS1_:         ; @_ZN6Kalmar5indexILi3EEmLERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end161:
	.size	_ZN6Kalmar5indexILi3EEmLERKS1_, .Lfunc_end161-_ZN6Kalmar5indexILi3EEmLERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EEdVEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EEdVEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EEdVEi,@function
_ZN6Kalmar12__index_leafILi2EEdVEi:     ; @_ZN6Kalmar12__index_leafILi2EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v5, v2
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f800000, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_hi_u32 v6, v5, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_mul_lo_u32 v6, v5, v2
	v_sub_u32_e64 v7, s8, v6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mul_hi_u32 v6, v6, v5
	v_add_u32_e64 v7, v5, v6
	v_sub_u32_e64 v5, v5, v6
	v_cndmask_b32_e64 v5, v5, v7, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v6, s6, v3
	v_add_u32_e64 v3, v3, v6
	v_xor_b32_e32 v3, v3, v6
	v_mul_hi_u32 v5, v5, v3
	v_mul_lo_u32 v7, v5, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v7
	s_mov_b32 s6, -1
	v_mov_b32_e32 v8, s8
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_sub_u32_e64 v3, v3, v7
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v2, s8
	v_cndmask_b32_e64 v2, v2, v8, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v2, s8
	s_mov_b32 s7, 1
	v_add_u32_e64 v2, v5, s7
	v_cndmask_b32_e64 v2, v2, v5, s[4:5]
	v_add_u32_e64 v3, v5, s6
	v_cmp_eq_u32_e64 s[4:5], v8, s8
	v_cndmask_b32_e64 v2, v2, v3, s[4:5]
	v_xor_b32_e32 v3, v6, v4
	v_xor_b32_e32 v2, v2, v3
	v_sub_u32_e64 v2, v2, v3
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end162:
	.size	_ZN6Kalmar12__index_leafILi2EEdVEi, .Lfunc_end162-_ZN6Kalmar12__index_leafILi2EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 504
; NumSgprs: 37
; NumVgprs: 10
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end163:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_, .Lfunc_end163-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEdVERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EEdVERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEdVERKS1_,@function
_ZN6Kalmar5indexILi3EEdVERKS1_:         ; @_ZN6Kalmar5indexILi3EEdVERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end164:
	.size	_ZN6Kalmar5indexILi3EEdVERKS1_, .Lfunc_end164-_ZN6Kalmar5indexILi3EEdVERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12__index_leafILi2EErMEi ; -- Begin function _ZN6Kalmar12__index_leafILi2EErMEi
	.p2align	2
	.type	_ZN6Kalmar12__index_leafILi2EErMEi,@function
_ZN6Kalmar12__index_leafILi2EErMEi:     ; @_ZN6Kalmar12__index_leafILi2EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 16, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[0:1], v[3:4]
	flat_load_dword v2, v[5:6]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v3, v[0:1]
	s_mov_b32 s6, 31
	v_ashrrev_i32_e64 v4, s6, v2
	v_add_u32_e64 v2, v2, v4
	v_xor_b32_e32 v2, v2, v4
	v_cvt_f32_u32_e32 v4, v2
	v_rcp_iflag_f32_e32 v4, v4
	v_mul_f32_e32 v4, 0x4f800000, v4
	v_cvt_u32_f32_e32 v4, v4
	v_mul_hi_u32 v5, v4, v2
	v_cmp_eq_u32_e64 s[4:5], v5, s8
	v_mul_lo_u32 v5, v4, v2
	v_sub_u32_e64 v6, s8, v5
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mul_hi_u32 v5, v5, v4
	v_add_u32_e64 v6, v4, v5
	v_sub_u32_e64 v4, v4, v5
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, s6, v3
	v_add_u32_e64 v3, v3, v5
	v_xor_b32_e32 v3, v3, v5
	v_mul_hi_u32 v4, v4, v3
	v_mul_lo_u32 v4, v4, v2
	v_cmp_ge_u32_e64 s[4:5], v3, v4
	s_mov_b32 s6, -1
	v_mov_b32_e32 v6, s8
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_sub_u32_e64 v3, v3, v4
	v_cmp_ge_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v4, v4, v6, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v4, s8
	v_sub_u32_e64 v4, v3, v2
	v_cndmask_b32_e64 v4, v4, v3, s[4:5]
	v_add_u32_e64 v2, v3, v2
	v_cmp_eq_u32_e64 s[4:5], v6, s8
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	v_xor_b32_e32 v2, v2, v5
	v_sub_u32_e64 v2, v2, v5
	flat_store_dword v[0:1], v2
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end165:
	.size	_ZN6Kalmar12__index_leafILi2EErMEi, .Lfunc_end165-_ZN6Kalmar12__index_leafILi2EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 496
; NumSgprs: 37
; NumVgprs: 9
; ScratchSize: 32
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_ ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v45, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v45, s35, 0
	v_writelane_b32 v45, s36, 1
	v_writelane_b32 v45, s37, 2
	v_writelane_b32 v45, s38, 3
	v_writelane_b32 v45, s30, 4
	v_writelane_b32 v45, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 64, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x48, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v38, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v37, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 0x50, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v40, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v39, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x58, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v42, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v41, v7, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v36, 6, vcc_hi
	v_add_u32_e32 v6, 0x60, v36
	v_cmp_ne_u32_e64 s[4:5], v6, s35
	v_mov_b32_e32 v7, s37
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v44, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v43, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[37:38], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi0EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v2, v[0:1]
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[39:40], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi1EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[41:42], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v35, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v36, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[37:38]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK6Kalmar12__index_leafILi2EE3getEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v3, v[0:1]
	v_lshrrev_b64 v[1:2], s38, v[35:36]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v35
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[43:44], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[39:40], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v39, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[41:42], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v41, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[43:44], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v43, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v45, 4
	v_readlane_b32 s5, v45, 5
	v_readlane_b32 s38, v45, 3
	v_readlane_b32 s37, v45, 2
	v_readlane_b32 s36, v45, 1
	v_readlane_b32 s35, v45, 0
	buffer_load_dword v44, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v45, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v45, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end166:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_, .Lfunc_end166-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1420
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EErMERKS1_ ; -- Begin function _ZN6Kalmar5indexILi3EErMERKS1_
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EErMERKS1_,@function
_ZN6Kalmar5indexILi3EErMERKS1_:         ; @_ZN6Kalmar5indexILi3EErMERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMERKS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end167:
	.size	_ZN6Kalmar5indexILi3EErMERKS1_, .Lfunc_end167-_ZN6Kalmar5indexILi3EErMERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 388
; NumSgprs: 41
; NumVgprs: 46
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v44, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v44, s35, 0
	v_writelane_b32 v44, s36, 1
	v_writelane_b32 v44, s37, 2
	v_writelane_b32 v44, s38, 3
	v_writelane_b32 v44, s30, 4
	v_writelane_b32 v44, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x60, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v43, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[42:43], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[42:43], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v42, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v44, 4
	v_readlane_b32 s5, v44, 5
	v_readlane_b32 s38, v44, 3
	v_readlane_b32 s37, v44, 2
	v_readlane_b32 s36, v44, 1
	v_readlane_b32 s35, v44, 0
	buffer_load_dword v43, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v44, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end168:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi, .Lfunc_end168-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1192
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEpLEi ; -- Begin function _ZN6Kalmar5indexILi3EEpLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEpLEi,@function
_ZN6Kalmar5indexILi3EEpLEi:             ; @_ZN6Kalmar5indexILi3EEpLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end169:
	.size	_ZN6Kalmar5indexILi3EEpLEi, .Lfunc_end169-_ZN6Kalmar5indexILi3EEpLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v44, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v44, s35, 0
	v_writelane_b32 v44, s36, 1
	v_writelane_b32 v44, s37, 2
	v_writelane_b32 v44, s38, 3
	v_writelane_b32 v44, s30, 4
	v_writelane_b32 v44, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x60, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v43, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[42:43], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[42:43], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v42, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v44, 4
	v_readlane_b32 s5, v44, 5
	v_readlane_b32 s38, v44, 3
	v_readlane_b32 s37, v44, 2
	v_readlane_b32 s36, v44, 1
	v_readlane_b32 s35, v44, 0
	buffer_load_dword v43, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v44, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end170:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi, .Lfunc_end170-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1192
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmIEi ; -- Begin function _ZN6Kalmar5indexILi3EEmIEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmIEi,@function
_ZN6Kalmar5indexILi3EEmIEi:             ; @_ZN6Kalmar5indexILi3EEmIEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end171:
	.size	_ZN6Kalmar5indexILi3EEmIEi, .Lfunc_end171-_ZN6Kalmar5indexILi3EEmIEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v44, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v44, s35, 0
	v_writelane_b32 v44, s36, 1
	v_writelane_b32 v44, s37, 2
	v_writelane_b32 v44, s38, 3
	v_writelane_b32 v44, s30, 4
	v_writelane_b32 v44, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x60, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v43, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[42:43], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[42:43], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v42, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v44, 4
	v_readlane_b32 s5, v44, 5
	v_readlane_b32 s38, v44, 3
	v_readlane_b32 s37, v44, 2
	v_readlane_b32 s36, v44, 1
	v_readlane_b32 s35, v44, 0
	buffer_load_dword v43, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v44, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end172:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi, .Lfunc_end172-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1192
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmLEi ; -- Begin function _ZN6Kalmar5indexILi3EEmLEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmLEi,@function
_ZN6Kalmar5indexILi3EEmLEi:             ; @_ZN6Kalmar5indexILi3EEmLEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end173:
	.size	_ZN6Kalmar5indexILi3EEmLEi, .Lfunc_end173-_ZN6Kalmar5indexILi3EEmLEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v44, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v44, s35, 0
	v_writelane_b32 v44, s36, 1
	v_writelane_b32 v44, s37, 2
	v_writelane_b32 v44, s38, 3
	v_writelane_b32 v44, s30, 4
	v_writelane_b32 v44, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x60, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v43, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[42:43], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[42:43], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v42, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v44, 4
	v_readlane_b32 s5, v44, 5
	v_readlane_b32 s38, v44, 3
	v_readlane_b32 s37, v44, 2
	v_readlane_b32 s36, v44, 1
	v_readlane_b32 s35, v44, 0
	buffer_load_dword v43, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v44, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end174:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi, .Lfunc_end174-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1192
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEdVEi ; -- Begin function _ZN6Kalmar5indexILi3EEdVEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEdVEi,@function
_ZN6Kalmar5indexILi3EEdVEi:             ; @_ZN6Kalmar5indexILi3EEdVEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEdVEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end175:
	.size	_ZN6Kalmar5indexILi3EEdVEi, .Lfunc_end175-_ZN6Kalmar5indexILi3EEdVEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi ; -- Begin function _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi
	.p2align	2
	.type	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi,@function
_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi: ; @_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v44, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v44, s35, 0
	v_writelane_b32 v44, s36, 1
	v_writelane_b32 v44, s37, 2
	v_writelane_b32 v44, s38, 3
	v_writelane_b32 v44, s30, 4
	v_writelane_b32 v44, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 64, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v4, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v39, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v38, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v41, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v40, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x60, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s35
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v43, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[36:37], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[36:37]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[34:35], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi0EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[38:39], v[0:1]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi1EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[40:41], v[0:1]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v0, s[4:5], v32, s6
	v_mov_b32_e32 v1, s7
	v_addc_co_u32_e64 v1, s[4:5], v33, v1, s[4:5]
	flat_load_dword v3, v[36:37]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12__index_leafILi2EErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12__index_leafILi2EErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v2, v3
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[42:43], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[38:39], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v38, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v1, s35
	v_cndmask_b32_e64 v1, v1, v40, s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[42:43], s[36:37]
	v_mov_b32_e32 v2, s35
	v_cndmask_b32_e64 v2, v2, v42, s[4:5]
	buffer_load_dword v3, v2, s[0:3], s33 offen
	buffer_load_dword v2, v2, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v2, off, s[0:3], s32 offset:20
	buffer_store_dword v3, off, s[0:3], s32 offset:16
	buffer_load_dword v2, v1, s[0:3], s33 offen
	buffer_load_dword v1, v1, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v1, off, s[0:3], s32 offset:12
	buffer_store_dword v2, off, s[0:3], s32 offset:8
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEE9__swallowIJNS_12__index_leafILi0EEENS5_ILi1EEENS5_ILi2EEEEEEvDpT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v34
	v_readlane_b32 s4, v44, 4
	v_readlane_b32 s5, v44, 5
	v_readlane_b32 s38, v44, 3
	v_readlane_b32 s37, v44, 2
	v_readlane_b32 s36, v44, 1
	v_readlane_b32 s35, v44, 0
	buffer_load_dword v43, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v44, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v44, off, s[0:3], s32 offset:104 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end176:
	.size	_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi, .Lfunc_end176-_ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1192
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 152
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EErMEi ; -- Begin function _ZN6Kalmar5indexILi3EErMEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EErMEi,@function
_ZN6Kalmar5indexILi3EErMEi:             ; @_ZN6Kalmar5indexILi3EErMEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v3, 24, v8
	v_cmp_ne_u32_e64 s[4:5], v3, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v4, s7
	v_mov_b32_e32 v5, s9
	v_cndmask_b32_e64 v4, v4, v5, s[4:5]
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v3, v5, v3, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 32, v8
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	flat_store_dwordx2 v[3:4], v[0:1]
	flat_store_dword v[5:6], v2
	flat_load_dwordx2 v[32:33], v[3:4]
	flat_load_dword v2, v[5:6]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEErMEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end177:
	.size	_ZN6Kalmar5indexILi3EErMEi, .Lfunc_end177-_ZN6Kalmar5indexILi3EErMEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 380
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEppEv ; -- Begin function _ZN6Kalmar5indexILi3EEppEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEppEv,@function
_ZN6Kalmar5indexILi3EEppEv:             ; @_ZN6Kalmar5indexILi3EEppEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end178:
	.size	_ZN6Kalmar5indexILi3EEppEv, .Lfunc_end178-_ZN6Kalmar5indexILi3EEppEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEppEi ; -- Begin function _ZN6Kalmar5indexILi3EEppEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEppEi,@function
_ZN6Kalmar5indexILi3EEppEi:             ; @_ZN6Kalmar5indexILi3EEppEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEpLEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end179:
	.size	_ZN6Kalmar5indexILi3EEppEi, .Lfunc_end179-_ZN6Kalmar5indexILi3EEppEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmmEv ; -- Begin function _ZN6Kalmar5indexILi3EEmmEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmmEv,@function
_ZN6Kalmar5indexILi3EEmmEv:             ; @_ZN6Kalmar5indexILi3EEmmEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 24, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[32:33], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end180:
	.size	_ZN6Kalmar5indexILi3EEmmEv, .Lfunc_end180-_ZN6Kalmar5indexILi3EEmmEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 316
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 200
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EEmmEi ; -- Begin function _ZN6Kalmar5indexILi3EEmmEi
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EEmmEi,@function
_ZN6Kalmar5indexILi3EEmmEi:             ; @_ZN6Kalmar5indexILi3EEmmEi
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 16, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v7, 24, v12
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v9, 32, v12
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dwordx2 v[7:8], v[2:3]
	flat_store_dword v[9:10], v4
	flat_load_dwordx2 v[32:33], v[7:8]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[33:34], s4, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEC1ERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEC1ERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar10index_implINS_9__indicesIJLi0ELi1ELi2EEEEEmIEi@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:36 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end181:
	.size	_ZN6Kalmar5indexILi3EEmmEi, .Lfunc_end181-_ZN6Kalmar5indexILi3EEmmEi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 472
; NumSgprs: 41
; NumVgprs: 45
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s30, 0
	v_writelane_b32 v35, s31, 1
	v_mov_b32_e32 v2, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v3, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v33, v2, v3, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 2
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	v_readlane_b32 s4, v35, 0
	v_readlane_b32 s5, v35, 1
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end182:
	.size	_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_, .Lfunc_end182-_ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 352
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16416
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s30, 1
	v_writelane_b32 v35, s31, 2
	s_mov_b32 s4, 0
	s_sub_u32 s35, s34, s33
	v_lshrrev_b32_e64 v32, 6, s35
	v_add_u32_e32 v2, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v33, v3, v2, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 1
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi1ENS_5indexILi3EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 1
	v_readlane_b32 s5, v35, 2
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end183:
	.size	_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_, .Lfunc_end183-_ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 424
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16448
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_ ; -- Begin function _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_
	.p2align	2
	.type	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_,@function
_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_: ; @_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v35, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	buffer_store_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v35, s35, 0
	v_writelane_b32 v35, s30, 1
	v_writelane_b32 v35, s31, 2
	v_mov_b32_e32 v2, 0
	s_sub_u32 s35, s34, s33
	v_lshrrev_b32_e64 v32, 6, s35
	v_add_u32_e32 v3, 16, v32
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v33, v2, v3, s[4:5]
	flat_store_dwordx2 v[33:34], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, amp_get_global_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, amp_get_global_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	flat_load_dwordx2 v[0:1], v[33:34]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar5indexILi3EEixEj@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 2
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[0:1], v32
	flat_load_dwordx2 v[0:1], v[33:34]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi2ENS_5indexILi3EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v35, 1
	v_readlane_b32 s5, v35, 2
	v_readlane_b32 s35, v35, 0
	buffer_load_dword v34, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v35, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v35, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end184:
	.size	_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_, .Lfunc_end184-_ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 424
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16480
; MemoryBound: 0
	.text
	.weak	_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv ; -- Begin function _ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv
	.p2align	2
	.type	_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv,@function
_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv: ; @_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 8, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN6Kalmar12index_helperILi3ENS_5indexILi3EEEE3setERS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:16 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end185:
	.size	_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv, .Lfunc_end185-_ZN6Kalmar5indexILi3EE21__cxxamp_opencl_indexEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 48
; NumVgprs: 36
; ScratchSize: 16512
; MemoryBound: 0
	.text
	.weak	_Z3addPdS_S_i           ; -- Begin function _Z3addPdS_S_i
	.p2align	8
	.type	_Z3addPdS_S_i,@function
_Z3addPdS_S_i:                          ; @_Z3addPdS_S_i
; %bb.0:                                ; %entry
	s_mov_b32 s33, s9
	s_add_u32 s32, s33, 0xc00
	s_add_u32 flat_scratch_lo, s6, s33
	s_addc_u32 flat_scratch_hi, s7, 0
	s_load_dwordx2 s[6:7], s[4:5], 0x0
	s_load_dwordx2 s[8:9], s[4:5], 0x8
	s_load_dwordx2 s[10:11], s[4:5], 0x10
	s_load_dword s14, s[4:5], 0x18
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v0, 8
	v_cmp_ne_u32_e64 s[4:5], v0, v2
	s_mov_b64 s[12:13], 0
	s_getreg_b32 s15, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s15, s15, 16
	v_mov_b32_e32 v1, s13
	v_mov_b32_e32 v3, s15
	v_cndmask_b32_e64 v35, v1, v3, s[4:5]
	v_mov_b32_e32 v1, s12
	v_cndmask_b32_e64 v34, v1, v0, s[4:5]
	v_mov_b32_e32 v0, 16
	v_cmp_ne_u32_e64 s[4:5], v0, v2
	v_mov_b32_e32 v1, s13
	v_mov_b32_e32 v3, s15
	v_cndmask_b32_e64 v37, v1, v3, s[4:5]
	v_mov_b32_e32 v1, s12
	v_cndmask_b32_e64 v36, v1, v0, s[4:5]
	v_mov_b32_e32 v0, 24
	v_cmp_ne_u32_e64 s[4:5], v0, v2
	v_mov_b32_e32 v1, s13
	v_mov_b32_e32 v3, s15
	v_cndmask_b32_e64 v39, v1, v3, s[4:5]
	v_mov_b32_e32 v1, s12
	v_cndmask_b32_e64 v38, v1, v0, s[4:5]
	v_mov_b32_e32 v0, 32
	v_cmp_ne_u32_e64 s[4:5], v0, v2
	v_mov_b32_e32 v1, s13
	v_mov_b32_e32 v3, s15
	v_cndmask_b32_e64 v1, v1, v3, s[4:5]
	v_mov_b32_e32 v3, s12
	v_cndmask_b32_e64 v0, v3, v0, s[4:5]
	v_mov_b32_e32 v3, 36
	v_cmp_ne_u32_e64 s[4:5], v3, v2
	v_mov_b32_e32 v2, s13
	v_mov_b32_e32 v4, s15
	v_cndmask_b32_e64 v41, v2, v4, s[4:5]
	v_mov_b32_e32 v2, s12
	v_cndmask_b32_e64 v40, v2, v3, s[4:5]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v2, s7
	flat_store_dword v[34:35], v2 offset:4
	v_mov_b32_e32 v2, s6
	flat_store_dword v[34:35], v2
	v_mov_b32_e32 v2, s9
	flat_store_dword v[36:37], v2 offset:4
	v_mov_b32_e32 v2, s8
	flat_store_dword v[36:37], v2
	v_mov_b32_e32 v2, s11
	flat_store_dword v[38:39], v2 offset:4
	v_mov_b32_e32 v2, s10
	flat_store_dword v[38:39], v2
	v_mov_b32_e32 v2, s14
	flat_store_dword v[0:1], v2
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_workitem_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_workitem_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v32, v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_group_size@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_group_size@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v33, v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_group_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_group_id@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mul_lo_u32 v0, v33, v0
	v_add_u32_e64 v0, v32, v0
	flat_store_dword v[40:41], v0
	flat_load_dword v1, v[34:35] offset:4
	flat_load_dword v0, v[34:35]
	flat_load_dword v2, v[40:41]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v3, 31, v2
	s_mov_b32 s4, 3
	v_lshlrev_b64 v[2:3], s4, v[2:3]
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	flat_load_dword v5, v[0:1] offset:4
	flat_load_dword v4, v[0:1]
	flat_load_dword v1, v[36:37] offset:4
	flat_load_dword v0, v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	flat_load_dword v7, v[0:1] offset:4
	flat_load_dword v6, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f64 v[0:1], v[4:5], v[6:7]
	flat_load_dword v4, v[38:39] offset:4
	flat_load_dword v5, v[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v2, s[4:5], v5, v2
	v_addc_co_u32_e64 v3, s[4:5], v4, v3, s[4:5]
	flat_store_dword v[2:3], v1 offset:4
	flat_store_dword v[2:3], v0
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z3addPdS_S_i
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 16432
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 42
		.amdhsa_next_free_sgpr 42
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 0
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end186:
	.size	_Z3addPdS_S_i, .Lfunc_end186-_Z3addPdS_S_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 708
; NumSgprs: 48
; NumVgprs: 42
; ScratchSize: 16432
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 5
; VGPRBlocks: 10
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 42
; Occupancy: 5
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.globl	_Z8InitHostPdS_S_i      ; -- Begin function _Z8InitHostPdS_S_i
	.p2align	2
	.type	_Z8InitHostPdS_S_i,@function
_Z8InitHostPdS_S_i:                     ; @_Z8InitHostPdS_S_i
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s13, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xa00
	v_mov_b32_e32 v17, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v7, 8, v14
	v_cmp_ne_u32_e64 s[6:7], v7, v17
	s_mov_b64 s[4:5], 0
	s_getreg_b32 s8, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s8, 16
	v_mov_b32_e32 v8, s5
	v_mov_b32_e32 v9, s8
	v_cndmask_b32_e64 v8, v8, v9, s[6:7]
	v_mov_b32_e32 v9, s4
	v_cndmask_b32_e64 v7, v9, v7, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v9, 16, v19
	v_cmp_ne_u32_e64 s[6:7], v9, v17
	v_mov_b32_e32 v10, s5
	v_mov_b32_e32 v11, s8
	v_cndmask_b32_e64 v10, v10, v11, s[6:7]
	v_mov_b32_e32 v11, s4
	v_cndmask_b32_e64 v9, v11, v9, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v11, 24, v19
	v_cmp_ne_u32_e64 s[6:7], v11, v17
	v_mov_b32_e32 v12, s5
	v_mov_b32_e32 v13, s8
	v_cndmask_b32_e64 v12, v12, v13, s[6:7]
	v_mov_b32_e32 v13, s4
	v_cndmask_b32_e64 v11, v13, v11, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v13, 32, v19
	v_cmp_ne_u32_e64 s[6:7], v13, v17
	v_mov_b32_e32 v14, s5
	v_mov_b32_e32 v15, s8
	v_cndmask_b32_e64 v14, v14, v15, s[6:7]
	v_mov_b32_e32 v15, s4
	v_cndmask_b32_e64 v13, v15, v13, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v15, 36, v19
	v_cmp_ne_u32_e64 s[6:7], v15, v17
	v_mov_b32_e32 v16, s5
	v_mov_b32_e32 v18, s8
	v_cndmask_b32_e64 v16, v16, v18, s[6:7]
	v_mov_b32_e32 v18, s4
	v_cndmask_b32_e64 v15, v18, v15, s[6:7]
	flat_store_dwordx2 v[7:8], v[0:1]
	flat_store_dwordx2 v[9:10], v[2:3]
	flat_store_dwordx2 v[11:12], v[4:5]
	flat_store_dword v[13:14], v6
	flat_store_dword v[15:16], v17
                                        ; implicit-def: $sgpr6_sgpr7
BB187_1:                                ; %for.cond
                                        ; =>This Inner Loop Header: Depth=1
	flat_load_dword v0, v[15:16]
	flat_load_dword v1, v[13:14]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[10:11], v0, v1
	s_mov_b64 s[8:9], -1
	s_or_b64 s[6:7], s[6:7], exec
	s_mov_b64 s[8:9], exec
	s_and_b64 s[10:11], s[8:9], s[10:11]
	s_mov_b64 exec, s[10:11]
	; mask branch BB187_3
	s_cbranch_execz BB187_3
BB187_2:                                ; %for.body
                                        ;   in Loop: Header=BB187_1 Depth=1
	flat_load_dword v0, v[15:16]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_cvt_f64_i32_e64 v[2:3], v0
	flat_load_dwordx2 v[4:5], v[7:8]
	s_mov_b32 s12, 3
	v_lshlrev_b64 v[0:1], s12, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[10:11], v4, v0
	v_addc_co_u32_e64 v1, s[10:11], v5, v1, s[10:11]
	flat_store_dwordx2 v[0:1], v[2:3]
	flat_load_dword v2, v[13:14]
	flat_load_dword v0, v[15:16]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_sub_u32_e64 v2, v2, v0
	v_cvt_f64_i32_e64 v[2:3], v2
	flat_load_dwordx2 v[4:5], v[9:10]
	v_lshlrev_b64 v[0:1], s12, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[10:11], v4, v0
	v_addc_co_u32_e64 v1, s[10:11], v5, v1, s[10:11]
	flat_store_dwordx2 v[0:1], v[2:3]
	flat_load_dword v0, v[13:14]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_i32_e64 v[0:1], v0
	flat_load_dwordx2 v[2:3], v[11:12]
	flat_load_dword v4, v[15:16]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, 31, v4
	v_lshlrev_b64 v[4:5], s12, v[4:5]
	v_add_co_u32_e64 v2, s[10:11], v2, v4
	v_addc_co_u32_e64 v3, s[10:11], v3, v5, s[10:11]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_branch BB187_4
BB187_3:                                ; %Flow
                                        ;   in Loop: Header=BB187_1 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_and_b64 s[8:9], exec, s[6:7]
	s_or_b64 s[4:5], s[8:9], s[4:5]
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB187_1
	s_branch BB187_5
BB187_4:                                ; %for.inc
                                        ;   in Loop: Header=BB187_1 Depth=1
	flat_load_dword v0, v[15:16]
	s_mov_b32 s10, 1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v0, v0, s10
	flat_store_dword v[15:16], v0
	s_mov_b64 s[10:11], 0
	s_andn2_b64 s[6:7], s[6:7], exec
	s_branch BB187_3
BB187_5:                                ; %for.end
	s_or_b64 exec, exec, s[4:5]
	s_sub_u32 s32, s32, 0xa00
	s_mov_b32 s34, s13
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end187:
	.size	_Z8InitHostPdS_S_i, .Lfunc_end187-_Z8InitHostPdS_S_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 728
; NumSgprs: 37
; NumVgprs: 20
; ScratchSize: 40
; MemoryBound: 0
	.text
	.weak	__hip_malloc            ; -- Begin function __hip_malloc
	.p2align	2
	.type	__hip_malloc,@function
__hip_malloc:                           ; @__hip_malloc
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v62, off, s[0:3], s32 offset:192 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v62, s34, 13
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x3400
	buffer_store_dword v32, off, s[0:3], s34 offset:116 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:112 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:108 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:104 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:100 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:96 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:92 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:88 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:84 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:80 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:76 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:72 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:68 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:64 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 offset:60 ; 4-byte Folded Spill
	buffer_store_dword v47, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v48, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v49, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v50, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v51, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v52, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v53, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v54, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v55, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v56, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v57, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v58, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v59, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v60, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v61, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v62, s35, 0
	v_writelane_b32 v62, s36, 1
	v_writelane_b32 v62, s37, 2
	v_writelane_b32 v62, s38, 3
	v_writelane_b32 v62, s39, 4
	v_writelane_b32 v62, s40, 5
	v_writelane_b32 v62, s41, 6
	v_writelane_b32 v62, s42, 7
	v_writelane_b32 v62, s43, 8
	v_writelane_b32 v62, s44, 9
	v_writelane_b32 v62, s45, 10
	s_mov_b32 s5, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x80, v5
	v_cmp_ne_u32_e64 s[6:7], v2, s5
	s_mov_b64 s[8:9], 0
	s_getreg_b32 s4, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s4, s4, 16
	v_mov_b32_e32 v3, s9
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v37, v3, v4, s[6:7]
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v36, v3, v2, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x88, v5
	v_cmp_ne_u32_e64 s[6:7], v2, s5
	v_mov_b32_e32 v3, s9
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v55, v3, v4, s[6:7]
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v54, v3, v2, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x90, v5
	v_cmp_ne_u32_e64 s[6:7], v2, s5
	v_mov_b32_e32 v3, s9
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v39, v3, v4, s[6:7]
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v38, v3, v2, s[6:7]
	flat_store_dwordx2 v[54:55], v[0:1]
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __hip_device_heap@gotpcrel32@lo+4
	s_addc_u32 s7, s7, __hip_device_heap@gotpcrel32@hi+4
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s6
	v_mov_b32_e32 v1, s7
	flat_store_dwordx2 v[38:39], v[0:1]
	flat_load_dwordx2 v[0:1], v[54:55]
	s_mov_b32 s4, 0x400001
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_u64_e64 s[4:5], v[0:1], s[4:5]
	s_mov_b64 s[6:7], exec
	s_and_b64 s[4:5], s[6:7], s[4:5]
	s_xor_b64 s[36:37], s[4:5], s[6:7]
	s_mov_b64 exec, s[4:5]
	; mask branch BB188_3
	s_cbranch_execz BB188_3
	s_branch BB188_2
BB188_1:                                ; %if.then
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v0, s6
	v_mov_b32_e32 v1, s7
	flat_store_dwordx2 v[36:37], v[0:1]
	s_branch BB188_13
BB188_2:                                ; %if.end
	v_writelane_b32 v62, s30, 11
	v_writelane_b32 v62, s31, 12
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0x98, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	s_mov_b64 s[38:39], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v57, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v56, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0x9c, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v41, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v40, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0xa0, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v59, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v58, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0xa4, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v43, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v42, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0xa8, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v49, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v48, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v3, 6, vcc_hi
	v_add_u32_e32 v0, 0xac, v3
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v51, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v50, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v32, 6, vcc_hi
	v_add_u32_e32 v0, 0xb0, v32
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v47, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v46, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v0, 0xb4, v34
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v53, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v52, v1, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v35, 6, vcc_hi
	v_add_u32_e32 v0, 0xb8, v35
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	v_mov_b32_e32 v1, s39
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v45, v1, v2, s[4:5]
	v_mov_b32_e32 v1, s38
	v_cndmask_b32_e64 v44, v1, v0, s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_group_size@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_group_size@gotpcrel32@hi+4
	s_load_dwordx2 s[40:41], s[4:5], 0x0
	v_mov_b32_e32 v0, s35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v32, v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_num_groups@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_num_groups@gotpcrel32@hi+4
	s_load_dwordx2 s[42:43], s[4:5], 0x0
	v_mov_b32_e32 v0, s35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[42:43]
	v_mul_lo_u32 v33, v32, v0
	v_mov_b32_e32 v32, 1
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[40:41]
	v_mul_lo_u32 v33, v33, v0
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[42:43]
	v_mul_lo_u32 v34, v33, v0
	v_mov_b32_e32 v33, 2
	v_mov_b32_e32 v0, v33
	s_swappc_b64 s[30:31], s[40:41]
	v_mul_lo_u32 v34, v34, v0
	v_mov_b32_e32 v0, v33
	s_swappc_b64 s[30:31], s[42:43]
	v_mul_lo_u32 v0, v34, v0
	flat_store_dword v[56:57], v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_workitem_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_workitem_id@gotpcrel32@hi+4
	s_load_dwordx2 s[42:43], s[4:5], 0x0
	v_mov_b32_e32 v0, s35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[42:43]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v0, s35
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v35, v0
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hc_get_group_id@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hc_get_group_id@gotpcrel32@hi+4
	s_load_dwordx2 s[44:45], s[4:5], 0x0
	v_mov_b32_e32 v0, s35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[44:45]
	v_mul_lo_u32 v0, v35, v0
	v_add_u32_e64 v60, v34, v0
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[42:43]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[44:45]
	v_mul_lo_u32 v0, v35, v0
	v_add_u32_e64 v34, v34, v0
	v_mov_b32_e32 v0, s35
	s_swappc_b64 s[30:31], s[40:41]
	v_mul_lo_u32 v61, v34, v0
	v_mov_b32_e32 v0, v33
	s_swappc_b64 s[30:31], s[42:43]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v0, v33
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v35, v0
	v_mov_b32_e32 v0, v33
	s_swappc_b64 s[30:31], s[44:45]
	v_mul_lo_u32 v0, v35, v0
	v_add_u32_e64 v33, v34, v0
	v_mov_b32_e32 v0, s35
	s_swappc_b64 s[30:31], s[40:41]
	v_mul_lo_u32 v33, v33, v0
	v_mov_b32_e32 v0, v32
	s_swappc_b64 s[30:31], s[40:41]
	v_mul_lo_u32 v0, v33, v0
	v_add3_u32 v0, v60, v61, v0
	flat_store_dword v[40:41], v0
	flat_load_dword v0, v[56:57]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f32_u32_e32 v1, v0
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f800000, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_hi_u32 v2, v1, v0
	v_cmp_eq_u32_e64 s[4:5], v2, s35
	v_mul_lo_u32 v2, v1, v0
	v_sub_u32_e64 v3, s35, v2
	v_cndmask_b32_e64 v2, v2, v3, s[4:5]
	v_mul_hi_u32 v2, v2, v1
	v_add_u32_e64 v3, v1, v2
	v_sub_u32_e64 v1, v1, v2
	v_cndmask_b32_e64 v1, v1, v3, s[4:5]
	s_mov_b32 s4, 16
	v_lshrrev_b32_e64 v1, s4, v1
	v_mul_lo_u32 v2, v1, v0
	s_mov_b32 s4, 0x10001
	v_cmp_lt_u32_e64 s[4:5], v2, s4
	s_mov_b32 s6, -1
	v_mov_b32_e32 v3, s35
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	s_mov_b32 s4, 0x10000
	v_sub_u32_e64 v2, s4, v2
	v_cmp_ge_u32_e64 s[4:5], v2, v0
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v3, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v0, s35
	v_add_u32_e64 v0, v1, v32
	v_cndmask_b32_e64 v0, v0, v1, s[4:5]
	v_add_u32_e64 v1, v1, s6
	v_cmp_eq_u32_e64 s[4:5], v3, s35
	v_cndmask_b32_e64 v0, v0, v1, s[4:5]
	flat_store_dword v[58:59], v0
	flat_load_dword v0, v[56:57]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f32_u32_e32 v1, v0
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f800000, v1
	v_cvt_u32_f32_e32 v1, v1
	v_mul_hi_u32 v2, v1, v0
	v_cmp_eq_u32_e64 s[4:5], v2, s35
	v_mul_lo_u32 v2, v1, v0
	v_sub_u32_e64 v3, s35, v2
	v_cndmask_b32_e64 v2, v2, v3, s[4:5]
	v_mul_hi_u32 v2, v2, v1
	v_add_u32_e64 v3, v1, v2
	v_sub_u32_e64 v1, v1, v2
	v_cndmask_b32_e64 v1, v1, v3, s[4:5]
	s_mov_b32 s4, 10
	v_lshrrev_b32_e64 v1, s4, v1
	v_mul_lo_u32 v2, v1, v0
	s_mov_b32 s4, 0x400001
	v_cmp_lt_u32_e64 s[4:5], v2, s4
	v_mov_b32_e32 v3, s35
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	s_mov_b32 s4, 0x400000
	v_sub_u32_e64 v2, s4, v2
	v_cmp_ge_u32_e64 s[4:5], v2, v0
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v3, s[4:5]
	v_cmp_eq_u32_e64 s[4:5], v0, s35
	v_add_u32_e64 v0, v1, v32
	v_cndmask_b32_e64 v0, v0, v1, s[4:5]
	v_add_u32_e64 v1, v1, s6
	v_cmp_eq_u32_e64 s[4:5], v3, s35
	v_cndmask_b32_e64 v0, v0, v1, s[4:5]
	flat_store_dword v[42:43], v0
	flat_load_dwordx2 v[0:1], v[54:55]
	s_mov_b32 s4, 6
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_alignbit_b32 v0, v1, v0, s4
	flat_store_dword v[48:49], v0
	flat_load_dword v0, v[58:59]
	flat_load_dword v1, v[40:41]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v0, v0, v1
	flat_store_dword v[50:51], v0
	v_mov_b32_e32 v0, s35
	flat_store_dword v[46:47], v0
                                        ; implicit-def: $sgpr4_sgpr5
	s_branch BB188_4
BB188_3:                                ; %Flow2
	s_or_saveexec_b64 s[4:5], s[36:37]
	s_xor_b64 exec, exec, s[4:5]
	; mask branch BB188_13
	s_cbranch_execz BB188_13
	s_branch BB188_1
BB188_4:                                ; %while.cond
                                        ; =>This Inner Loop Header: Depth=1
	flat_load_dword v0, v[46:47]
	s_mov_b32 s6, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s6, 2
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[0:1], s6, v[0:1]
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __hip_device_page_flag@gotpcrel32@lo+4
	s_addc_u32 s7, s7, __hip_device_page_flag@gotpcrel32@hi+4
	s_load_dwordx2 s[8:9], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32_e64 v0, s[6:7], s8, v0
	v_mov_b32_e32 v2, s9
	v_addc_co_u32_e64 v1, s[6:7], v2, v1, s[6:7]
	flat_load_dword v0, v[0:1]
	s_mov_b32 s6, 0
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ne_u32_e64 s[8:9], v0, s6
	s_mov_b64 s[6:7], -1
	s_or_b64 s[4:5], s[4:5], exec
	s_mov_b64 s[6:7], exec
	s_and_b64 s[8:9], s[6:7], s[8:9]
	s_mov_b64 exec, s[8:9]
	; mask branch BB188_6
	s_cbranch_execz BB188_6
BB188_5:                                ; %while.body
                                        ;   in Loop: Header=BB188_4 Depth=1
	flat_load_dword v0, v[46:47]
	s_mov_b32 s8, 1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v0, v0, s8
	flat_store_dword v[46:47], v0
	s_mov_b64 s[8:9], 0
	s_andn2_b64 s[4:5], s[4:5], exec
BB188_6:                                ; %Flow1
                                        ;   in Loop: Header=BB188_4 Depth=1
	s_or_b64 exec, exec, s[6:7]
	s_and_b64 s[6:7], exec, s[4:5]
	s_or_b64 s[38:39], s[6:7], s[38:39]
	s_andn2_b64 exec, exec, s[38:39]
	s_cbranch_execnz BB188_4
; %bb.7:                                ; %while.end
	s_or_b64 exec, exec, s[38:39]
	v_mov_b32_e32 v0, 0
	flat_store_dword v[52:53], v0
	s_mov_b64 s[4:5], 0
                                        ; implicit-def: $sgpr6_sgpr7
	v_readlane_b32 s30, v62, 11
	v_readlane_b32 s31, v62, 12
BB188_8:                                ; %for.cond
                                        ; =>This Inner Loop Header: Depth=1
	flat_load_dword v0, v[52:53]
	flat_load_dword v1, v[48:49]
	s_mov_b32 s8, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v1, v1, s8
	v_cmp_lt_u32_e64 s[10:11], v0, v1
	s_mov_b64 s[8:9], -1
	s_or_b64 s[6:7], s[6:7], exec
	s_mov_b64 s[8:9], exec
	s_and_b64 s[10:11], s[8:9], s[10:11]
	s_mov_b64 exec, s[10:11]
	; mask branch BB188_10
	s_cbranch_execz BB188_10
BB188_9:                                ; %for.body
                                        ;   in Loop: Header=BB188_8 Depth=1
	flat_load_dword v0, v[52:53]
	flat_load_dword v1, v[50:51]
	flat_load_dword v2, v[46:47]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add3_u32 v0, v0, v1, v2
	s_mov_b32 s10, 0
	v_mov_b32_e32 v1, 0
	s_mov_b32 s10, 2
	v_lshlrev_b64 v[0:1], s10, v[0:1]
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, __hip_device_page_flag@gotpcrel32@lo+4
	s_addc_u32 s11, s11, __hip_device_page_flag@gotpcrel32@hi+4
	s_load_dwordx2 s[12:13], s[10:11], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32_e64 v0, s[10:11], s12, v0
	v_mov_b32_e32 v2, s13
	v_addc_co_u32_e64 v1, s[10:11], v2, v1, s[10:11]
	v_mov_b32_e32 v2, 1
	flat_store_dword v[0:1], v2
	s_branch BB188_11
BB188_10:                               ; %Flow
                                        ;   in Loop: Header=BB188_8 Depth=1
	s_or_b64 exec, exec, s[8:9]
	s_and_b64 s[8:9], exec, s[6:7]
	s_or_b64 s[4:5], s[8:9], s[4:5]
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB188_8
	s_branch BB188_12
BB188_11:                               ; %for.inc
                                        ;   in Loop: Header=BB188_8 Depth=1
	flat_load_dword v0, v[52:53]
	s_mov_b32 s10, 1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v0, v0, s10
	flat_store_dword v[52:53], v0
	s_mov_b64 s[10:11], 0
	s_andn2_b64 s[6:7], s[6:7], exec
	s_branch BB188_10
BB188_12:                               ; %for.end
	s_or_b64 exec, exec, s[4:5]
	flat_load_dword v0, v[50:51]
	flat_load_dword v1, v[48:49]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v0, v0, v1
	flat_load_dword v1, v[46:47]
	s_mov_b32 s4, -1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add3_u32 v0, v0, v1, s4
	s_mov_b32 s8, 0
	v_mov_b32_e32 v1, s8
	s_mov_b32 s9, 2
	v_lshlrev_b64 v[0:1], s9, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __hip_device_page_flag@gotpcrel32@lo+4
	s_addc_u32 s5, s5, __hip_device_page_flag@gotpcrel32@hi+4
	s_load_dwordx2 s[6:7], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], s6, v0
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v2, v1, s[4:5]
	v_mov_b32_e32 v2, s9
	flat_store_dword v[0:1], v2
	flat_load_dwordx2 v[0:1], v[38:39]
	flat_load_dword v2, v[42:43]
	flat_load_dword v3, v[40:41]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mul_lo_u32 v2, v2, v3
	v_mov_b32_e32 v3, s8
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	flat_load_dword v2, v[46:47]
	s_mov_b32 s4, 6
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b32_e64 v2, s4, v2
	v_mov_b32_e32 v3, s8
	v_add_co_u32_e64 v0, s[4:5], v0, v2
	v_addc_co_u32_e64 v1, s[4:5], v1, v3, s[4:5]
	flat_store_dwordx2 v[44:45], v[0:1]
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[36:37], v[0:1]
	s_branch BB188_3
BB188_13:                               ; %return
	s_or_b64 exec, exec, s[4:5]
	flat_load_dwordx2 v[0:1], v[36:37]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	v_readlane_b32 s45, v62, 10
	v_readlane_b32 s44, v62, 9
	v_readlane_b32 s43, v62, 8
	v_readlane_b32 s42, v62, 7
	v_readlane_b32 s41, v62, 6
	v_readlane_b32 s40, v62, 5
	v_readlane_b32 s39, v62, 4
	v_readlane_b32 s38, v62, 3
	v_readlane_b32 s37, v62, 2
	v_readlane_b32 s36, v62, 1
	v_readlane_b32 s35, v62, 0
	buffer_load_dword v61, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v60, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v59, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v58, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v57, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v56, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v55, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v54, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v53, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v52, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v51, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v50, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v49, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v48, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v47, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	buffer_load_dword v46, off, s[0:3], s34 offset:60 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:64 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:68 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:72 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:76 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:80 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:84 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:88 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:92 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:96 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:100 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:104 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:108 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:112 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:116 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x3400
	v_readlane_b32 s34, v62, 13
	s_or_saveexec_b64 s[4:5], -1
	buffer_load_dword v62, off, s[0:3], s32 offset:192 ; 4-byte Folded Reload
	s_mov_b64 exec, s[4:5]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end188:
	.size	__hip_malloc, .Lfunc_end188-__hip_malloc
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 3416
; NumSgprs: 52
; NumVgprs: 63
; ScratchSize: 16592
; MemoryBound: 0
	.text
	.p2align	2               ; -- Begin function _ZL6mallocm
	.type	_ZL6mallocm,@function
_ZL6mallocm:                            ; @_ZL6mallocm
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __hip_malloc@gotpcrel32@lo+4
	s_addc_u32 s5, s5, __hip_malloc@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end189:
	.size	_ZL6mallocm, .Lfunc_end189-_ZL6mallocm
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 52
; NumVgprs: 63
; ScratchSize: 16624
; MemoryBound: 0
	.text
	.weak	_ZN4dim3C2Ejjj          ; -- Begin function _ZN4dim3C2Ejjj
	.p2align	2
	.type	_ZN4dim3C2Ejjj,@function
_ZN4dim3C2Ejjj:                         ; @_ZN4dim3C2Ejjj
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v12, 6, vcc_hi
	v_add_u32_e32 v5, 8, v12
	v_cmp_ne_u32_e64 s[4:5], v5, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v6, s7
	v_mov_b32_e32 v7, s9
	v_cndmask_b32_e64 v6, v6, v7, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v7, 16, v14
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v9, 20, v14
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 24, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s8
	v_mov_b32_e32 v12, s7
	v_mov_b32_e32 v13, s9
	v_cndmask_b32_e64 v12, v12, v13, s[4:5]
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v11, v13, v11, s[4:5]
	flat_store_dwordx2 v[5:6], v[0:1]
	flat_store_dword v[7:8], v2
	flat_store_dword v[9:10], v3
	flat_store_dword v[11:12], v4
	flat_load_dwordx2 v[0:1], v[5:6]
	flat_load_dword v2, v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2
	flat_load_dword v2, v[9:10]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2 offset:4
	flat_load_dword v2, v[11:12]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[0:1], v2 offset:8
	s_sub_u32 s32, s32, 0x800
	s_mov_b32 s34, s10
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end190:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end190-_ZN4dim3C2Ejjj
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 364
; NumSgprs: 37
; NumVgprs: 15
; ScratchSize: 32
; MemoryBound: 1
	.text
	.weak	_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_ ; -- Begin function _ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	2
	.type	_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_: ; @_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end191:
	.size	_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end191-_ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ ; -- Begin function _ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
	.p2align	2
	.type	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_,@function
_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_: ; @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end192:
	.size	_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_, .Lfunc_end192-_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE ; -- Begin function _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE
	.p2align	2
	.type	_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE,@function
_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE: ; @_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end193:
	.size	_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE, .Lfunc_end193-_ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE ; -- Begin function _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.p2align	2
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,@function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE: ; @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end194:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .Lfunc_end194-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_ ; -- Begin function _ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_
	.p2align	2
	.type	_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_,@function
_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_:  ; @_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s30, 0
	v_writelane_b32 v34, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v0, v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dword v[32:33], v0
	v_readlane_b32 s4, v34, 0
	v_readlane_b32 s5, v34, 1
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end195:
	.size	_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_, .Lfunc_end195-_ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 368
; NumSgprs: 37
; NumVgprs: 35
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_ ; -- Begin function _ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_,@function
_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_:   ; @_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s35, 0
	v_writelane_b32 v34, s30, 1
	v_writelane_b32 v34, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v34, 1
	v_readlane_b32 s5, v34, 2
	v_readlane_b32 s35, v34, 0
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end196:
	.size	_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_, .Lfunc_end196-_ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 428
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_ ; -- Begin function _ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_
	.p2align	2
	.type	_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_,@function
_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_: ; @_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s30, 0
	v_writelane_b32 v34, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[32:33], v[0:1]
	v_readlane_b32 s4, v34, 0
	v_readlane_b32 s5, v34, 1
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end197:
	.size	_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_, .Lfunc_end197-_ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 368
; NumSgprs: 37
; NumVgprs: 35
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_ ; -- Begin function _ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_,@function
_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_: ; @_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:48 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1000
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v6, 24, v11
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v8, 32, v11
	v_cmp_ne_u32_e64 s[4:5], v8, s8
	v_mov_b32_e32 v9, s7
	v_mov_b32_e32 v10, s9
	v_cndmask_b32_e64 v35, v9, v10, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v34, v9, v8, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v8, 40, v11
	v_cmp_ne_u32_e64 s[4:5], v8, s8
	v_mov_b32_e32 v9, s7
	v_mov_b32_e32 v10, s9
	v_cndmask_b32_e64 v9, v9, v10, s[4:5]
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v8, v10, v8, s[4:5]
	flat_store_dwordx2 v[6:7], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_store_dwordx2 v[8:9], v[4:5]
	flat_load_dwordx2 v[32:33], v[6:7]
	flat_load_dwordx2 v[0:1], v[8:9]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm3EJiEEC2IiEEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1000
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:48 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end198:
	.size	_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_, .Lfunc_end198-_ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 664
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 184
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_ ; -- Begin function _ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_
	.p2align	2
	.type	_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_,@function
_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_: ; @_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s30, 0
	v_writelane_b32 v34, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[32:33], v[0:1]
	v_readlane_b32 s4, v34, 0
	v_readlane_b32 s5, v34, 1
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end199:
	.size	_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_, .Lfunc_end199-_ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 368
; NumSgprs: 37
; NumVgprs: 35
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_ ; -- Begin function _ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_,@function
_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_: ; @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v40, off, s[0:3], s32 offset:72 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v40, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1400
	buffer_store_dword v32, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v40, s35, 0
	v_writelane_b32 v40, s36, 1
	v_writelane_b32 v40, s37, 2
	v_writelane_b32 v40, s30, 3
	v_writelane_b32 v40, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v13, 6, vcc_hi
	v_add_u32_e32 v8, 40, v13
	v_cmp_ne_u32_e64 s[4:5], v8, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v9, s7
	v_mov_b32_e32 v10, s9
	v_cndmask_b32_e64 v9, v9, v10, s[4:5]
	v_mov_b32_e32 v10, s6
	v_cndmask_b32_e64 v8, v10, v8, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v15, 6, vcc_hi
	v_add_u32_e32 v10, 48, v15
	v_cmp_ne_u32_e64 s[4:5], v10, s8
	v_mov_b32_e32 v11, s7
	v_mov_b32_e32 v12, s9
	v_cndmask_b32_e64 v37, v11, v12, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v36, v11, v10, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v34, 6, vcc_hi
	v_add_u32_e32 v10, 56, v34
	v_cmp_ne_u32_e64 s[4:5], v10, s8
	v_mov_b32_e32 v11, s7
	v_mov_b32_e32 v12, s9
	v_cndmask_b32_e64 v11, v11, v12, s[4:5]
	v_mov_b32_e32 v12, s6
	v_cndmask_b32_e64 v10, v12, v10, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v35, 6, vcc_hi
	v_add_u32_e32 v12, 64, v35
	v_cmp_ne_u32_e64 s[4:5], v12, s8
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v14, s9
	v_cndmask_b32_e64 v39, v13, v14, s[4:5]
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v38, v13, v12, s[4:5]
	flat_store_dwordx2 v[8:9], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_store_dwordx2 v[10:11], v[4:5]
	flat_store_dwordx2 v[38:39], v[6:7]
	flat_load_dwordx2 v[32:33], v[8:9]
	flat_load_dwordx2 v[0:1], v[10:11]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v1
	flat_load_dwordx2 v[0:1], v[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm2EJPdiEEC2IS0_JiEvEEOT_DpOT0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v40, 3
	v_readlane_b32 s5, v40, 4
	v_readlane_b32 s37, v40, 2
	v_readlane_b32 s36, v40, 1
	v_readlane_b32 s35, v40, 0
	buffer_load_dword v39, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1400
	v_readlane_b32 s34, v40, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v40, off, s[0:3], s32 offset:72 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end200:
	.size	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_, .Lfunc_end200-_ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 852
; NumSgprs: 40
; NumVgprs: 41
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_ ; -- Begin function _ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_
	.p2align	2
	.type	_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_,@function
_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_: ; @_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s30, 0
	v_writelane_b32 v34, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[0:1], v[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_store_dwordx2 v[32:33], v[0:1]
	v_readlane_b32 s4, v34, 0
	v_readlane_b32 s5, v34, 1
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end201:
	.size	_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_, .Lfunc_end201-_ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 368
; NumSgprs: 37
; NumVgprs: 35
; ScratchSize: 72
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_ ; -- Begin function _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_,@function
_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_: ; @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s30, 3
	v_writelane_b32 v42, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v15, 6, vcc_hi
	v_add_u32_e32 v10, 48, v15
	v_cmp_ne_u32_e64 s[4:5], v10, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v11, s7
	v_mov_b32_e32 v12, s9
	v_cndmask_b32_e64 v11, v11, v12, s[4:5]
	v_mov_b32_e32 v12, s6
	v_cndmask_b32_e64 v10, v12, v10, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v12, 56, v17
	v_cmp_ne_u32_e64 s[4:5], v12, s8
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v14, s9
	v_cndmask_b32_e64 v39, v13, v14, s[4:5]
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v38, v13, v12, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v12, 64, v17
	v_cmp_ne_u32_e64 s[4:5], v12, s8
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v14, s9
	v_cndmask_b32_e64 v13, v13, v14, s[4:5]
	v_mov_b32_e32 v14, s6
	v_cndmask_b32_e64 v12, v14, v12, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v14, 0x48, v17
	v_cmp_ne_u32_e64 s[4:5], v14, s8
	v_mov_b32_e32 v15, s7
	v_mov_b32_e32 v16, s9
	v_cndmask_b32_e64 v37, v15, v16, s[4:5]
	v_mov_b32_e32 v15, s6
	v_cndmask_b32_e64 v36, v15, v14, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v35, 6, vcc_hi
	v_add_u32_e32 v14, 0x50, v35
	v_cmp_ne_u32_e64 s[4:5], v14, s8
	v_mov_b32_e32 v15, s7
	v_mov_b32_e32 v16, s9
	v_cndmask_b32_e64 v41, v15, v16, s[4:5]
	v_mov_b32_e32 v15, s6
	v_cndmask_b32_e64 v40, v15, v14, s[4:5]
	flat_store_dwordx2 v[10:11], v[0:1]
	flat_store_dwordx2 v[38:39], v[2:3]
	flat_store_dwordx2 v[12:13], v[4:5]
	flat_store_dwordx2 v[36:37], v[6:7]
	flat_store_dwordx2 v[40:41], v[8:9]
	flat_load_dwordx2 v[32:33], v[10:11]
	flat_load_dwordx2 v[0:1], v[12:13]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v1
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v1
	flat_load_dwordx2 v[0:1], v[40:41]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v6, v0
	v_mov_b32_e32 v7, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm1EJPdS0_iEEC2IS0_JS0_iEvEEOT_DpOT0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v35
	v_mov_b32_e32 v4, v36
	v_mov_b32_e32 v5, v37
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 24
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v42, 3
	v_readlane_b32 s5, v42, 4
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end202:
	.size	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_, .Lfunc_end202-_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 992
; NumSgprs: 40
; NumVgprs: 43
; ScratchSize: 360
; MemoryBound: 0
	.text
	.weak	_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_ ; -- Begin function _ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_
	.p2align	2
	.type	_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_,@function
_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_: ; @_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v42, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1800
	buffer_store_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v42, s35, 0
	v_writelane_b32 v42, s36, 1
	v_writelane_b32 v42, s37, 2
	v_writelane_b32 v42, s30, 3
	v_writelane_b32 v42, s31, 4
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v10, 48, v17
	v_cmp_ne_u32_e64 s[4:5], v10, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v11, s7
	v_mov_b32_e32 v12, s9
	v_cndmask_b32_e64 v11, v11, v12, s[4:5]
	v_mov_b32_e32 v12, s6
	v_cndmask_b32_e64 v10, v12, v10, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v12, 56, v17
	v_cmp_ne_u32_e64 s[4:5], v12, s8
	v_mov_b32_e32 v13, s7
	v_mov_b32_e32 v14, s9
	v_cndmask_b32_e64 v13, v13, v14, s[4:5]
	v_mov_b32_e32 v14, s6
	v_cndmask_b32_e64 v12, v14, v12, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v14, 64, v17
	v_cmp_ne_u32_e64 s[4:5], v14, s8
	v_mov_b32_e32 v15, s7
	v_mov_b32_e32 v16, s9
	v_cndmask_b32_e64 v37, v15, v16, s[4:5]
	v_mov_b32_e32 v15, s6
	v_cndmask_b32_e64 v36, v15, v14, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v17, 6, vcc_hi
	v_add_u32_e32 v14, 0x48, v17
	v_cmp_ne_u32_e64 s[4:5], v14, s8
	v_mov_b32_e32 v15, s7
	v_mov_b32_e32 v16, s9
	v_cndmask_b32_e64 v39, v15, v16, s[4:5]
	v_mov_b32_e32 v15, s6
	v_cndmask_b32_e64 v38, v15, v14, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v35, 6, vcc_hi
	v_add_u32_e32 v14, 0x50, v35
	v_cmp_ne_u32_e64 s[4:5], v14, s8
	v_mov_b32_e32 v15, s7
	v_mov_b32_e32 v16, s9
	v_cndmask_b32_e64 v41, v15, v16, s[4:5]
	v_mov_b32_e32 v15, s6
	v_cndmask_b32_e64 v40, v15, v14, s[4:5]
	flat_store_dwordx2 v[10:11], v[0:1]
	flat_store_dwordx2 v[12:13], v[2:3]
	flat_store_dwordx2 v[36:37], v[4:5]
	flat_store_dwordx2 v[38:39], v[6:7]
	flat_store_dwordx2 v[40:41], v[8:9]
	flat_load_dwordx2 v[32:33], v[10:11]
	flat_load_dwordx2 v[0:1], v[12:13]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v1
	flat_load_dwordx2 v[0:1], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v1
	flat_load_dwordx2 v[0:1], v[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v38, v0
	v_mov_b32_e32 v39, v1
	flat_load_dwordx2 v[0:1], v[40:41]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2IS0_JS0_S0_iEvEEOT_DpOT0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v34
	v_mov_b32_e32 v3, v35
	v_mov_b32_e32 v4, v36
	v_mov_b32_e32 v5, v37
	v_mov_b32_e32 v6, v38
	v_mov_b32_e32 v7, v39
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v42, 3
	v_readlane_b32 s5, v42, 4
	v_readlane_b32 s37, v42, 2
	v_readlane_b32 s36, v42, 1
	v_readlane_b32 s35, v42, 0
	buffer_load_dword v41, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1800
	v_readlane_b32 s34, v42, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v42, off, s[0:3], s32 offset:88 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end203:
	.size	_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_, .Lfunc_end203-_ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 920
; NumSgprs: 40
; NumVgprs: 43
; ScratchSize: 456
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_ ; -- Begin function _ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	2
	.type	_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_: ; @_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end204:
	.size	_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end204-_ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_ ; -- Begin function _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_,@function
_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_: ; @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end205:
	.size	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_, .Lfunc_end205-_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_ ; -- Begin function _ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	2
	.type	_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_: ; @_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end206:
	.size	_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end206-_ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_ ; -- Begin function _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_,@function
_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_: ; @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end207:
	.size	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_, .Lfunc_end207-_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_ ; -- Begin function _ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	2
	.type	_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_: ; @_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end208:
	.size	_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end208-_ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_ ; -- Begin function _ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_,@function
_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_: ; @_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end209:
	.size	_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_, .Lfunc_end209-_ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_ ; -- Begin function _ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_
	.p2align	2
	.type	_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_,@function
_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_: ; @_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end210:
	.size	_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_, .Lfunc_end210-_ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_ ; -- Begin function _ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_
	.p2align	2
	.type	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_,@function
_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_: ; @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end211:
	.size	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_, .Lfunc_end211-_ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_ ; -- Begin function _ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_,@function
_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_: ; @_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm3EiLb0EE7_M_headERS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end212:
	.size	_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_, .Lfunc_end212-_ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm3EJiEEC2EOS0_ ; -- Begin function _ZNSt11_Tuple_implILm3EJiEEC2EOS0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm3EJiEEC2EOS0_,@function
_ZNSt11_Tuple_implILm3EJiEEC2EOS0_:     ; @_ZNSt11_Tuple_implILm3EJiEEC2EOS0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v34, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v34, s35, 0
	v_writelane_b32 v34, s30, 1
	v_writelane_b32 v34, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[6:7]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm3EJiEE7_M_headERS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm3EiLb0EEC2IiEEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v34, 1
	v_readlane_b32 s5, v34, 2
	v_readlane_b32 s35, v34, 0
	buffer_load_dword v33, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v34, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v34, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end213:
	.size	_ZNSt11_Tuple_implILm3EJiEEC2EOS0_, .Lfunc_end213-_ZNSt11_Tuple_implILm3EJiEEC2EOS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 464
; NumSgprs: 38
; NumVgprs: 35
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_ ; -- Begin function _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_,@function
_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_: ; @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end214:
	.size	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_, .Lfunc_end214-_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_ ; -- Begin function _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_,@function
_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_: ; @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end215:
	.size	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_, .Lfunc_end215-_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_ ; -- Begin function _ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_,@function
_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_:   ; @_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm2EJPdiEE7_M_tailERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRSt11_Tuple_implILm3EJiEEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm3EJiEEC2EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm3EJiEEC2EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 8
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm2EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end216:
	.size	_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_, .Lfunc_end216-_ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 676
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 168
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_ ; -- Begin function _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_,@function
_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_: ; @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end217:
	.size	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_, .Lfunc_end217-_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_ ; -- Begin function _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_,@function
_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_: ; @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end218:
	.size	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_, .Lfunc_end218-_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_ ; -- Begin function _ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_,@function
_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_: ; @_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_tailERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRSt11_Tuple_implILm2EJPdiEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm2EJPdiEEC2EOS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 16
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm1EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end219:
	.size	_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_, .Lfunc_end219-_ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 676
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 216
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_ ; -- Begin function _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_,@function
_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_: ; @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end220:
	.size	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_, .Lfunc_end220-_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_ ; -- Begin function _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_,@function
_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_: ; @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 24
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end221:
	.size	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_, .Lfunc_end221-_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_ ; -- Begin function _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_,@function
_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_: ; @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v36, s34, 3
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	buffer_store_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v36, s35, 0
	v_writelane_b32 v36, s30, 1
	v_writelane_b32 v36, s31, 2
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 24, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 32, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v35, v7, v8, s[4:5]
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v34, v7, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[34:35], v[2:3]
	flat_load_dwordx2 v[32:33], v[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_mov_b32 s35, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_tailERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRSt11_Tuple_implILm1EJPdS1_iEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm1EJPdS0_iEEC2EOS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_mov_b64 s[6:7], 24
	v_add_co_u32_e64 v32, s[4:5], v32, s6
	v_mov_b32_e32 v0, s7
	v_addc_co_u32_e64 v33, s[4:5], v33, v0, s[4:5]
	flat_load_dwordx2 v[0:1], v[34:35]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt7forwardIPdEOT_RNSt16remove_referenceIS1_E4typeE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v4, v1
	v_lshrrev_b64 v[1:2], s35, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm0EPdLb0EEC2IS0_EEOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v2, v3
	v_mov_b32_e32 v3, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v36, 1
	v_readlane_b32 s5, v36, 2
	v_readlane_b32 s35, v36, 0
	buffer_load_dword v35, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v36, 3
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v36, off, s[0:3], s32 offset:40 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end222:
	.size	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_, .Lfunc_end222-_ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 676
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 264
; MemoryBound: 0
	.text
	.weak	_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_ ; -- Begin function _ZNSt5tupleIJPdS0_S0_iEEC2EOS1_
	.p2align	2
	.type	_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_,@function
_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_:        ; @_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v4, 8, v9
	v_cmp_ne_u32_e64 s[4:5], v4, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v5, s7
	v_mov_b32_e32 v6, s9
	v_cndmask_b32_e64 v5, v5, v6, s[4:5]
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v4, v6, v4, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v9, 6, vcc_hi
	v_add_u32_e32 v6, 16, v9
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v7, s7
	v_mov_b32_e32 v8, s9
	v_cndmask_b32_e64 v7, v7, v8, s[4:5]
	v_mov_b32_e32 v8, s6
	v_cndmask_b32_e64 v6, v8, v6, s[4:5]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s4, v[0:1]
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEEC2EOS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end223:
	.size	_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_, .Lfunc_end223-_ZNSt5tupleIJPdS0_S0_iEEC2EOS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 328
; NumSgprs: 38
; NumVgprs: 37
; ScratchSize: 296
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl17get_program_stateEv ; -- Begin function _ZN8hip_impl17get_program_stateEv
	.weak	_ZN8hip_impl17get_program_stateEv
	.p2align	2
	.type	_ZN8hip_impl17get_program_stateEv,@function
_ZN8hip_impl17get_program_stateEv:      ; @_ZN8hip_impl17get_program_stateEv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s8, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x400
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZZN8hip_impl17get_program_stateEvE2ps@rel32@lo+4
	s_addc_u32 s5, s5, _ZZN8hip_impl17get_program_stateEvE2ps@rel32@hi+4
	s_mov_b32 s6, 32
	s_lshr_b64 s[6:7], s[4:5], s6
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s6
	s_sub_u32 s32, s32, 0x400
	s_mov_b32 s34, s8
	s_setpc_b64 s[30:31]
.Lfunc_end224:
	.size	_ZN8hip_impl17get_program_stateEv, .Lfunc_end224-_ZN8hip_impl17get_program_stateEv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 72
; NumSgprs: 35
; NumVgprs: 2
; ScratchSize: 16
; MemoryBound: 0
	.text
	.weak	_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_ ; -- Begin function _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_
	.p2align	2
	.type	_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_,@function
_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_: ; @_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end225:
	.size	_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_, .Lfunc_end225-_ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_ ; -- Begin function _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_
	.weak	_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_
	.p2align	2
	.type	_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_,@function
_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_: ; @_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s15, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xa00
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v4, 16, v11
	v_cmp_ne_u32_e64 s[6:7], v4, s4
	s_mov_b64 s[8:9], 0
	s_getreg_b32 s5, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s5, s5, 16
	v_mov_b32_e32 v5, s9
	v_mov_b32_e32 v6, s5
	v_cndmask_b32_e64 v5, v5, v6, s[6:7]
	v_mov_b32_e32 v6, s8
	v_cndmask_b32_e64 v4, v6, v4, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v6, 24, v11
	v_cmp_ne_u32_e64 s[6:7], v6, s4
	v_mov_b32_e32 v7, s9
	v_mov_b32_e32 v8, s5
	v_cndmask_b32_e64 v7, v7, v8, s[6:7]
	v_mov_b32_e32 v8, s8
	v_cndmask_b32_e64 v6, v8, v6, s[6:7]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v11, 6, vcc_hi
	v_add_u32_e32 v8, 32, v11
	v_cmp_ne_u32_e64 s[6:7], v8, s4
	v_mov_b32_e32 v9, s9
	v_mov_b32_e32 v10, s5
	v_cndmask_b32_e64 v9, v9, v10, s[6:7]
	v_mov_b32_e32 v10, s8
	v_cndmask_b32_e64 v8, v10, v8, s[6:7]
	flat_store_dwordx2 v[4:5], v[0:1]
	flat_store_dwordx2 v[6:7], v[2:3]
	flat_load_dwordx2 v[0:1], v[4:5]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[6:7], v0, v2
	v_addc_co_u32_e64 v1, s[6:7], v1, v3, s[6:7]
	s_mov_b64 s[10:11], -1
	v_add_co_u32_e64 v0, s[6:7], v0, s10
	v_mov_b32_e32 v2, s11
	v_addc_co_u32_e64 v1, s[6:7], v1, v2, s[6:7]
	flat_store_dwordx2 v[8:9], v[0:1]
	flat_load_dwordx2 v[0:1], v[8:9]
	flat_load_dwordx2 v[2:3], v[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f32_u32_e64 v6, v2
	s_mov_b32 s5, 32
	v_lshrrev_b64 v[4:5], s5, v[2:3]
	v_cvt_f32_u32_e64 v5, v4
	s_mov_b32 s6, 0x4f800000
	v_mac_f32_e64 v6, v5, s6
	v_rcp_f32_e64 v5, v6
	s_mov_b32 s6, 0x5f7ffffc
	v_mul_f32_e64 v5, v5, s6
	s_mov_b32 s6, 0x2f800000
	v_mul_f32_e64 v6, v5, s6
	v_trunc_f32_e64 v6, v6
	s_mov_b32 s6, 0xcf800000
	v_mac_f32_e64 v5, v6, s6
	v_cvt_u32_f32_e64 v5, v5
	v_sub_co_u32_e64 v7, s[6:7], s8, v2
	v_mov_b32_e32 v8, s9
	v_subb_co_u32_e64 v8, s[6:7], v8, v3, s[6:7]
	v_lshrrev_b64 v[8:9], s5, v[7:8]
	v_mul_lo_u32 v3, v8, v5
	v_mul_hi_u32 v11, v7, v5
	v_cvt_u32_f32_e64 v6, v6
	v_lshrrev_b64 v[9:10], s5, v[5:6]
	v_mul_lo_u32 v10, v7, v9
	v_add3_u32 v15, v11, v10, v3
	v_mul_lo_u32 v3, v5, v15
	s_mov_b32 s10, 0
	v_mov_b32_e32 v10, s10
	v_mul_hi_u32 v11, v5, v15
	v_lshlrev_b64 v[11:12], s5, v[11:12]
	v_or_b32_e32 v10, v10, v12
	v_or_b32_e32 v3, v3, v11
	v_mul_lo_u32 v13, v7, v5
	v_mul_hi_u32 v11, v5, v13
	v_mov_b32_e32 v12, s10
	v_add_co_u32_e64 v3, s[6:7], v11, v3
	v_addc_co_u32_e64 v10, s[6:7], v12, v10, s[6:7]
	v_mul_lo_u32 v11, v9, v13
	v_mov_b32_e32 v12, s10
	v_mul_hi_u32 v13, v9, v13
	v_lshlrev_b64 v[13:14], s5, v[13:14]
	v_or_b32_e32 v12, v12, v14
	v_or_b32_e32 v11, v11, v13
	v_mul_hi_u32 v13, v9, v15
	v_add_co_u32_e32 v11, vcc, v11, v3
	v_addc_co_u32_e32 v12, vcc, v10, v12, vcc
	v_mov_b32_e32 v3, s4
	v_addc_co_u32_e32 v3, vcc, v13, v3, vcc
	v_lshlrev_b64 v[13:14], s5, v[3:4]
	v_mul_lo_u32 v3, v9, v15
	v_mov_b32_e32 v9, s10
	v_or_b32_e32 v9, v9, v14
	v_or_b32_e32 v3, v3, v13
	v_lshrrev_b64 v[10:11], s5, v[11:12]
	v_add_co_u32_e64 v10, s[6:7], v10, v3
	v_addc_co_u32_e64 v11, s[6:7], v11, v9, s[6:7]
	v_add_co_u32_e64 v9, s[6:7], v5, v10
	v_lshrrev_b64 v[11:12], s5, v[10:11]
	v_addc_co_u32_e64 v10, s[8:9], v6, v11, s[6:7]
	v_lshrrev_b64 v[12:13], s5, v[9:10]
	v_mul_lo_u32 v15, v7, v9
	v_mul_lo_u32 v3, v12, v15
	v_mov_b32_e32 v5, s10
	v_mul_hi_u32 v10, v12, v15
	v_lshlrev_b64 v[13:14], s5, v[10:11]
	v_or_b32_e32 v5, v5, v14
	v_or_b32_e32 v3, v3, v13
	v_mul_lo_u32 v10, v7, v12
	v_mul_lo_u32 v8, v8, v9
	v_mul_hi_u32 v7, v7, v9
	v_add3_u32 v16, v7, v10, v8
	v_mul_lo_u32 v7, v9, v16
	v_mov_b32_e32 v8, s10
	v_mul_hi_u32 v10, v9, v16
	v_lshlrev_b64 v[13:14], s5, v[10:11]
	v_or_b32_e32 v8, v8, v14
	v_or_b32_e32 v7, v7, v13
	v_mul_hi_u32 v10, v9, v15
	v_mov_b32_e32 v13, s10
	v_add_co_u32_e64 v7, s[8:9], v10, v7
	v_addc_co_u32_e64 v8, s[8:9], v13, v8, s[8:9]
	v_mul_hi_u32 v10, v12, v16
	v_add_co_u32_e32 v7, vcc, v3, v7
	v_addc_co_u32_e32 v8, vcc, v8, v5, vcc
	v_mov_b32_e32 v3, s4
	v_addc_co_u32_e32 v3, vcc, v10, v3, vcc
	v_lshlrev_b64 v[13:14], s5, v[3:4]
	v_mul_lo_u32 v3, v12, v16
	v_mov_b32_e32 v5, s10
	v_or_b32_e32 v5, v5, v14
	v_or_b32_e32 v3, v3, v13
	v_lshrrev_b64 v[7:8], s5, v[7:8]
	v_add_co_u32_e64 v7, s[8:9], v7, v3
	v_addc_co_u32_e64 v8, s[8:9], v8, v5, s[8:9]
	v_lshrrev_b64 v[12:13], s5, v[7:8]
	v_add_u32_e64 v3, v6, v11
	v_addc_co_u32_e64 v3, s[6:7], v3, v12, s[6:7]
	v_add_co_u32_e64 v5, s[6:7], v9, v7
	v_mov_b32_e32 v6, s4
	v_addc_co_u32_e64 v6, s[6:7], v3, v6, s[6:7]
	v_lshrrev_b64 v[6:7], s5, v[5:6]
	v_mul_lo_u32 v3, v0, v6
	v_mov_b32_e32 v7, s10
	v_mul_hi_u32 v8, v0, v6
	v_lshlrev_b64 v[8:9], s5, v[8:9]
	v_or_b32_e32 v7, v7, v9
	v_or_b32_e32 v3, v3, v8
	v_mul_hi_u32 v8, v0, v5
	v_mov_b32_e32 v9, s10
	v_add_co_u32_e64 v3, s[6:7], v8, v3
	v_addc_co_u32_e64 v7, s[6:7], v9, v7, s[6:7]
	v_lshrrev_b64 v[8:9], s5, v[0:1]
	v_mul_lo_u32 v9, v8, v5
	v_mov_b32_e32 v10, s10
	v_mul_hi_u32 v5, v8, v5
	v_lshlrev_b64 v[11:12], s5, v[5:6]
	v_or_b32_e32 v5, v10, v12
	v_or_b32_e32 v9, v9, v11
	v_mul_hi_u32 v11, v8, v6
	v_add_co_u32_e32 v9, vcc, v9, v3
	v_addc_co_u32_e32 v10, vcc, v7, v5, vcc
	v_mov_b32_e32 v3, s4
	v_addc_co_u32_e32 v3, vcc, v11, v3, vcc
	v_lshlrev_b64 v[11:12], s5, v[3:4]
	v_mul_lo_u32 v3, v8, v6
	v_mov_b32_e32 v5, s10
	v_or_b32_e32 v5, v5, v12
	v_or_b32_e32 v3, v3, v11
	v_lshrrev_b64 v[6:7], s5, v[9:10]
	v_add_co_u32_e64 v6, s[6:7], v6, v3
	v_addc_co_u32_e64 v7, s[6:7], v7, v5, s[6:7]
	v_mul_lo_u32 v3, v4, v6
	v_mul_hi_u32 v5, v2, v6
	v_lshrrev_b64 v[9:10], s5, v[6:7]
	v_mul_lo_u32 v7, v2, v9
	v_add3_u32 v3, v5, v7, v3
	v_sub_u32_e64 v5, v8, v3
	v_mul_lo_u32 v6, v2, v6
	v_sub_co_u32_e64 v6, s[6:7], v0, v6
	v_subb_co_u32_e64 v5, s[8:9], v5, v4, s[6:7]
	v_sub_co_u32_e64 v7, s[8:9], v6, v2
	v_mov_b32_e32 v9, s4
	v_subb_co_u32_e64 v9, s[10:11], v5, v9, s[8:9]
	v_cmp_ge_u32_e64 s[10:11], v9, v4
	s_mov_b32 s14, -1
	v_mov_b32_e32 v10, s4
	v_mov_b32_e32 v11, s14
	v_cndmask_b32_e64 v10, v10, v11, s[10:11]
	v_cmp_eq_u32_e64 s[10:11], v9, v4
	v_cmp_ge_u32_e64 s[12:13], v7, v2
	v_mov_b32_e32 v11, s4
	v_mov_b32_e32 v12, s14
	v_cndmask_b32_e64 v11, v11, v12, s[12:13]
	v_cndmask_b32_e64 v10, v10, v11, s[10:11]
	v_cmp_ne_u32_e64 s[10:11], v10, s4
	v_subb_co_u32_e64 v5, s[8:9], v5, v4, s[8:9]
	v_sub_co_u32_e64 v10, s[8:9], v7, v2
	v_mov_b32_e32 v11, s4
	v_subb_co_u32_e64 v5, s[8:9], v5, v11, s[8:9]
	v_cndmask_b32_e64 v5, v9, v5, s[10:11]
	v_subb_co_u32_e64 v3, s[6:7], v8, v3, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v3, v4
	v_mov_b32_e32 v8, s4
	v_mov_b32_e32 v9, s14
	v_cndmask_b32_e64 v8, v8, v9, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v3, v4
	v_cmp_ge_u32_e64 s[8:9], v6, v2
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v4, s14
	v_cndmask_b32_e64 v2, v2, v4, s[8:9]
	v_cndmask_b32_e64 v2, v8, v2, s[6:7]
	v_cmp_ne_u32_e64 s[6:7], v2, s4
	v_cndmask_b32_e64 v2, v3, v5, s[6:7]
	v_cndmask_b32_e64 v3, v7, v10, s[10:11]
	v_cndmask_b32_e64 v3, v6, v3, s[6:7]
	v_sub_co_u32_e64 v0, s[6:7], v0, v3
	v_subb_co_u32_e64 v1, s[6:7], v1, v2, s[6:7]
	v_lshrrev_b64 v[1:2], s5, v[0:1]
	s_sub_u32 s32, s32, 0xa00
	s_mov_b32 s34, s15
	s_setpc_b64 s[30:31]
.Lfunc_end226:
	.size	_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_, .Lfunc_end226-_ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1508
; NumSgprs: 37
; NumVgprs: 17
; ScratchSize: 40
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_ ; -- Begin function _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_,@function
_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_: ; @_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end227:
	.size	_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_, .Lfunc_end227-_ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_ ; -- Begin function _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_,@function
_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_: ; @_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 24
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm0EPdLb0EE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end228:
	.size	_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_, .Lfunc_end228-_ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE ; -- Begin function _ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
	.p2align	2
	.type	_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE,@function
_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE: ; @_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm0EJPdS0_S0_iEE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end229:
	.size	_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE, .Lfunc_end229-_ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_ ; -- Begin function _ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
	.p2align	2
	.type	_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_,@function
_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_: ; @_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt12__get_helperILm0EPdJS0_S0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end230:
	.size	_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_, .Lfunc_end230-_ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_ ; -- Begin function _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_,@function
_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_: ; @_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end231:
	.size	_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_, .Lfunc_end231-_ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_ ; -- Begin function _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_,@function
_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_: ; @_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 16
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm1EPdLb0EE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end232:
	.size	_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_, .Lfunc_end232-_ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE ; -- Begin function _ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
	.p2align	2
	.type	_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE,@function
_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE: ; @_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm1EJPdS0_iEE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end233:
	.size	_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE, .Lfunc_end233-_ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_ ; -- Begin function _ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
	.p2align	2
	.type	_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_,@function
_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_: ; @_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt12__get_helperILm1EPdJS0_iEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end234:
	.size	_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_, .Lfunc_end234-_ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_ ; -- Begin function _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_,@function
_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_: ; @_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end235:
	.size	_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_, .Lfunc_end235-_ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_ ; -- Begin function _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_,@function
_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_: ; @_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b64 s[6:7], 8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_co_u32_e64 v0, s[4:5], v0, s6
	v_mov_b32_e32 v2, s7
	v_addc_co_u32_e64 v1, s[4:5], v1, v2, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm2EPdLb0EE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end236:
	.size	_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_, .Lfunc_end236-_ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 272
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE ; -- Begin function _ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
	.p2align	2
	.type	_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE,@function
_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE: ; @_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm2EJPdiEE7_M_headERKS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end237:
	.size	_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE, .Lfunc_end237-_ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_ ; -- Begin function _ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
	.p2align	2
	.type	_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_,@function
_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_: ; @_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt12__get_helperILm2EPdJiEERKT0_RKSt11_Tuple_implIXT_EJS1_DpT1_EE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end238:
	.size	_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_, .Lfunc_end238-_ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.weak	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_ ; -- Begin function _ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_
	.p2align	2
	.type	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_,@function
_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_: ; @_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s9, s34
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x600
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_sub_u32 s32, s32, 0x600
	s_mov_b32 s34, s9
	s_setpc_b64 s[30:31]
.Lfunc_end239:
	.size	_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_, .Lfunc_end239-_ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 136
; NumSgprs: 37
; NumVgprs: 6
; ScratchSize: 24
; MemoryBound: 0
	.text
	.weak	_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_ ; -- Begin function _ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_
	.p2align	2
	.type	_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_,@function
_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_: ; @_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt10_Head_baseILm3EiLb0EE7_M_headERKS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end240:
	.size	_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_, .Lfunc_end240-_ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 56
; MemoryBound: 0
	.text
	.weak	_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE ; -- Begin function _ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
	.p2align	2
	.type	_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE,@function
_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE: ; @_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt11_Tuple_implILm3EJiEE7_M_headERKS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end241:
	.size	_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE, .Lfunc_end241-_ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 88
; MemoryBound: 0
	.text
	.weak	_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_ ; -- Begin function _ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
	.p2align	2
	.type	_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_,@function
_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_: ; @_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x800
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s4, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 16, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s4
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s6, 16
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	v_mov_b32_e32 v4, s6
	v_cndmask_b32_e64 v2, v4, v2, s[4:5]
	flat_store_dwordx2 v[2:3], v[0:1]
	flat_load_dwordx2 v[0:1], v[2:3]
	s_mov_b32 s4, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s4, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt12__get_helperILm3EiJEERKT0_RKSt11_Tuple_implIXT_EJS0_DpT1_EE@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0x800
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:24 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end242:
	.size	_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_, .Lfunc_end242-_ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 248
; NumSgprs: 37
; NumVgprs: 33
; ScratchSize: 120
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_ ; -- Begin function _ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.weak	_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.p2align	2
	.type	_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_,@function
_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_: ; @_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v32, off, s[0:3], s32 offset:32 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v32, s34, 2
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0xc00
	v_writelane_b32 v32, s30, 0
	v_writelane_b32 v32, s31, 1
	s_mov_b32 s8, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v7, 8, v14
	v_cmp_ne_u32_e64 s[4:5], v7, s8
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s9, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s9, s9, 16
	v_mov_b32_e32 v8, s7
	v_mov_b32_e32 v9, s9
	v_cndmask_b32_e64 v8, v8, v9, s[4:5]
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v7, v9, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v9, 16, v14
	v_cmp_ne_u32_e64 s[4:5], v9, s8
	v_mov_b32_e32 v10, s7
	v_mov_b32_e32 v11, s9
	v_cndmask_b32_e64 v10, v10, v11, s[4:5]
	v_mov_b32_e32 v11, s6
	v_cndmask_b32_e64 v9, v11, v9, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 24, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s8
	v_mov_b32_e32 v12, s7
	v_mov_b32_e32 v13, s9
	v_cndmask_b32_e64 v12, v12, v13, s[4:5]
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v11, v13, v11, s[4:5]
	flat_store_dwordx2 v[7:8], v[0:1]
	flat_store_dwordx2 v[9:10], v[2:3]
	flat_store_dwordx2 v[11:12], v[4:5]
	v_cmp_ne_u32_e64 s[4:5], v6, s8
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v2, v2, v6, s[4:5]
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s9
	v_cndmask_b32_e64 v3, v3, v4, s[4:5]
	s_mov_b32 s4, 32
	v_lshrrev_b64 v[3:4], s4, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v32, 0
	v_readlane_b32 s5, v32, 1
	s_sub_u32 s32, s32, 0xc00
	v_readlane_b32 s34, v32, 2
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v32, off, s[0:3], s32 offset:32 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end243:
	.size	_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_, .Lfunc_end243-_ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 392
; NumSgprs: 48
; NumVgprs: 33
; ScratchSize: 16432
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_ ; -- Begin function _ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.weak	_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.p2align	2
	.type	_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_,@function
_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_: ; @_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v47, s34, 9
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v47, s35, 0
	v_writelane_b32 v47, s36, 1
	v_writelane_b32 v47, s37, 2
	v_writelane_b32 v47, s38, 3
	v_writelane_b32 v47, s39, 4
	v_writelane_b32 v47, s40, 5
	v_writelane_b32 v47, s41, 6
	v_writelane_b32 v47, s30, 7
	v_writelane_b32 v47, s31, 8
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v46, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v0, 64, v10
	v_cmp_ne_u32_e64 s[4:5], v0, v46
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v1, v1, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v0, v7, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v43, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v42, v8, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x50, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v45, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v44, v8, v7, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v39, 6, s40
	v_add_u32_e32 v7, 0x58, v39
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v35, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v34, v8, v7, s[4:5]
	flat_store_dwordx2 v[0:1], v[32:33]
	flat_store_dwordx2 v[42:43], v[2:3]
	flat_store_dwordx2 v[44:45], v[4:5]
	v_cmp_ne_u32_e64 s[4:5], v6, v46
	v_mov_b32_e32 v0, s36
	v_cndmask_b32_e64 v41, v0, v6, s[4:5]
	v_mov_b32_e32 v0, s37
	v_mov_b32_e32 v1, s6
	v_cndmask_b32_e64 v1, v0, v1, s[4:5]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[36:37], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@hi+4
	s_load_dwordx2 s[38:39], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 3
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@hi+4
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v1, v38
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[40:41], s[4:5], 0x0
	v_mov_b32_e32 v2, 3
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[40:41]
	v_add_co_u32_e64 v2, s[4:5], v37, v0
	v_addc_co_u32_e64 v3, s[4:5], v38, v1, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_swappc_b64 s[30:31], s[38:39]
	v_add_co_u32_e64 v37, s[4:5], v37, v0
	v_addc_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 3
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_sub_co_u32_e64 v37, s[4:5], v37, v0
	v_subb_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[42:43]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt3getILm3EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 3
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v1
	v_lshrrev_b64 v[1:2], s35, v[37:38]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, memcpy@gotpcrel32@lo+4
	s_addc_u32 s5, s5, memcpy@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v2, v39
	v_mov_b32_e32 v3, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[37:38], v[42:43]
	flat_load_dwordx2 v[39:40], v[44:45]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[41:42], s35, v[34:35]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[34:35], s[36:37]
	v_cndmask_b32_e64 v7, v46, v34, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[37:38]
	v_lshrrev_b64 v[5:6], s35, v[39:40]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargILm4EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@hi+4
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v37
	v_mov_b32_e32 v4, v39
	v_mov_b32_e32 v6, v7
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v47, 7
	v_readlane_b32 s5, v47, 8
	v_readlane_b32 s41, v47, 6
	v_readlane_b32 s40, v47, 5
	v_readlane_b32 s39, v47, 4
	v_readlane_b32 s38, v47, 3
	v_readlane_b32 s37, v47, 2
	v_readlane_b32 s36, v47, 1
	v_readlane_b32 s35, v47, 0
	buffer_load_dword v46, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v47, 9
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end244:
	.size	_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_, .Lfunc_end244-_ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1604
; NumSgprs: 48
; NumVgprs: 48
; ScratchSize: 16544
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_ ; -- Begin function _ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.weak	_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.p2align	2
	.type	_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_,@function
_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_: ; @_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v47, s34, 9
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v47, s35, 0
	v_writelane_b32 v47, s36, 1
	v_writelane_b32 v47, s37, 2
	v_writelane_b32 v47, s38, 3
	v_writelane_b32 v47, s39, 4
	v_writelane_b32 v47, s40, 5
	v_writelane_b32 v47, s41, 6
	v_writelane_b32 v47, s30, 7
	v_writelane_b32 v47, s31, 8
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v46, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v0, 64, v10
	v_cmp_ne_u32_e64 s[4:5], v0, v46
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v1, v1, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v0, v7, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v43, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v42, v8, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x50, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v45, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v44, v8, v7, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v39, 6, s40
	v_add_u32_e32 v7, 0x58, v39
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v35, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v34, v8, v7, s[4:5]
	flat_store_dwordx2 v[0:1], v[32:33]
	flat_store_dwordx2 v[42:43], v[2:3]
	flat_store_dwordx2 v[44:45], v[4:5]
	v_cmp_ne_u32_e64 s[4:5], v6, v46
	v_mov_b32_e32 v0, s36
	v_cndmask_b32_e64 v41, v0, v6, s[4:5]
	v_mov_b32_e32 v0, s37
	v_mov_b32_e32 v1, s6
	v_cndmask_b32_e64 v1, v0, v1, s[4:5]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[36:37], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@hi+4
	s_load_dwordx2 s[38:39], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 2
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@hi+4
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v1, v38
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[40:41], s[4:5], 0x0
	v_mov_b32_e32 v2, 2
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[40:41]
	v_add_co_u32_e64 v2, s[4:5], v37, v0
	v_addc_co_u32_e64 v3, s[4:5], v38, v1, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_swappc_b64 s[30:31], s[38:39]
	v_add_co_u32_e64 v37, s[4:5], v37, v0
	v_addc_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 2
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_sub_co_u32_e64 v37, s[4:5], v37, v0
	v_subb_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[42:43]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt3getILm2EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 2
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v1
	v_lshrrev_b64 v[1:2], s35, v[37:38]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, memcpy@gotpcrel32@lo+4
	s_addc_u32 s5, s5, memcpy@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v2, v39
	v_mov_b32_e32 v3, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[37:38], v[42:43]
	flat_load_dwordx2 v[39:40], v[44:45]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[41:42], s35, v[34:35]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[34:35], s[36:37]
	v_cndmask_b32_e64 v7, v46, v34, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[37:38]
	v_lshrrev_b64 v[5:6], s35, v[39:40]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargILm3EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@hi+4
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v37
	v_mov_b32_e32 v4, v39
	v_mov_b32_e32 v6, v7
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v47, 7
	v_readlane_b32 s5, v47, 8
	v_readlane_b32 s41, v47, 6
	v_readlane_b32 s40, v47, 5
	v_readlane_b32 s39, v47, 4
	v_readlane_b32 s38, v47, 3
	v_readlane_b32 s37, v47, 2
	v_readlane_b32 s36, v47, 1
	v_readlane_b32 s35, v47, 0
	buffer_load_dword v46, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v47, 9
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end245:
	.size	_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_, .Lfunc_end245-_ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1604
; NumSgprs: 48
; NumVgprs: 48
; ScratchSize: 16656
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_ ; -- Begin function _ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.weak	_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.p2align	2
	.type	_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_,@function
_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_: ; @_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v47, s34, 9
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v47, s35, 0
	v_writelane_b32 v47, s36, 1
	v_writelane_b32 v47, s37, 2
	v_writelane_b32 v47, s38, 3
	v_writelane_b32 v47, s39, 4
	v_writelane_b32 v47, s40, 5
	v_writelane_b32 v47, s41, 6
	v_writelane_b32 v47, s30, 7
	v_writelane_b32 v47, s31, 8
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v46, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v0, 64, v10
	v_cmp_ne_u32_e64 s[4:5], v0, v46
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v1, v1, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v0, v7, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v43, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v42, v8, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x50, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v45, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v44, v8, v7, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v39, 6, s40
	v_add_u32_e32 v7, 0x58, v39
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v35, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v34, v8, v7, s[4:5]
	flat_store_dwordx2 v[0:1], v[32:33]
	flat_store_dwordx2 v[42:43], v[2:3]
	flat_store_dwordx2 v[44:45], v[4:5]
	v_cmp_ne_u32_e64 s[4:5], v6, v46
	v_mov_b32_e32 v0, s36
	v_cndmask_b32_e64 v41, v0, v6, s[4:5]
	v_mov_b32_e32 v0, s37
	v_mov_b32_e32 v1, s6
	v_cndmask_b32_e64 v1, v0, v1, s[4:5]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[36:37], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@hi+4
	s_load_dwordx2 s[38:39], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 1
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@hi+4
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v1, v38
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[40:41], s[4:5], 0x0
	v_mov_b32_e32 v2, 1
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[40:41]
	v_add_co_u32_e64 v2, s[4:5], v37, v0
	v_addc_co_u32_e64 v3, s[4:5], v38, v1, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_swappc_b64 s[30:31], s[38:39]
	v_add_co_u32_e64 v37, s[4:5], v37, v0
	v_addc_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 1
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_sub_co_u32_e64 v37, s[4:5], v37, v0
	v_subb_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[42:43]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt3getILm1EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 1
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v1
	v_lshrrev_b64 v[1:2], s35, v[37:38]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, memcpy@gotpcrel32@lo+4
	s_addc_u32 s5, s5, memcpy@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v2, v39
	v_mov_b32_e32 v3, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[37:38], v[42:43]
	flat_load_dwordx2 v[39:40], v[44:45]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[41:42], s35, v[34:35]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[34:35], s[36:37]
	v_cndmask_b32_e64 v7, v46, v34, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[37:38]
	v_lshrrev_b64 v[5:6], s35, v[39:40]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargILm2EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@hi+4
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v37
	v_mov_b32_e32 v4, v39
	v_mov_b32_e32 v6, v7
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v47, 7
	v_readlane_b32 s5, v47, 8
	v_readlane_b32 s41, v47, 6
	v_readlane_b32 s40, v47, 5
	v_readlane_b32 s39, v47, 4
	v_readlane_b32 s38, v47, 3
	v_readlane_b32 s37, v47, 2
	v_readlane_b32 s36, v47, 1
	v_readlane_b32 s35, v47, 0
	buffer_load_dword v46, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v47, 9
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end246:
	.size	_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_, .Lfunc_end246-_ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1604
; NumSgprs: 48
; NumVgprs: 48
; ScratchSize: 16768
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_ ; -- Begin function _ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.weak	_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
	.p2align	2
	.type	_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_,@function
_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_: ; @_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v47, s34, 9
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x1c00
	buffer_store_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v47, s35, 0
	v_writelane_b32 v47, s36, 1
	v_writelane_b32 v47, s37, 2
	v_writelane_b32 v47, s38, 3
	v_writelane_b32 v47, s39, 4
	v_writelane_b32 v47, s40, 5
	v_writelane_b32 v47, s41, 6
	v_writelane_b32 v47, s30, 7
	v_writelane_b32 v47, s31, 8
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v46, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v0, 64, v10
	v_cmp_ne_u32_e64 s[4:5], v0, v46
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v1, v1, v7, s[4:5]
	v_mov_b32_e32 v7, s36
	v_cndmask_b32_e64 v0, v7, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x48, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v43, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v42, v8, v7, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v10, 6, vcc_hi
	v_add_u32_e32 v7, 0x50, v10
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v45, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v44, v8, v7, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v39, 6, s40
	v_add_u32_e32 v7, 0x58, v39
	v_cmp_ne_u32_e64 s[4:5], v7, v46
	v_mov_b32_e32 v8, s37
	v_mov_b32_e32 v9, s6
	v_cndmask_b32_e64 v35, v8, v9, s[4:5]
	v_mov_b32_e32 v8, s36
	v_cndmask_b32_e64 v34, v8, v7, s[4:5]
	flat_store_dwordx2 v[0:1], v[32:33]
	flat_store_dwordx2 v[42:43], v[2:3]
	flat_store_dwordx2 v[44:45], v[4:5]
	v_cmp_ne_u32_e64 s[4:5], v6, v46
	v_mov_b32_e32 v0, s36
	v_cndmask_b32_e64 v41, v0, v6, s[4:5]
	v_mov_b32_e32 v0, s37
	v_mov_b32_e32 v1, s6
	v_cndmask_b32_e64 v1, v0, v1, s[4:5]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[36:37], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@hi+4
	s_load_dwordx2 s[38:39], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align9alignmentEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl37round_up_to_next_multiple_nonnegativeImLPv0EEET_S2_S2_@rel32@hi+4
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v1, v38
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNK8hip_impl19kernargs_size_align4sizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[40:41], s[4:5], 0x0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[40:41]
	v_add_co_u32_e64 v2, s[4:5], v37, v0
	v_addc_co_u32_e64 v3, s[4:5], v38, v1, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg6resizeEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v37, v0
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_swappc_b64 s[30:31], s[38:39]
	v_add_co_u32_e64 v37, s[4:5], v37, v0
	v_addc_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_sub_co_u32_e64 v37, s[4:5], v37, v0
	v_subb_co_u32_e64 v38, s[4:5], v38, v1, s[4:5]
	flat_load_dwordx2 v[0:1], v[42:43]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt3getILm0EJPdS0_S0_iEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v39, v0
	v_mov_b32_e32 v40, v1
	flat_load_dwordx2 v[0:1], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	s_swappc_b64 s[30:31], s[40:41]
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v5, v1
	v_lshrrev_b64 v[1:2], s35, v[37:38]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, memcpy@gotpcrel32@lo+4
	s_addc_u32 s5, s5, memcpy@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v2, v39
	v_mov_b32_e32 v3, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[37:38], v[42:43]
	flat_load_dwordx2 v[39:40], v[44:45]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v41
	v_mov_b32_e32 v1, v36
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[41:42], s35, v[34:35]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[34:35], s[36:37]
	v_cndmask_b32_e64 v7, v46, v34, s[4:5]
	v_lshrrev_b64 v[3:4], s35, v[37:38]
	v_lshrrev_b64 v[5:6], s35, v[39:40]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargILm1EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@hi+4
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v37
	v_mov_b32_e32 v4, v39
	v_mov_b32_e32 v6, v7
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v41
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v47, 7
	v_readlane_b32 s5, v47, 8
	v_readlane_b32 s41, v47, 6
	v_readlane_b32 s40, v47, 5
	v_readlane_b32 s39, v47, 4
	v_readlane_b32 s38, v47, 3
	v_readlane_b32 s37, v47, 2
	v_readlane_b32 s36, v47, 1
	v_readlane_b32 s35, v47, 0
	buffer_load_dword v46, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x1c00
	v_readlane_b32 s34, v47, 9
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v47, off, s[0:3], s32 offset:96 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end247:
	.size	_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_, .Lfunc_end247-_ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1604
; NumSgprs: 48
; NumVgprs: 48
; ScratchSize: 16880
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE ; -- Begin function _ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE
	.weak	_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE
	.p2align	2
	.type	_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE,@function
_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE: ; @_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v49, off, s[0:3], s32 offset:156 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v49, s34, 5
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x2800
	buffer_store_dword v32, off, s[0:3], s34 offset:64 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:60 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v47, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v48, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v49, s35, 0
	v_writelane_b32 v49, s36, 1
	v_writelane_b32 v49, s37, 2
	v_writelane_b32 v49, s30, 3
	v_writelane_b32 v49, s31, 4
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v48, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v0, 0x48, v8
	v_cmp_ne_u32_e64 s[4:5], v0, v48
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v5, s6
	v_cndmask_b32_e64 v1, v1, v5, s[4:5]
	v_mov_b32_e32 v5, s36
	v_cndmask_b32_e64 v0, v5, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x50, v8
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v45, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v44, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x58, v8
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v42, v6, v5, s[4:5]
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v38, v5, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x78, v8
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v43, v6, v5, s[4:5]
	v_mov_b32_e32 v5, s37
	v_mov_b32_e32 v6, s6
	v_cndmask_b32_e64 v40, v5, v6, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x80, v8
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v47, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v46, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v8, 6, vcc_hi
	v_add_u32_e32 v5, 0x88, v8
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v35, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v34, v6, v5, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v41, 6, vcc_hi
	v_add_u32_e32 v5, 0x90, v41
	v_cmp_ne_u32_e64 s[4:5], v5, v48
	v_mov_b32_e32 v6, s37
	v_mov_b32_e32 v7, s6
	v_cndmask_b32_e64 v37, v6, v7, s[4:5]
	v_mov_b32_e32 v6, s36
	v_cndmask_b32_e64 v36, v6, v5, s[4:5]
	flat_store_dwordx2 v[0:1], v[32:33]
	flat_store_dwordx2 v[44:45], v[2:3]
	v_cmp_ne_u32_e64 s[4:5], v4, v48
	v_mov_b32_e32 v0, s36
	v_cndmask_b32_e64 v0, v0, v4, s[4:5]
	v_mov_b32_e32 v1, s37
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v1, v1, v2, s[4:5]
	s_mov_b32 s35, 32
	v_lshrrev_b64 v[1:2], s35, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRSt5tupleIJPdS1_S1_iEEEONSt16remove_referenceIT_E4typeEOS5_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[38:39], s35, v[37:38]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt5tupleIJPdS0_S0_iEEC2EOS1_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt5tupleIJPdS0_S0_iEEC2EOS1_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v42
	v_mov_b32_e32 v1, v38
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_lshrrev_b64 v[39:40], s35, v[39:40]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v43
	v_mov_b32_e32 v1, v39
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg7reserveEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg7reserveEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v43
	v_mov_b32_e32 v1, v39
	v_mov_b32_e32 v2, s35
	v_mov_b32_e32 v3, 0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl17get_program_stateEv@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl17get_program_stateEv@rel32@hi+4
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[46:47], v[0:1]
	flat_load_dwordx2 v[0:1], v[46:47]
	flat_load_dwordx2 v[2:3], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[5:6], s35, v[0:1]
	v_lshrrev_b64 v[3:4], s35, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl13program_state23get_kernargs_size_alignEm@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl13program_state23get_kernargs_size_alignEm@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v5
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[34:35], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRN8hip_impl7kernargEEONSt16remove_referenceIT_E4typeEOS4_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v43
	v_mov_b32_e32 v1, v39
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v2, v0
	v_mov_b32_e32 v3, v1
	v_lshrrev_b64 v[40:41], s35, v[36:37]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargC1EOS0_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v36
	v_mov_b32_e32 v1, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[36:37], s[36:37]
	v_cndmask_b32_e64 v7, v48, v36, s[4:5]
	v_lshrrev_b64 v[5:6], s35, v[34:35]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargILm0EJPdS1_S1_iELPv0EEENS_7kernargERKSt5tupleIJDpT0_EERKNS_19kernargs_size_alignES3_@rel32@hi+4
	v_mov_b32_e32 v0, v32
	v_mov_b32_e32 v1, v33
	v_mov_b32_e32 v2, v42
	v_mov_b32_e32 v3, v38
	v_mov_b32_e32 v4, v34
	v_mov_b32_e32 v6, v7
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v0, v36
	v_mov_b32_e32 v1, v40
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	v_mov_b32_e32 v0, v43
	v_mov_b32_e32 v1, v39
	s_swappc_b64 s[30:31], s[36:37]
	v_readlane_b32 s4, v49, 3
	v_readlane_b32 s5, v49, 4
	v_readlane_b32 s37, v49, 2
	v_readlane_b32 s36, v49, 1
	v_readlane_b32 s35, v49, 0
	buffer_load_dword v48, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v47, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v46, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:60 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:64 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x2800
	v_readlane_b32 s34, v49, 5
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v49, off, s[0:3], s32 offset:156 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end248:
	.size	_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE, .Lfunc_end248-_ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1460
; NumSgprs: 48
; NumVgprs: 50
; ScratchSize: 17040
; MemoryBound: 0
	.text
	.hidden	_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv ; -- Begin function _ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv
	.weak	_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv
	.p2align	2
	.type	_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv,@function
_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv: ; @_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v52, off, s[0:3], s32 offset:160 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v52, s34, 6
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x2c00
	buffer_store_dword v32, off, s[0:3], s34 offset:76 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:72 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:68 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:64 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:60 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v47, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v48, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v49, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v50, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v51, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v52, s35, 0
	v_writelane_b32 v52, s36, 1
	v_writelane_b32 v52, s37, 2
	v_writelane_b32 v52, s38, 3
	v_writelane_b32 v52, s30, 4
	v_writelane_b32 v52, s31, 5
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x58, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v33, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v32, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x60, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v37, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v36, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x68, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v39, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v38, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x70, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v41, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v40, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x78, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v43, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v42, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x80, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v45, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v44, v12, v11, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v14, 6, vcc_hi
	v_add_u32_e32 v11, 0x88, v14
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v47, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v46, v12, v11, s[4:5]
	s_sub_u32 s38, s34, s33
	v_lshrrev_b32_e64 v35, 6, s38
	v_add_u32_e32 v11, 0x90, v35
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v49, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v48, v12, v11, s[4:5]
	s_sub_u32 s38, s34, s33
	v_lshrrev_b32_e64 v35, 6, s38
	v_add_u32_e32 v11, 0x98, v35
	v_cmp_ne_u32_e64 s[4:5], v11, s35
	v_mov_b32_e32 v12, s37
	v_mov_b32_e32 v13, s6
	v_cndmask_b32_e64 v51, v12, v13, s[4:5]
	v_mov_b32_e32 v12, s36
	v_cndmask_b32_e64 v50, v12, v11, s[4:5]
	flat_store_dwordx2 v[32:33], v[0:1]
	flat_store_dwordx2 v[36:37], v[2:3]
	flat_store_dwordx2 v[38:39], v[4:5]
	flat_store_dword v[40:41], v6
	flat_store_dwordx2 v[42:43], v[7:8]
	flat_store_dwordx2 v[44:45], v[9:10]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl17get_program_stateEv@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl17get_program_stateEv@rel32@hi+4
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v1
	flat_load_dwordx2 v[32:33], v[32:33]
	flat_load_dwordx2 v[0:1], v[42:43]
	s_mov_b32 s38, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12target_agentEP12ihipStream_t@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12target_agentEP12ihipStream_t@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[50:51], v[0:1]
	v_cmp_ne_u64_e64 s[4:5], v[50:51], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v0, v0, v50, s[4:5]
	buffer_load_dword v1, v0, s[0:3], s33 offen
	buffer_load_dword v0, v0, s[0:3], s33 offen offset:4
	s_waitcnt vmcnt(0) lgkmcnt(0)
	buffer_store_dword v0, off, s[0:3], s32 offset:4
	buffer_store_dword v1, off, s[0:3], s32
	v_lshrrev_b64 v[3:4], s38, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl13program_state17kernel_descriptorEm11hsa_agent_s@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl13program_state17kernel_descriptorEm11hsa_agent_s@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v34
	v_mov_b32_e32 v1, v35
	v_mov_b32_e32 v2, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[48:49], v[0:1]
	flat_store_dwordx2 v[46:47], v[48:49]
	flat_load_dwordx2 v[0:1], v[46:47]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dwordx2 v[0:1], v[0:1]
	flat_load_dwordx2 v[4:5], v[36:37]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v12, v[4:5]
	flat_load_dword v3, v[4:5] offset:4
	flat_load_dword v4, v[4:5] offset:8
	flat_load_dwordx2 v[7:8], v[38:39]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v5, v[7:8]
	flat_load_dword v6, v[7:8] offset:4
	flat_load_dword v7, v[7:8] offset:8
	flat_load_dword v8, v[40:41]
	flat_load_dwordx2 v[9:10], v[42:43]
	flat_load_dwordx2 v[13:14], v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[10:11], s38, v[9:10]
	v_lshrrev_b64 v[14:15], s38, v[13:14]
	v_lshrrev_b64 v[1:2], s38, v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hipModuleLaunchKernel@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hipModuleLaunchKernel@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v2, v12
	v_mov_b32_e32 v11, s35
	v_mov_b32_e32 v12, s35
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v52, 4
	v_readlane_b32 s5, v52, 5
	v_readlane_b32 s38, v52, 3
	v_readlane_b32 s37, v52, 2
	v_readlane_b32 s36, v52, 1
	v_readlane_b32 s35, v52, 0
	buffer_load_dword v51, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v50, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v49, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v48, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v47, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v46, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:60 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:64 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:68 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:72 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:76 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x2c00
	v_readlane_b32 s34, v52, 6
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v52, off, s[0:3], s32 offset:160 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end249:
	.size	_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv, .Lfunc_end249-_ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 1492
; NumSgprs: 48
; NumVgprs: 53
; ScratchSize: 16560
; MemoryBound: 1
	.text
	.hidden	_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_ ; -- Begin function _Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_
	.weak	_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_
	.p2align	2
	.type	_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_,@function
_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_: ; @_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v60, off, s[0:3], s32 offset:280 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v60, s34, 8
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x4800
	buffer_store_dword v32, off, s[0:3], s34 offset:108 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:104 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:100 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:96 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:92 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:88 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:84 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:80 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:76 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:72 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:68 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:64 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:60 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v47, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v48, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v49, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v50, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v51, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v52, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v53, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v54, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v55, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v56, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v57, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v58, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v59, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v60, s35, 0
	v_writelane_b32 v60, s36, 1
	v_writelane_b32 v60, s37, 2
	v_writelane_b32 v60, s38, 3
	v_writelane_b32 v60, s39, 4
	v_writelane_b32 v60, s40, 5
	v_writelane_b32 v60, s30, 6
	v_writelane_b32 v60, s31, 7
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0x78, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	s_mov_b64 s[36:37], 0
	s_getreg_b32 s6, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s6, s6, 16
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v48, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v47, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0x80, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v50, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v49, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0x88, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v52, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v51, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0x90, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v54, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v53, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0x98, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v56, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v55, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xa0, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v33, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v32, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xa8, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v35, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v34, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xb0, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v37, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v36, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xb8, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v39, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v38, v17, v16, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xc0, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v46, v17, v16, s[4:5]
	v_mov_b32_e32 v16, s37
	v_mov_b32_e32 v17, s6
	v_cndmask_b32_e64 v57, v16, v17, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v19, 6, vcc_hi
	v_add_u32_e32 v16, 0xc8, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v41, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v40, v17, v16, s[4:5]
	s_sub_u32 s38, s34, s33
	v_lshrrev_b32_e64 v19, 6, s38
	v_add_u32_e32 v16, 0xe8, v19
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v59, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v58, v17, v16, s[4:5]
	s_sub_u32 s38, s34, s33
	v_lshrrev_b32_e64 v44, 6, s38
	v_add_u32_e32 v16, 0xf0, v44
	v_cmp_ne_u32_e64 s[4:5], v16, s35
	v_mov_b32_e32 v17, s37
	v_mov_b32_e32 v18, s6
	v_cndmask_b32_e64 v43, v17, v18, s[4:5]
	v_mov_b32_e32 v17, s36
	v_cndmask_b32_e64 v42, v17, v16, s[4:5]
	flat_store_dwordx2 v[47:48], v[0:1]
	flat_store_dwordx2 v[49:50], v[2:3]
	flat_store_dwordx2 v[51:52], v[4:5]
	flat_store_dword v[53:54], v6
	flat_store_dwordx2 v[55:56], v[7:8]
	flat_store_dwordx2 v[32:33], v[9:10]
	flat_store_dwordx2 v[34:35], v[11:12]
	flat_store_dwordx2 v[36:37], v[13:14]
	flat_store_dword v[38:39], v15
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl8hip_initEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl8hip_initEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dwordx2 v[44:45], v[47:48]
	s_mov_b32 s40, 32
	v_lshrrev_b64 v[1:2], s40, v[32:33]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRPdEONSt16remove_referenceIT_E4typeEOS3_@gotpcrel32@hi+4
	s_load_dwordx2 s[38:39], s[4:5], 0x0
	v_mov_b32_e32 v0, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v32, v0
	v_mov_b32_e32 v33, v1
	v_lshrrev_b64 v[1:2], s40, v[34:35]
	v_mov_b32_e32 v0, v34
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v34, v0
	v_mov_b32_e32 v35, v1
	v_lshrrev_b64 v[1:2], s40, v[36:37]
	v_mov_b32_e32 v0, v36
	s_swappc_b64 s[30:31], s[38:39]
	v_mov_b32_e32 v36, v0
	v_mov_b32_e32 v37, v1
	v_lshrrev_b64 v[1:2], s40, v[38:39]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v38
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v9, v1
	v_lshrrev_b64 v[1:2], s40, v[40:41]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZNSt5tupleIJPdS0_S0_iEEC2IJS0_S0_S0_iELb1EEEDpOT_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v40
	v_mov_b32_e32 v2, v32
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v34
	v_mov_b32_e32 v5, v35
	v_mov_b32_e32 v6, v36
	v_mov_b32_e32 v7, v37
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_cmp_ne_u64_e64 s[4:5], v[40:41], s[36:37]
	v_mov_b32_e32 v0, s35
	v_cndmask_b32_e64 v5, v0, v40, s[4:5]
	v_lshrrev_b64 v[3:4], s40, v[44:45]
	v_lshrrev_b64 v[32:33], s40, v[56:57]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl12make_kernargIJPdS1_S1_iEJS1_S1_S1_iEEENS_7kernargEPFvDpT_ESt5tupleIJDpT0_EE@rel32@hi+4
	v_mov_b32_e32 v0, v46
	v_mov_b32_e32 v1, v32
	v_mov_b32_e32 v2, v44
	v_mov_b32_e32 v4, v5
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4sizeEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v46
	v_mov_b32_e32 v1, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[58:59], v[0:1]
	s_mov_b64 s[4:5], 1
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s5
	flat_store_dwordx2 v[42:43], v[0:1]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernarg4dataEv@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v46
	v_mov_b32_e32 v1, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dwordx2 v[42:43], v[0:1] offset:8
	s_mov_b64 s[4:5], 2
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s5
	flat_store_dwordx2 v[42:43], v[0:1] offset:16
	flat_store_dwordx2 v[42:43], v[58:59] offset:24
	s_mov_b64 s[4:5], 3
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s5
	flat_store_dwordx2 v[42:43], v[0:1] offset:32
	flat_load_dwordx2 v[0:1], v[47:48]
	flat_load_dwordx2 v[2:3], v[49:50]
	flat_load_dwordx2 v[4:5], v[51:52]
	flat_load_dword v14, v[53:54]
	flat_load_dwordx2 v[7:8], v[55:56]
	v_lshrrev_b64 v[10:11], s40, v[42:43]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[11:12], s40, v[0:1]
	v_lshrrev_b64 v[12:13], s40, v[2:3]
	v_lshrrev_b64 v[5:6], s40, v[4:5]
	v_lshrrev_b64 v[8:9], s40, v[7:8]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv@rel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl22hipLaunchKernelGGLImplEmRK4dim3S2_jP12ihipStream_tPPv@rel32@hi+4
	v_mov_b32_e32 v1, v11
	v_mov_b32_e32 v3, v12
	v_mov_b32_e32 v6, v14
	v_mov_b32_e32 v9, v42
	s_swappc_b64 s[30:31], s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN8hip_impl7kernargD1Ev@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN8hip_impl7kernargD1Ev@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v0, v46
	v_mov_b32_e32 v1, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	v_readlane_b32 s4, v60, 6
	v_readlane_b32 s5, v60, 7
	v_readlane_b32 s40, v60, 5
	v_readlane_b32 s39, v60, 4
	v_readlane_b32 s38, v60, 3
	v_readlane_b32 s37, v60, 2
	v_readlane_b32 s36, v60, 1
	v_readlane_b32 s35, v60, 0
	buffer_load_dword v59, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v58, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v57, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v56, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v55, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v54, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v53, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v52, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v51, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v50, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v49, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v48, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v47, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v46, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:60 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:64 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:68 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:72 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:76 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:80 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:84 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:88 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:92 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:96 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:100 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:104 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:108 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x4800
	v_readlane_b32 s34, v60, 8
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v60, off, s[0:3], s32 offset:280 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end250:
	.size	_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_, .Lfunc_end250-_Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 2168
; NumSgprs: 48
; NumVgprs: 61
; ScratchSize: 17328
; MemoryBound: 0
	.text
	.globl	main                    ; -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   ; @main
; %bb.0:                                ; %entry
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_or_saveexec_b64 s[4:5], -1
	buffer_store_dword v55, off, s[0:3], s32 offset:192 ; 4-byte Folded Spill
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v55, s34, 9
	s_mov_b32 s34, s32
	s_add_u32 s32, s32, 0x3400
	buffer_store_dword v32, off, s[0:3], s34 offset:88 ; 4-byte Folded Spill
	buffer_store_dword v33, off, s[0:3], s34 offset:84 ; 4-byte Folded Spill
	buffer_store_dword v34, off, s[0:3], s34 offset:80 ; 4-byte Folded Spill
	buffer_store_dword v35, off, s[0:3], s34 offset:76 ; 4-byte Folded Spill
	buffer_store_dword v36, off, s[0:3], s34 offset:72 ; 4-byte Folded Spill
	buffer_store_dword v37, off, s[0:3], s34 offset:68 ; 4-byte Folded Spill
	buffer_store_dword v38, off, s[0:3], s34 offset:64 ; 4-byte Folded Spill
	buffer_store_dword v39, off, s[0:3], s34 offset:60 ; 4-byte Folded Spill
	buffer_store_dword v40, off, s[0:3], s34 offset:56 ; 4-byte Folded Spill
	buffer_store_dword v41, off, s[0:3], s34 offset:52 ; 4-byte Folded Spill
	buffer_store_dword v42, off, s[0:3], s34 offset:48 ; 4-byte Folded Spill
	buffer_store_dword v43, off, s[0:3], s34 offset:44 ; 4-byte Folded Spill
	buffer_store_dword v44, off, s[0:3], s34 offset:40 ; 4-byte Folded Spill
	buffer_store_dword v45, off, s[0:3], s34 offset:36 ; 4-byte Folded Spill
	buffer_store_dword v46, off, s[0:3], s34 offset:32 ; 4-byte Folded Spill
	buffer_store_dword v47, off, s[0:3], s34 offset:28 ; 4-byte Folded Spill
	buffer_store_dword v48, off, s[0:3], s34 offset:24 ; 4-byte Folded Spill
	buffer_store_dword v49, off, s[0:3], s34 offset:20 ; 4-byte Folded Spill
	buffer_store_dword v50, off, s[0:3], s34 offset:16 ; 4-byte Folded Spill
	buffer_store_dword v51, off, s[0:3], s34 offset:12 ; 4-byte Folded Spill
	buffer_store_dword v52, off, s[0:3], s34 offset:8 ; 4-byte Folded Spill
	buffer_store_dword v53, off, s[0:3], s34 offset:4 ; 4-byte Folded Spill
	buffer_store_dword v54, off, s[0:3], s34 ; 4-byte Folded Spill
	v_writelane_b32 v55, s34, 0
	v_writelane_b32 v55, s35, 1
	v_writelane_b32 v55, s36, 2
	v_writelane_b32 v55, s37, 3
	v_writelane_b32 v55, s38, 4
	v_writelane_b32 v55, s39, 5
	v_writelane_b32 v55, s40, 6
	v_writelane_b32 v55, s30, 7
	v_writelane_b32 v55, s31, 8
	s_mov_b32 s35, 0
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v0, 0x60, v5
	v_cmp_ne_u32_e64 s[4:5], v0, s35
	s_mov_b64 s[6:7], 0
	s_getreg_b32 s8, hwreg(HW_REG_SH_MEM_BASES, 0, 16)
	s_lshl_b32 s8, s8, 16
	v_mov_b32_e32 v1, s7
	v_mov_b32_e32 v2, s8
	v_cndmask_b32_e64 v1, v1, v2, s[4:5]
	v_mov_b32_e32 v2, s6
	v_cndmask_b32_e64 v0, v2, v0, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x64, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v45, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v44, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x68, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v40, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v39, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x70, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v47, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v46, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x78, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v49, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v48, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x80, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v51, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v50, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x88, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v34, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v33, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x90, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v36, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v35, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0x98, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v38, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v37, v3, v2, s[4:5]
	s_sub_u32 vcc_hi, s34, s33
	v_lshrrev_b32_e64 v5, 6, vcc_hi
	v_add_u32_e32 v2, 0xa0, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v42, v3, v2, s[4:5]
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v41, v2, v3, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v5, 6, s40
	v_add_u32_e32 v2, 0xb0, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v43, v3, v2, s[4:5]
	v_mov_b32_e32 v2, s7
	v_mov_b32_e32 v3, s8
	v_cndmask_b32_e64 v52, v2, v3, s[4:5]
	s_sub_u32 s40, s34, s33
	v_lshrrev_b32_e64 v5, 6, s40
	v_add_u32_e32 v2, 0xbc, v5
	v_cmp_ne_u32_e64 s[4:5], v2, s35
	v_mov_b32_e32 v3, s7
	v_mov_b32_e32 v4, s8
	v_cndmask_b32_e64 v54, v3, v4, s[4:5]
	v_mov_b32_e32 v3, s6
	v_cndmask_b32_e64 v53, v3, v2, s[4:5]
	v_mov_b32_e32 v2, s35
	flat_store_dword v[0:1], v2
	v_mov_b32_e32 v0, 0x800
	flat_store_dword v[44:45], v0
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	s_mov_b32 s38, 29
	v_alignbit_b32 v1, v1, v0, s38
	s_mov_b32 s39, 3
	v_lshlrev_b32_e64 v0, s39, v0
	s_getpc_b64 s[36:37]
	s_add_u32 s36, s36, _ZL6mallocm@rel32@lo+4
	s_addc_u32 s37, s37, _ZL6mallocm@rel32@hi+4
	s_swappc_b64 s[30:31], s[36:37]
	flat_store_dwordx2 v[39:40], v[0:1]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v1, v1, v0, s38
	v_lshlrev_b32_e64 v0, s39, v0
	s_swappc_b64 s[30:31], s[36:37]
	flat_store_dwordx2 v[46:47], v[0:1]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v1, v1, v0, s38
	v_lshlrev_b32_e64 v0, s39, v0
	s_swappc_b64 s[30:31], s[36:37]
	flat_store_dwordx2 v[48:49], v[0:1]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v1, v1, v0, s38
	v_lshlrev_b32_e64 v0, s39, v0
	s_swappc_b64 s[30:31], s[36:37]
	flat_store_dwordx2 v[50:51], v[0:1]
	flat_load_dwordx2 v[0:1], v[39:40]
	flat_load_dwordx2 v[2:3], v[46:47]
	flat_load_dwordx2 v[4:5], v[50:51]
	flat_load_dword v11, v[44:45]
	s_mov_b32 s40, 32
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[9:10], s40, v[0:1]
	v_lshrrev_b64 v[7:8], s40, v[2:3]
	v_lshrrev_b64 v[5:6], s40, v[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _Z8InitHostPdS_S_i@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _Z8InitHostPdS_S_i@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v6, v11
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v3, v1, v0, s38
	v_lshlrev_b32_e64 v4, s39, v0
	v_lshrrev_b64 v[1:2], s40, v[33:34]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hipMalloc@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hipMalloc@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v0, v33
	v_mov_b32_e32 v2, v4
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v3, v1, v0, s38
	v_lshlrev_b32_e64 v4, s39, v0
	v_lshrrev_b64 v[1:2], s40, v[35:36]
	v_mov_b32_e32 v0, v35
	v_mov_b32_e32 v2, v4
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dword v0, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v1, 31, v0
	v_alignbit_b32 v3, v1, v0, s38
	v_lshlrev_b32_e64 v4, s39, v0
	v_lshrrev_b64 v[1:2], s40, v[37:38]
	v_mov_b32_e32 v0, v37
	v_mov_b32_e32 v2, v4
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dwordx2 v[0:1], v[33:34]
	flat_load_dwordx2 v[2:3], v[39:40]
	flat_load_dword v4, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, 31, v4
	v_alignbit_b32 v5, v5, v4, s38
	v_lshlrev_b32_e64 v8, s39, v4
	v_lshrrev_b64 v[6:7], s40, v[0:1]
	v_lshrrev_b64 v[3:4], s40, v[2:3]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hipMemcpy@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hipMemcpy@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v32, 1
	v_mov_b32_e32 v1, v6
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dwordx2 v[0:1], v[35:36]
	flat_load_dwordx2 v[2:3], v[46:47]
	flat_load_dword v4, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e64 v5, 31, v4
	v_alignbit_b32 v5, v5, v4, s38
	v_lshlrev_b32_e64 v8, s39, v4
	v_lshrrev_b64 v[6:7], s40, v[0:1]
	v_lshrrev_b64 v[3:4], s40, v[2:3]
	v_mov_b32_e32 v1, v6
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v6, v32
	s_swappc_b64 s[30:31], s[36:37]
	v_lshrrev_b64 v[39:40], s40, v[40:41]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN4dim3C2Ejjj@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZN4dim3C2Ejjj@gotpcrel32@hi+4
	s_load_dwordx2 s[36:37], s[4:5], 0x0
	v_mov_b32_e32 v2, 0x80
	v_mov_b32_e32 v0, v42
	v_mov_b32_e32 v1, v39
	v_mov_b32_e32 v3, v32
	v_mov_b32_e32 v4, v32
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dword v0, v[44:45]
	s_mov_b32 s4, 0x7f
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_u32_e64 v0, v0, s4
	s_mov_b32 s4, 31
	v_ashrrev_i32_e64 v1, s4, v0
	s_mov_b32 s4, 25
	v_lshrrev_b32_e64 v1, s4, v1
	v_add_u32_e64 v0, v0, v1
	s_mov_b32 s4, 7
	v_ashrrev_i32_e64 v2, s4, v0
	v_lshrrev_b64 v[40:41], s40, v[51:52]
	v_mov_b32_e32 v0, v43
	v_mov_b32_e32 v1, v40
	v_mov_b32_e32 v3, v32
	v_mov_b32_e32 v4, v32
	s_swappc_b64 s[30:31], s[36:37]
	flat_load_dwordx2 v[9:10], v[33:34]
	flat_load_dwordx2 v[11:12], v[35:36]
	flat_load_dwordx2 v[13:14], v[37:38]
	flat_load_dword v20, v[44:45]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshrrev_b64 v[18:19], s40, v[9:10]
	v_lshrrev_b64 v[16:17], s40, v[11:12]
	v_lshrrev_b64 v[14:15], s40, v[13:14]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _Z3addPdS_S_i@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _Z3addPdS_S_i@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_lshr_b64 s[6:7], s[4:5], s40
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, _Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_@rel32@lo+4
	s_addc_u32 s9, s9, _Z18hipLaunchKernelGGLIJPdS0_S0_iEPFvS0_S0_S0_iEEvT0_RK4dim3S6_jP12ihipStream_tDpT_@rel32@hi+4
	v_mov_b32_e32 v0, s4
	v_mov_b32_e32 v1, s6
	v_mov_b32_e32 v2, v43
	v_mov_b32_e32 v3, v40
	v_mov_b32_e32 v4, v42
	v_mov_b32_e32 v5, v39
	v_mov_b32_e32 v6, s35
	v_mov_b32_e32 v7, s35
	v_mov_b32_e32 v8, s35
	v_mov_b32_e32 v10, v18
	v_mov_b32_e32 v12, v16
	v_mov_b32_e32 v15, v20
	s_swappc_b64 s[30:31], s[8:9]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, hipGetLastError@gotpcrel32@lo+4
	s_addc_u32 s5, s5, hipGetLastError@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[4:5]
	flat_store_dword v[53:54], v0
	flat_load_dword v0, v[53:54]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e64 s[4:5], v0, s35
	s_mov_b64 s[36:37], exec
	s_and_b64 s[4:5], s[36:37], s[4:5]
	s_mov_b64 exec, s[4:5]
	; mask branch BB251_2
	s_cbranch_execz BB251_2
BB251_1:                                ; %if.then
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, .str.4@rel32@lo+4
	s_addc_u32 s5, s5, .str.4@rel32@hi+4
	s_mov_b32 s35, 32
	s_lshr_b64 s[6:7], s[4:5], s35
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, _ZSt4cout@gotpcrel32@lo+4
	s_addc_u32 s9, s9, _ZSt4cout@gotpcrel32@hi+4
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	s_waitcnt lgkmcnt(0)
	s_lshr_b64 s[10:11], s[8:9], s35
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@gotpcrel32@lo+4
	s_addc_u32 s13, s13, _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@gotpcrel32@hi+4
	s_load_dwordx2 s[12:13], s[12:13], 0x0
	v_mov_b32_e32 v0, s8
	v_mov_b32_e32 v1, s10
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s6
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[12:13]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@gotpcrel32@lo+4
	s_addc_u32 s5, s5, _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@gotpcrel32@hi+4
	s_load_dwordx2 s[4:5], s[4:5], 0x0
	s_waitcnt lgkmcnt(0)
	s_lshr_b64 s[6:7], s[4:5], s35
	s_getpc_b64 s[8:9]
	s_add_u32 s8, s8, _ZNSolsEPFRSoS_E@gotpcrel32@lo+4
	s_addc_u32 s9, s9, _ZNSolsEPFRSoS_E@gotpcrel32@hi+4
	s_load_dwordx2 s[8:9], s[8:9], 0x0
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s6
	s_waitcnt lgkmcnt(0)
	s_swappc_b64 s[30:31], s[8:9]
BB251_2:                                ; %if.end
	s_or_b64 exec, exec, s[36:37]
	v_mov_b32_e32 v0, 0
	v_readlane_b32 s4, v55, 7
	v_readlane_b32 s5, v55, 8
	v_readlane_b32 s40, v55, 6
	v_readlane_b32 s39, v55, 5
	v_readlane_b32 s38, v55, 4
	v_readlane_b32 s37, v55, 3
	v_readlane_b32 s36, v55, 2
	v_readlane_b32 s35, v55, 1
	v_readlane_b32 s34, v55, 0
	s_nop 0
	s_nop 0
	s_nop 0
	s_nop 0
	s_nop 0
	buffer_load_dword v54, off, s[0:3], s34 ; 4-byte Folded Reload
	buffer_load_dword v53, off, s[0:3], s34 offset:4 ; 4-byte Folded Reload
	buffer_load_dword v52, off, s[0:3], s34 offset:8 ; 4-byte Folded Reload
	buffer_load_dword v51, off, s[0:3], s34 offset:12 ; 4-byte Folded Reload
	buffer_load_dword v50, off, s[0:3], s34 offset:16 ; 4-byte Folded Reload
	buffer_load_dword v49, off, s[0:3], s34 offset:20 ; 4-byte Folded Reload
	buffer_load_dword v48, off, s[0:3], s34 offset:24 ; 4-byte Folded Reload
	buffer_load_dword v47, off, s[0:3], s34 offset:28 ; 4-byte Folded Reload
	buffer_load_dword v46, off, s[0:3], s34 offset:32 ; 4-byte Folded Reload
	buffer_load_dword v45, off, s[0:3], s34 offset:36 ; 4-byte Folded Reload
	buffer_load_dword v44, off, s[0:3], s34 offset:40 ; 4-byte Folded Reload
	buffer_load_dword v43, off, s[0:3], s34 offset:44 ; 4-byte Folded Reload
	buffer_load_dword v42, off, s[0:3], s34 offset:48 ; 4-byte Folded Reload
	buffer_load_dword v41, off, s[0:3], s34 offset:52 ; 4-byte Folded Reload
	buffer_load_dword v40, off, s[0:3], s34 offset:56 ; 4-byte Folded Reload
	buffer_load_dword v39, off, s[0:3], s34 offset:60 ; 4-byte Folded Reload
	buffer_load_dword v38, off, s[0:3], s34 offset:64 ; 4-byte Folded Reload
	buffer_load_dword v37, off, s[0:3], s34 offset:68 ; 4-byte Folded Reload
	buffer_load_dword v36, off, s[0:3], s34 offset:72 ; 4-byte Folded Reload
	buffer_load_dword v35, off, s[0:3], s34 offset:76 ; 4-byte Folded Reload
	buffer_load_dword v34, off, s[0:3], s34 offset:80 ; 4-byte Folded Reload
	buffer_load_dword v33, off, s[0:3], s34 offset:84 ; 4-byte Folded Reload
	buffer_load_dword v32, off, s[0:3], s34 offset:88 ; 4-byte Folded Reload
	s_sub_u32 s32, s32, 0x3400
	v_readlane_b32 s34, v55, 9
	s_or_saveexec_b64 s[6:7], -1
	buffer_load_dword v55, off, s[0:3], s32 offset:192 ; 4-byte Folded Reload
	s_mov_b64 exec, s[6:7]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[4:5]
.Lfunc_end251:
	.size	main, .Lfunc_end251-main
                                        ; -- End function
	.section	.AMDGPU.csdata
; Function info:
; codeLenInByte = 2684
; NumSgprs: 52
; NumVgprs: 63
; ScratchSize: 17536
; MemoryBound: 0
	.type	.str.4,@object          ; @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.str.4:
	.asciz	"Done"
	.size	.str.4, 5

	.hidden	_ZZN8hip_impl17get_program_stateEvE2ps ; @_ZZN8hip_impl17get_program_stateEvE2ps
	.type	_ZZN8hip_impl17get_program_stateEvE2ps,@object
	.section	.bss,#alloc,#write
	.weak	_ZZN8hip_impl17get_program_stateEvE2ps
	.p2align	3
_ZZN8hip_impl17get_program_stateEvE2ps:
	.zero	8
	.size	_ZZN8hip_impl17get_program_stateEvE2ps, 8

	.no_dead_strip	_Z3addPdS_S_i
	.ident	"HCC clang version 10.0.0 (/home/jiahan/rocmv26-dp4x/rocm_build/hcc/llvm-project/clang f72acb546e012dcf4114982bea9fda46b7f9b198) (based on HCC 3.1.21091-9ded44fd-f72acb546e01 )"
	.section	".note.GNU-stack"
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  generic
        .name:           a
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f64
      - .address_space:  generic
        .name:           b
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f64
      - .address_space:  generic
        .name:           c
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f64
      - .name:           n
        .offset:         24
        .size:           4
        .value_kind:     by_value
        .value_type:     i32
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 28
    .max_flat_workgroup_size: 1024
    .name:           _Z3addPdS_S_i
    .private_segment_fixed_size: 16432
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         _Z3addPdS_S_i.kd
    .vgpr_count:     42
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
