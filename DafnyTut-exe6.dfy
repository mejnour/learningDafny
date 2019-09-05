function method abs(x: int): int
{
    if x < 0 then -x else x
}

method Abs(x: int) returns (r: int)
    ensures abs(x) == r
{
    return abs(x);
}