
module oprtn.quicksort;

import std.stdio;
/*
ulong[] quicksort(ulong[] numbs) {
    ulong p, lo = numbs[0], hi = numbs[$ - 1];
    writeln("Entered Quicksort Algorithm");
    if (lo < hi) {
        p = partition(numbs, lo, hi);
    }
    return numbs;
}

ulong partition(ulong[] numbs, ulong lo, ulong hi) {
    ulong pivot = numbs[lo];
    ulong i = lo -1, j = hi + 1;
    writeln("Entering Partitioning algorithm");
    while(true) {
        do {
            i++;
        } while (numbs[i] < pivot);
        do {
            j--;
        } while (numbs[j] > pivot);
        if (i >= j) {
            return j;
        }
        numbs.swap(i, j);
    }
}

ulong[] swap(ulong[] numbs, ulong i, ulong j) {
    ulong ii, ij;
    writeln("Swapped ", ii, " and ", ij);
    numbs[i] = ii, numbs[j] = ij;
    numbs[i] = ij, numbs[j] = ii;
    return numbs;
} */
