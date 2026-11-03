# Linux 内核本体论 · agent-linux

> 工程为骨 · 本体为魂 · 诸法空相 · 用之不竭

[佛学本体论](https://yejinlei.github.io/Buddhist) · [音视频本体论](https://yejinlei.github.io/agent-media) · **Linux 内核本体论**

---

## 概述

以本体工程方法系统解构 Linux 内核架构与 TCP/IP 协议栈，构建可推理、可关联、可演化的操作系统知识体系。

- **元模型统一**：实体 · 关系 · 公理三层一致，所有子模块共用同一套本体语法
- **模块差异化**：分类驱动 / 过程状态驱动 / 映射驱动 / 匹配驱动 / 边界驱动 五大主轴，每个子模块按自身知识形态定制构建方法
- **三层递进**：L1 结构本体 → L2 行为本体 → L3 语义本体，逐层抽象至设计哲学

## 本体七层架构

| 层级 | 名称 | 内容 |
|------|------|------|
| L0 | 元模型层 | 宏内核哲学、一切皆文件、机制/策略分离、先描述后组织 |
| L1 | 核心架构层 | 进程调度、内存管理、VFS、网络协议栈、IPC 五大子系统 |
| L2 | 机制范畴层 | 中断上下半部、伙伴/Slab分配器、CFS/EEVDF调度器、四级页表、sk_buff、Netfilter |
| L3 | 协议接口层 | TCP/IP四层模型、POSIX标准、file_operations、设备模型、io_uring |
| L4 | 实现载体层 | ext4/XFS/Btrfs、网卡驱动、CUBIC/BBR拥塞控制、KVM、eBPF、Rust-for-Linux |
| L5 | 生态人物层 | Linus Torvalds、Greg KH、Ingo Molnar；Red Hat、Google、Meta；主流发行版 |
| L6 | 文化外延层 | GPLv2、集市模式、KISS原则、Unix哲学 |

## 站点栏目

- **总纲**：内核本体三原则（一切皆抽象、机制策略分离、分层环绕闭合）与三法印
- **本体构建方法论**：五大主轴矩阵 + 三层递进流程 + 各模块主轴分配
- **内核核心架构**：进程管理、内存管理、中断机制、同步原语 四个子模块
- **TCP/IP 协议栈本体**：分层封装、TCP状态机与十二缘起、sk_buff生命周期、Netfilter、拥塞控制
- **文件系统本体**：VFS四大对象、文件系统谱系、IO栈
- **驱动与虚拟化**：设备模型、容器namespace/cgroup、KVM、eBPF
- **跨模块知识图谱**：可交互力导向图，支持按模块筛选
- **系统调用速查表**：六大类常用syscall
- **Linux发展时间轴**：1991年至今的本体演化历程
- **术语表**：45+核心术语实时搜索过滤

## 部署

本站点为纯静态单文件页面，部署到 GitHub Pages 即可：

```bash
# 将 index.html 推送到仓库 main 分支
# 在 Settings → Pages 中选择 main 分支 / root 目录
# 访问 https://yejinlei.github.io/agent-linux/
```

## 技术栈

- Tailwind CSS 3.4 — 样式框架
- ECharts 5.6 — 图表可视化（桑基图、力导向图、状态机、折线图）
- GSAP 3.12 — 进场动画
- Noto Serif SC / Inter — 字体
