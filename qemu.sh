qemu-system-arm                                                                \
    -machine virt                                                              \
    -cpu     max                                                               \
    -smp     4                                                                 \
    -m       4G                                                                \
    -kernel  boot/vmlinuz                                                      \
    -initrd  boot/initrd.gz                                                    \
    -append  "root=/dev/vda2"                                                  \
    -device  virtio-blk-device,drive=disk0                                     \
    -drive   if=none,id=disk0,file=debian.qcow2                                \
    -device  virtio-net-device,netdev=net0                                     \
    -netdev  user,id=net0,hostfwd=tcp:127.0.0.1:5555-:22                       \
    -nographic                                                                 \
    -no-reboot
