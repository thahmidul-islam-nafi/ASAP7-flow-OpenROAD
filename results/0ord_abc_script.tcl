read_lib -v /home/pst_nafi/OpenROAD-flow-scripts/flow/objects/asap7/riscv32i/base/lib/merged.lib
read_blif -n /home/pst_nafi/OpenROAD-flow-scripts/flow/results/asap7/riscv32i/base/riscv_top_crit_path.blif
bdd; sop
alias resyn2 "balance; rewrite; refactor; balance; rewrite; rewrite -z; balance; refactor -z; rewrite -z; balance"
alias choice "fraig_store; resyn2; fraig_store; resyn2; fraig_store; fraig_restore"
alias choice2 "fraig_store; balance; fraig_store; resyn2; fraig_store; resyn2; fraig_store; resyn2; fraig_store; fraig_restore"
resyn2
choice2
amap -m -Q 0.1 -F 20 -A 20 -C 5000
write_blif /home/pst_nafi/OpenROAD-flow-scripts/flow/results/asap7/riscv32i/base/riscv_top0_crit_path_out.blif
