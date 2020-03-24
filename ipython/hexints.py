get_ipython().display_formatter.formatters['text/plain'].for_type(int, lambda n, p, cycle: p.text("0x%x" % n))
