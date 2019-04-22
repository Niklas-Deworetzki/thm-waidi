.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r45o_bytes:
	.asciz "main"
.section .data
.align 8
.align 1
r45Q_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r45o_bytes
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
r45R_bytes:
	.asciz "Main"
.section .data
.align 8
.align 1
r45S_closure:
	.quad	ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	r45R_bytes
.section .data
.align 8
.align 1
.globl Main_zdtrModule_closure
.type Main_zdtrModule_closure, @object
Main_zdtrModule_closure:
	.quad	ghczmprim_GHCziTypes_Module_con_info
	.quad	r45Q_closure+1
	.quad	r45S_closure+1
	.quad	3
.section .data
.align 8
.align 1
u490_srt:
	.quad	stg_SRT_1_info
	.quad	base_GHCziNum_zdfNumInt_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u490_srt-(s47L_info)+0
s47L_info:
.Lc48p:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc48q
.Lc48r:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq base_GHCziNum_zdfNumInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_pp_info@gotpcrel(%rip),%rbx
	movq %rbx,-40(%rbp)
	movq %rax,-32(%rbp)
	movq stg_INTLIKE_closure@gotpcrel(%rip),%rax
	addq $289,%rax
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp *base_GHCziNum_zm_info@gotpcrel(%rip)
.Lc48q:
	jmp *-16(%r13)
	.size s47L_info, .-s47L_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	r1MF_closure-(s47M_info)+0
s47M_info:
.Lc48s:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc48t
.Lc48u:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja .Lc48w
.Lc48v:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq s47L_info(%rip),%rbx
	movq %rbx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	movq %rax,%r14
	addq $-16,%rbp
	jmp r1MF_info
.Lc48w:
	movq $24,904(%r13)
.Lc48t:
	jmp *-16(%r13)
	.size s47M_info, .-s47M_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u490_srt-(s47I_info)+0
s47I_info:
.Lc48F:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc48G
.Lc48H:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq base_GHCziNum_zdfNumInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_pp_info@gotpcrel(%rip),%rbx
	movq %rbx,-40(%rbp)
	movq %rax,-32(%rbp)
	movq stg_INTLIKE_closure@gotpcrel(%rip),%rax
	addq $273,%rax
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp *base_GHCziNum_zm_info@gotpcrel(%rip)
.Lc48G:
	jmp *-16(%r13)
	.size s47I_info, .-s47I_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	r1MF_closure-(s47J_info)+0
s47J_info:
.Lc48I:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc48J
.Lc48K:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja .Lc48M
.Lc48L:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq s47I_info(%rip),%rbx
	movq %rbx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	movq %rax,%r14
	addq $-16,%rbp
	jmp r1MF_info
.Lc48M:
	movq $24,904(%r13)
.Lc48J:
	jmp *-16(%r13)
	.size s47J_info, .-s47J_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	2
	.long	14
	.long	0
r1MF_info:
.Lc48R:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc48S
.Lc48T:
	leaq c48d_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rax
	movq ghczmprim_GHCziClasses_zdfOrdInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_pp_info@gotpcrel(%rip),%rbx
	movq %rbx,-40(%rbp)
	movq %rax,-32(%rbp)
	movq stg_INTLIKE_closure@gotpcrel(%rip),%rbx
	addq $289,%rbx
	movq %rbx,-24(%rbp)
	movq %rax,-8(%rbp)
	addq $-40,%rbp
	jmp *ghczmprim_GHCziClasses_zlze_info@gotpcrel(%rip)
.align 8
	.quad	1
	.long	30
	.long	r1MF_closure-(c48d_info)+0
c48d_info:
.Lc48d:
	movq 8(%rbp),%rax
	movq %rbx,%rcx
	andl $7,%ecx
	cmpq $1,%rcx
	jne .Lc48P
.Lc48O:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja .Lc48W
.Lc48V:
	leaq s47M_info(%rip),%rbx
	movq %rbx,-40(%r12)
	movq %rax,-24(%r12)
	leaq -40(%r12),%rbx
	leaq s47J_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	movq base_GHCziNum_zdfNumInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_pp_info@gotpcrel(%rip),%rcx
	movq %rcx,-8(%rbp)
	movq %rax,(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp *base_GHCziNum_zp_info@gotpcrel(%rip)
.Lc48P:
	movq stg_INTLIKE_closure@gotpcrel(%rip),%rax
	leaq 273(%rax),%rbx
	addq $16,%rbp
	jmp *(%rbp)
.Lc48S:
	leaq r1MF_closure(%rip),%rbx
	jmp *-8(%r13)
.Lc48W:
	movq $48,904(%r13)
	jmp *stg_gc_unpt_r1@gotpcrel(%rip)
	.size r1MF_info, .-r1MF_info
.section .data
.align 8
.align 1
r1MF_closure:
	.quad	r1MF_info
	.quad	ghczmprim_GHCziClasses_zdfOrdInt_closure
	.quad	u490_srt
	.quad	0
.section .data
.align 8
.align 1
u4ba_srt:
	.quad	stg_SRT_1_info
	.quad	ghczmprim_GHCziCString_unpackCStringzh_closure
	.quad	0
.section .data
.align 8
.align 1
u4bb_srt:
	.quad	stg_SRT_1_info
	.quad	base_GHCziEnum_zdfEnumInt_closure
	.quad	0
.section .data
.align 8
.align 1
u4bc_srt:
	.quad	stg_SRT_1_info
	.quad	base_GHCziShow_zdfShowInt_closure
	.quad	0
.section .data
.align 8
.align 1
u4bd_srt:
	.quad	stg_SRT_2_info
	.quad	criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_bench_closure
	.quad	u4bc_srt
	.quad	0
.section .data
.align 8
.align 1
u4be_srt:
	.quad	stg_SRT_2_info
	.quad	criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_whnf_closure
	.quad	r1MF_closure
	.quad	0
.section .data
.align 8
.align 1
u4bf_srt:
	.quad	stg_SRT_3_info
	.quad	base_GHCziBase_zd_closure
	.quad	u4bd_srt
	.quad	u4be_srt
	.quad	0
.section .data
.align 8
.align 1
u4bg_srt:
	.quad	stg_SRT_2_info
	.quad	u4bb_srt
	.quad	u4bf_srt
	.quad	0
.section .data
.align 8
.align 1
u4bh_srt:
	.quad	stg_SRT_3_info
	.quad	criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_bgroup_closure
	.quad	u4ba_srt
	.quad	u4bg_srt
	.quad	0
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u4be_srt-(s47V_info)+0
s47V_info:
.Lc4a7:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4a8
.Lc4a9:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,%rsi
	leaq r1MF_closure+1(%rip),%r14
	movq criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_whnf_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_pp_fast@gotpcrel(%rip)
.Lc4a8:
	jmp *-16(%r13)
	.size s47V_info, .-s47V_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u4bc_srt-(s47T_info)+0
s47T_info:
.Lc4ai:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4aj
.Lc4ak:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq base_GHCziShow_zdfShowInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_p_info@gotpcrel(%rip),%rbx
	movq %rbx,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-32,%rbp
	jmp *base_GHCziShow_show_info@gotpcrel(%rip)
.Lc4aj:
	jmp *-16(%r13)
	.size s47T_info, .-s47T_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u4bd_srt-(s47U_info)+0
s47U_info:
.Lc4al:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4am
.Lc4an:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja .Lc4ap
.Lc4ao:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq s47T_info(%rip),%rbx
	movq %rbx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	movq %rax,%r14
	movq criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_bench_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_p_fast@gotpcrel(%rip)
.Lc4ap:
	movq $24,904(%r13)
.Lc4am:
	jmp *-16(%r13)
	.size s47U_info, .-s47U_info
.section .text
.align 8
.align 8
	.quad	1
	.long	16
	.long	u4bf_srt-(s47W_info)+0
s47W_info:
.Lc4aq:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4ar
.Lc4as:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja .Lc4au
.Lc4at:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq s47V_info(%rip),%rbx
	movq %rbx,-40(%r12)
	movq %rax,-24(%r12)
	leaq -40(%r12),%rbx
	leaq s47U_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	movq %rbx,%rsi
	movq %rax,%r14
	movq base_GHCziBase_zd_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_pp_fast@gotpcrel(%rip)
.Lc4au:
	movq $48,904(%r13)
.Lc4ar:
	jmp *-16(%r13)
	.size s47W_info, .-s47W_info
.section .text
.align 8
.align 8
	.quad	4294967301
	.quad	4294967296
	.long	10
	.long	u4bf_srt-(s47O_info)+0
s47O_info:
.Lc4az:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4aA
.Lc4aB:
	leaq c49S_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,%rax
	movq %r14,%rbx
	movq %rax,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne .Lc49S
.Lc49T:
	jmp *(%rbx)
.align 8
	.quad	1
	.long	30
	.long	u4bf_srt-(c49S_info)+0
c49S_info:
.Lc49S:
	movq 8(%rbp),%rax
	movq %rbx,%rcx
	andl $7,%ecx
	cmpq $1,%rcx
	jne .Lc4ax
.Lc4aw:
	movq ghczmprim_GHCziTypes_ZMZN_closure@gotpcrel(%rip),%rax
	leaq 1(%rax),%rbx
	addq $16,%rbp
	jmp *(%rbp)
.Lc4ax:
	addq $80,%r12
	cmpq 856(%r13),%r12
	ja .Lc4aH
.Lc4aG:
	movq 6(%rbx),%rcx
	movq 14(%rbx),%rbx
	movq stg_ap_2_upd_info@gotpcrel(%rip),%rdx
	movq %rdx,-72(%r12)
	movq %rax,-56(%r12)
	movq %rbx,-48(%r12)
	leaq -72(%r12),%rax
	leaq s47W_info(%rip),%rbx
	movq %rbx,-40(%r12)
	movq %rcx,-24(%r12)
	leaq -40(%r12),%rbx
	movq ghczmprim_GHCziTypes_ZC_con_info@gotpcrel(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -14(%r12),%rax
	movq %rax,%rbx
	addq $16,%rbp
	jmp *(%rbp)
.Lc4aA:
	jmp *-8(%r13)
.Lc4aH:
	movq $80,904(%r13)
	jmp *stg_gc_unpt_r1@gotpcrel(%rip)
	.size s47O_info, .-s47O_info
.section .text
.align 8
.align 8
	.quad	0
	.long	15
	.long	u4bb_srt-(s480_info)+0
s480_info:
.Lc4aN:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4aO
.Lc4aP:
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja .Lc4aR
.Lc4aQ:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq ghczmprim_GHCziTypes_Izh_con_info@gotpcrel(%rip),%rax
	movq %rax,-8(%r12)
	movq $25,(%r12)
	leaq -7(%r12),%rax
	movq base_GHCziEnum_zdfEnumInt_closure@gotpcrel(%rip),%r14
	movq stg_ap_pp_info@gotpcrel(%rip),%rbx
	movq %rbx,-40(%rbp)
	movq stg_INTLIKE_closure@gotpcrel(%rip),%rbx
	addq $417,%rbx
	movq %rbx,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-40,%rbp
	jmp *base_GHCziEnum_enumFromTo_info@gotpcrel(%rip)
.Lc4aR:
	movq $16,904(%r13)
.Lc4aO:
	jmp *-16(%r13)
	.size s480_info, .-s480_info
.section .text
.align 8
.align 8
	.quad	0
	.long	15
	.long	u4bg_srt-(s481_info)+0
s481_info:
.Lc4aS:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4aT
.Lc4aU:
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja .Lc4aW
.Lc4aV:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq -23(%r12),%rax
	leaq s47O_info(%rip),%rbx
	movq %rbx,-24(%r12)
	leaq s480_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rbx,%r14
	movq %rax,%rbx
	addq $-16,%rbp
	jmp s47O_info
.Lc4aW:
	movq $32,904(%r13)
.Lc4aT:
	jmp *-16(%r13)
	.size s481_info, .-s481_info
.section .rodata.str,"aMS",@progbits,1
.align 1
.align 1
c4b1_str:
	.asciz "fib"
.section .text
.align 8
.align 8
	.quad	0
	.long	15
	.long	u4ba_srt-(s47N_info)+0
s47N_info:
.Lc4b2:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4b3
.Lc4b4:
	movq stg_upd_frame_info@gotpcrel(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq c4b1_str(%rip),%r14
	movq ghczmprim_GHCziCString_unpackCStringzh_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_n_fast@gotpcrel(%rip)
.Lc4b3:
	jmp *-16(%r13)
	.size s47N_info, .-s47N_info
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u4bh_srt-(s482_info)+0
s482_info:
.Lc4b5:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4b6
.Lc4b7:
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja .Lc4b9
.Lc4b8:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF@plt
	addq $8,%rsp
	testq %rax,%rax
	je .Lc49I
.Lc49H:
	movq stg_bh_upd_frame_info@gotpcrel(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq s481_info(%rip),%rax
	movq %rax,-24(%r12)
	leaq -24(%r12),%rax
	leaq s47N_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	movq criterionzmmeasurementzm0zi1zi1zi0zmFVbXYTUvanD5XwplW2Kncw_CriterionziMeasurementziTypes_bgroup_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_pp_fast@gotpcrel(%rip)
.Lc49I:
	jmp *(%rbx)
.Lc4b9:
	movq $32,904(%r13)
.Lc4b6:
	jmp *-16(%r13)
	.size s482_info, .-s482_info
.section .data
.align 8
.align 1
s482_closure:
	.quad	s482_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
s483_closure:
	.quad	ghczmprim_GHCziTypes_ZC_con_info
	.quad	s482_closure
	.quad	ghczmprim_GHCziTypes_ZMZN_closure+1
	.quad	0
.section .data
.align 8
.align 1
u4cv_srt:
	.quad	stg_SRT_2_info
	.quad	criterionzm1zi5zi4zi0zmJLKYr9cftnH1JUDP8rg9po_CriterionziMain_defaultMain_closure
	.quad	s483_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u4cv_srt-(Main_main_info)+0
.globl Main_main_info
.type Main_main_info, @object
Main_main_info:
.Lc4cs:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4ct
.Lc4cu:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF@plt
	addq $8,%rsp
	testq %rax,%rax
	je .Lc4cr
.Lc4cq:
	movq stg_bh_upd_frame_info@gotpcrel(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq s483_closure+2(%rip),%r14
	movq criterionzm1zi5zi4zi0zmJLKYr9cftnH1JUDP8rg9po_CriterionziMain_defaultMain_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_p_fast@gotpcrel(%rip)
.Lc4cr:
	jmp *(%rbx)
.Lc4ct:
	jmp *-16(%r13)
	.size Main_main_info, .-Main_main_info
.section .data
.align 8
.align 1
.globl Main_main_closure
.type Main_main_closure, @object
Main_main_closure:
	.quad	Main_main_info
	.quad	0
	.quad	0
	.quad	0
.section .data
.align 8
.align 1
u4cM_srt:
	.quad	stg_SRT_2_info
	.quad	base_GHCziTopHandler_runMainIO_closure
	.quad	Main_main_closure
	.quad	0
.section .text
.align 8
.align 8
	.quad	0
	.long	21
	.long	u4cM_srt-(ZCMain_main_info)+0
.globl ZCMain_main_info
.type ZCMain_main_info, @object
ZCMain_main_info:
.Lc4cJ:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb .Lc4cK
.Lc4cL:
	subq $8,%rsp
	movq %r13,%rax
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call newCAF@plt
	addq $8,%rsp
	testq %rax,%rax
	je .Lc4cI
.Lc4cH:
	movq stg_bh_upd_frame_info@gotpcrel(%rip),%rbx
	movq %rbx,-16(%rbp)
	movq %rax,-8(%rbp)
	leaq Main_main_closure(%rip),%r14
	movq base_GHCziTopHandler_runMainIO_closure@gotpcrel(%rip),%rbx
	addq $-16,%rbp
	jmp *stg_ap_p_fast@gotpcrel(%rip)
.Lc4cI:
	jmp *(%rbx)
.Lc4cK:
	jmp *-16(%r13)
	.size ZCMain_main_info, .-ZCMain_main_info
.section .data
.align 8
.align 1
.globl ZCMain_main_closure
.type ZCMain_main_closure, @object
ZCMain_main_closure:
	.quad	ZCMain_main_info
	.quad	0
	.quad	0
	.quad	0
.section .note.GNU-stack,"",@progbits
.ident "GHC 8.6.4"


