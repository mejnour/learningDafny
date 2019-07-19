// Declaração de método.
// Método Abs recebe uma variavel int x e retorna uma int y.
// Exige que a entrada seja menor que 0.
// Assegura que o retorno é maior que 0.
method Abs(x: int) returns (y: int)
    requires x < 0
    ensures 0 <= y
{
    return -x;
}

method AbsEx3(x: int) returns (y: int)
    requires x == -1
    ensures y >= 0 && (y == x || y == -x)
{
    y := x + 2;
}

method MultipleReturns(x: int, y: int) returns (more: int, less: int)
    requires 0 < y
    ensures less < x < more
{
    more := x + y;
    less := x - y;
}

// Método retorna o máximo entre dois ints, 'a' e 'b'.
// Exige que 'a' e 'b' sejam maiores ou iguais a 0.
// Assegura que o resultado é ou 'a' ou 'b'
method Max(a: int, b: int) returns (c: int)
    requires a >= 0 && b >= 0
    ensures c == a || c == b
{
    if a > b {
        return a;
    } else {
        return b;
    }
}

method TestingAbs()
{
    var num := -3;
    var v := Abs(num);
    print v;
    assert 0 <= v;
}

method TestingMax()
{
    var a, b := 5, 4;
    var c;

    c := Max(a, b);
    
    // A assertiva a seguir só funciona pq o método Max() assegura que
    // o retorno é ou 'a' ou 'b'. Como 1 não é nem 'a' nem 'b', ele consegue
    // avaliar.

    // Se colocar 5 na assertiva, ele não consegue avaliar pois deixa o 4 de
    // fora. Se colocar o 4, ele consegue, incluindo tanto 4 quanto 5.
    assert c > 1;
}

method TestingAbsEx3()
{
    var num := -1;
    var v := AbsEx3(num);
    assert 0 <= v;
}
method Main()
{
    // TestingAbs();
    // TestingMax();
    TestingAbsEx3();
}