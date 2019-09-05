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
    // ensures b == fib(n)
{
    var i: int := 0;
    while i != n
        // The loop verifies, since theres not a problem with
        // both guard and invariant statements
        invariant 0 <= i <= n
  {
        i := i + 1;
    }
    // It continues to verify
    assert i == n;
}