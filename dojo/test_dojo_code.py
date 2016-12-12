from dojo_code import last_char


def test_one_char():
    assert last_char('s') == 's'


def test_string():
    assert last_char('abc') == 'c'


def test_empty_string():
    assert last_char('') is None


# def test_none():
#     assert last_char(None) is None
