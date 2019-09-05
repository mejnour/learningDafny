function max(x: int, y: int): int
{
    if x > y then
        x 
    else if y > x then
        y
    else 
        x
}

method testaMax()
{
    assert max(3, 2) == 3;
    assert max(1, 4) == 4;
    assert max(5, 5) == 5;
}