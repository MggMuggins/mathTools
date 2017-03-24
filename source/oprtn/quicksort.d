
module oprtn.quicksort;

import std.stdio;

/*
 * Pseudocode *
algorithm quicksort(A, lo, hi) is
    if lo < hi then
        p := partition(A, lo, hi)
        quicksort(A, lo, p)
        quicksort(A, p + 1, hi)

algorithm partition(A, lo, hi) is
    pivot := A[lo]
    i := lo - 1
    j := hi + 1
    loop forever
        do
            i := i + 1
        while A[i] < pivot

        do
            j := j - 1
        while A[j] > pivot

        if i >= j then
            return j

        swap A[i] with A[j]
*/

ulong[] quicksort(ulong[] numbs, int lo, int hi) {
    int p = 0;
    if (lo < hi) {
        p = partition(numbs, lo, hi);
        quicksort(numbs, lo, p);
        quicksort(numbs, p + 1, hi);
    }
    return numbs;
}

uint partition(ulong[] numbs, int lo, int hi) {
    ulong pivot = numbs[lo];
    int i = lo - 1, j = hi + 1;
    while (1) {
        do {
            ++i;
        } while (numbs[i] < pivot);
        do {
            --j;
        } while (numbs[j] > pivot);
        if (i >= j) {
            return j;
        }
        numbs.swap(i, j);
    }
}

ulong[] swap(ulong[] numbs, int i1, int i2) {
    ulong sto = numbs[i2];
    numbs[i2] = numbs[i1];
    numbs[i1] = sto;
    return numbs;
}

/*
 * Algorithm steps:
 * Pick an element from the list, which is called a pivot.
 *
 * Reorder the list with a rule that all elements which are less than the pivot come before the pivot,
 * whereas all elements that are higher than the list come after the pivot. After partitioning the list, the pivot is in its position.
 *
 * With the two sub-lists, apply the above steps recursively.
 */
