	.text
	.file	"20040319-1.c"
	.section	.text.blah,"ax",@progbits
	.hidden	blah                    # -- Begin function blah
	.globl	blah
	.type	blah,@function
blah:                                   # @blah
	.param  	i32
	.result 	i32
# %bb.0:                                # %entry
	i32.const	$push4=, 1
	i32.const	$push2=, 0
	i32.sub 	$push3=, $pop2, $0
	i32.const	$push0=, -1
	i32.gt_s	$push1=, $0, $pop0
	i32.select	$push5=, $pop4, $pop3, $pop1
                                        # fallthrough-return: $pop5
	.endfunc
.Lfunc_end0:
	.size	blah, .Lfunc_end0-blah
                                        # -- End function
	.section	.text.main,"ax",@progbits
	.hidden	main                    # -- Begin function main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# %bb.0:                                # %if.else
	i32.const	$push0=, 0
	call    	exit@FUNCTION, $pop0
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function

	.ident	"clang version 7.0.0 (https://llvm.googlesource.com/clang.git 1f874ca3c3f27c2149b6b33ca4a5966b3577280d) (https://llvm.googlesource.com/llvm.git 2e4bd2aa729dd2c33cdca2b39c971c675e914001)"
	.functype	exit, void, i32
