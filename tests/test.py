from main import hello, mymath

def test_add_positive() -> None:
    assert(mymath.myadd(2, 3) == 5)

def test_add_negative() -> None:
    assert(mymath.myadd(-2, -3) == -5)

def test_add_mixed() -> None:
    assert(mymath.myadd(-2, 3) == 1)
    
def test_hello() -> None:
    assert(hello.hello())
    
#fdjksagnjkfsaghsfdhsdfgjkfsdngjksefngkjsermhkgjhesrkjghserjkghuifserhtgiserht953tge5hgtes5g9cerhs9g8eusrrtysehghmseroiyofdadfsavfasvfdsgvdshgfdhgdfg