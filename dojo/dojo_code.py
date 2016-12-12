def last_char(s):
    try:
        return s[-1]
    except IndexError:
        return None
