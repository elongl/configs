_bin = bin


def bin_repr(num: int):
    return _bin(num)[2:].rjust(8, '0')


bin = bin_repr
