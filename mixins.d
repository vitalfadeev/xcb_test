// expansion at /usr/include/dmd/druntime/import/object.d(4907,5)
import imported = std.traits;

// expansion at /usr/include/dmd/phobos/std/functional.d(455,16)
cast(T)a < cast(T) b

// expansion at /usr/include/dmd/phobos/std/format/spec.d(172,13)
private ubyte _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf;@property bool flDash() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 1U) != 0;}
@property void flDash(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 1U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))1U);}
@property bool flZero() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 2U) != 0;}
@property void flZero(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 2U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))2U);}
@property bool flSpace() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 4U) != 0;}
@property void flSpace(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 4U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))4U);}
@property bool flPlus() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 8U) != 0;}
@property void flPlus(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 8U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))8U);}
@property bool flHash() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 16U) != 0;}
@property void flHash(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 16U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))16U);}
@property bool flEqual() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 32U) != 0;}
@property void flEqual(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 32U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))32U);}
@property bool flSeparator() @safe pure nothrow @nogc const { return (_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf & 64U) != 0;}
@property void flSeparator(bool v) @safe pure nothrow @nogc { if (v) _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf |= 64U;else _flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf &= cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))(-1-cast(typeof(_flDash_flZero_flSpace_flPlus_flHash_flEqual_flSeparator__bf))64U);}

// expansion at /usr/include/dmd/phobos/std/functional.d(455,16)
cast(T)a < cast(T) b

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/phobos/std/functional.d(225,13)
alias a = __a ;

// expansion at /usr/include/dmd/phobos/std/functional.d(226,13)
alias b = __b ;

// expansion at /usr/include/dmd/phobos/std/functional.d(227,20)
a == b

// expansion at /usr/include/dmd/phobos/std/typecons.d(454,13)
enum int data = 0;

// expansion at /usr/include/dmd/phobos/std/typecons.d(454,13)
enum int count = 0;

// expansion at /usr/include/dmd/phobos/std/typecons.d(641,9)
alias _0LU = Identity!(field[0LU]);alias data = _0LU;alias _1LU = Identity!(field[1LU]);alias count = _1LU;

// expansion at /usr/include/dmd/phobos/std/typecons.d(641,9)
alias _0LU = Identity!(field[0LU]);alias _1LU = Identity!(field[1LU]);

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs < rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs < rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs == rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs < rhs

// expansion at /usr/include/dmd/phobos/std/typecons.d(526,31)
lhs < rhs

// expansion at /usr/include/dmd/phobos/std/internal/memory.d(32,18)
onOutOfMemoryError();

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/druntime/import/core/internal/atomic.d(264,13)

                asm pure nothrow @nogc @trusted
                {
                    naked;
                    lock; xadd[RSI], EDI;
                    mov EAX, EDI;
                    ret;
                }


// expansion at /usr/include/dmd/phobos/std/stdio.d(5263,38)
core.stdc.stdio.stdin

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val-=mod

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/phobos/std/stdio.d(5263,38)
core.stdc.stdio.stdout

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val-=mod

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/phobos/std/stdio.d(5263,38)
core.stdc.stdio.stderr

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val-=mod

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/phobos/std/meta.d(965,13)
auto e0LU = el;

// expansion at /usr/include/dmd/phobos/std/meta.d(965,13)
auto e1LU = el;

// expansion at /usr/include/dmd/phobos/std/meta.d(965,13)
auto e2LU = el;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/phobos/std/functional.d(225,13)
alias a = __a ;

// expansion at /usr/include/dmd/phobos/std/functional.d(226,13)
alias b = __b ;

// expansion at /usr/include/dmd/phobos/std/functional.d(227,20)
a == b

// expansion at /usr/include/dmd/phobos/std/functional.d(225,13)
alias a = __a ;

// expansion at /usr/include/dmd/phobos/std/functional.d(226,13)
alias b = __b ;

// expansion at /usr/include/dmd/phobos/std/functional.d(227,20)
a == b

// expansion at /usr/include/dmd/phobos/std/file.d(1227,21)
statbuf.st_ctime

// expansion at /usr/include/dmd/phobos/std/file.d(1230,26)
statbuf.st_ctim

// expansion at /usr/include/dmd/phobos/std/file.d(1233,26)
statbuf.st_ctimensec

// expansion at /usr/include/dmd/phobos/std/file.d(1234,20)
statbuf.st_ctimensec

// expansion at
.object.size_t h = 0;foreach (i, T; typeof(p.tupleof))    static if(is(T* : const(.object.Object)*))         h = h * 33 + typeid(const(.object.Object)).getHash(cast(const void*)&p.tupleof[i]);    else         h = h * 33 + typeid(T).getHash(cast(const void*)&p.tupleof[i]);return h;

// expansion at /usr/include/dmd/druntime/import/core/internal/atomic.d(138,13)

                asm pure nothrow @nogc @trusted
                {
                    push RBX; // call preserved

                    mov EDX, 0;
                    mov EAX, 0;
                    mov RCX, src;
                    lock; cmpxchg [RCX], EDX;
                    lea RBX, resultValuePtr;
                    mov RBX, [RBX];
                    mov [RBX], EAX;

                    pop RBX;
                }


// expansion at /usr/include/dmd/druntime/import/core/atomic.d(542,9)
*cast(T*)&val+=mod

