/* Tugas 2 Hal 20 */

/* Nomor 1 */

/* makan */
makan(monyet, pisang).
:- op(600, xfx, makan).
makan(kura-kura, rumputlaut).
makan(burungpelikan, ikan).

/* berkembangbiak */
melahirkan(monyet).
:- op(600, xf, melahirkan).
bertelur(burungpelikan).
:- op(600, xf, bertelur).
bertelur(kura-kura).

/* lainnya */
tumbuhan(pisang).
:- op(600, xf, tumbuhan).
tumbuhan(rumputlaut).
hewan(ikan).
:- op(600, xf, hewan).


/*umur*/
berumur(monyet, '45 tahun').
berumur(kura-kura, '70 tahun').
berumur(burungpelikan, '25 tahun').
:- op(600, xfx, berumur).

/* rules */
herbivora(X) :- makan(X,Y), tumbuhan(Y).
:- op(600, xf, herbivora).
hiduppalinglama(kura-kura).
:- op(600, xf, hiduppalinglama).

/* Nomor 2 */
/*a. melakukan operasi arit sederhana */
arith('+', X, Y, Z) :- Z is X + Y.
arith('/', X, Y, Z) :- Z is X / Y.
arith('-', X, Y, Z) :- Z is X - Y.
arith('*', X, Y, Z) :- Z is X * Y.

/*b. menghitung nilai mutlak bilangan */
abs(X,Y) :- X >= 0, Y is X.
abs(X,Y) :- X < 0, Y is X * (-1).

/*c. mencari nilai maks dari 2 bilangan */
max(A,B,A) :- A > B.
max(A,B,B) :- A < B.
max(A,B,_N) :- A =:= B.

/*d. mencari nilai median dari tiga bilangan*/
med(A,B,C,A) :- A>B, A<C.
med(A,B,C,A) :- A<B, A>C.
med(A,B,C,B) :- B>A, B<C.
med(A,B,C,B) :- B<A, B>C.
med(A,B,C,C) :- C>B, C<A.
med(A,B,C,C) :- C<B, C>A.

