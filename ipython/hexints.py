get_ipython().display_formatter.formatters['text/plain'].for_type(int, lambda n, p, cycle: p.text("%d (0x%x)" % (n,n)))
