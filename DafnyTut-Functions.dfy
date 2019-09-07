function abs(x: int): int
{
    if x < 0 then -x else x
}

method Main()
{
    assert(abs(3) == 3);
}