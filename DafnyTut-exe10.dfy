function fib(n: nat): nat
{
    if n == 0 then 0 else
    if n == 1 then 1 else
        fib(n - 1) + fib(n - 2)
}
method ComputeFib(n: nat) returns (b: nat)
    ensures b == fib(n)
{
    // n fib(i)  i b a
    // 5    0    0 0 1
    // 5    1    1 1 0
    // 5    1    2 1 1
    // 5    2    3 2 1
    // 5    3    4 3 2
    // 5    5    5 5 3

    var i: int := 0;
    var a := 1;
        b := 0;
    while i < n
        // Fill in the invariants here.
        invariant 0 <= i <= n
        invariant b == fib(i)
        invariant i >= 1 ==> a == fib(i - 1)
        invariant i < 1 ==> a == 1
    {
        a, b := b, a + b;
        i := i + 1;
    }
}
