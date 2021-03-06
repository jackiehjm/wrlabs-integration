
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# For the zynq boards we need additional kernel configuration
EXTRASRCZYNQ = ""
EXTRASRCZYNQ_xilinx-zynq = "file://xilinx-zynq-standard.scc"

SRC_URI += "${EXTRASRCZYNQ}"

KBRANCH_xilinx-zynq = "standard/preempt-rt/${MACHINE}"
COMPATIBLE_MACHINE_xilinx-zynq = "${MACHINE}"
SRCREV_machine = "${AUTOREV}"
SRCREV_meta = "${AUTOREV}"
LINUX_VERSION = "3.14.39"
LINUX_VERSION_EXTENSION = "-pulsar-${LINUX_KERNEL_TYPE}"

KERNEL_EXTRA_ARGS_xilinx-zynq += "LOADADDR=0x8000"

KERNEL_DEVICETREE_xilinx-zynq = "${S}/arch/arm/boot/dts/zynq-zc706.dts \
                     ${S}/arch/arm/boot/dts/zynq-zc702.dts \
                     ${S}/arch/arm/boot/dts/zynq-zc702-base-trd.dts \
                     ${S}/arch/arm/boot/dts/zynq-zed.dts \
                     ${S}/arch/arm/boot/dts/zynq-picozed.dts \
                     ${S}/arch/arm/boot/dts/zynq-mini-itx-adv7511.dts \
                     ${S}/arch/arm/boot/dts/zynq-mini-itx-adv7511-pcie.dts"

# For the fsl-ls10xx boards we need additional kernel configuration
KBRANCH_fsl-ls10xx = "standard/preempt-rt/${MACHINE}"
COMPATIBLE_MACHINE_fsl-ls10xx = "${MACHINE}"

KERNEL_DEVICETREE_fsl-ls10xx = "${S}/arch/arm/boot/dts/ls1021a-twr.dts \
                     ${S}/arch/arm/boot/dts/ls1021a-iot.dts"

KERNEL_EXTRA_ARGS_fsl-ls10xx += "LOADADDR=0x80008000"
