function fib(n: nat): nat
{
    if n == 0 then
        0
    else if n == 1 then
        1
    else
        fib(n - 1) + fib(n - 2)
}

method ComputeFib(n: nat) returns (b: nat)
    ensures b == fib(n)
{
    if n == 0 {
        return 0;
    }

    // n i b c
    // 5 1 1 1
    // 5 2 1 2
    // 5 3 2 3
    // 5 4 3 5
    // 5 5 5 8
    
    var i: int := 1;
    var c := 1;
    b := 1;
    while i < n
        invariant 0 < i <= n
        invariant b == fib(i)
        invariant c == fib(i + 1)
    {
        b, c := c, b + c;
        i := i + 1;
    }
}