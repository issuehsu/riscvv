
# Flow/Script Requirements

## 原则

* 是满足实用性、可复用性

## 验证角度需要哪些脚本

* 项目目录的创建 init_database, git init
* UVM验证环境和reg model的自动生成 gen_uvm, gen_regmodel
* 仿真脚本 run_sim
    * rtl file list, tb file list, verilog library list等自动生成或配置文件
    * 兼容nc,vcs,verdi,spyglass等多个工具
* 根据testcase名创建临时仿真目录 build_test_sim_dir
* 回归测试 run_regression
    * 需考虑多个case自动用多进程跑仿真regression(multi-processing)
    * 失败自动加dump波形选项后重跑（方便调试）
    * 报告汇总与呈现
* bug的提交、分析、解决的管理 bug_system
* 验证进度的图表展示 progress

## 设计角度需哪些脚本

* SPEC及文档管理
* 部分RTL自动生成

## 项目管理角度需要哪些脚本

* 进度
* 任务分配与跟踪
* 周报、effort评价（反馈有价值的信息来调整管理）
* 各阶段的checklist、review、result管理


