static_base = 0x100000000


def static_to_runtime_addr(static_addr):
    return static_addr + image_base - static_base


def runtime_to_static_addr(runtime_addr):
    return runtime_addr - image_base + static_base
