module oprtn.data;

ulong getAverage(ulong[] numbs, ulong sum) {
    return sum/numbs.length;
}

//This MUST take a sorted list
ulong getMedian(ulong[] numbs) {
    ulong median = numbs[numbs.length/2];
    return median;
}

/* This REALLY Does not work
ulong getMode(ulong[] numbs) {
    Mode[] count;
    ulong big;
    //Construct Associative array with each element of numbs as the key, and the count as the element.
    foreach (var, numbs) {
        if (var in count) {
            ++count[var];
        } else {
            count[var] = 1;
        }
    }
    //Find the largest value of the array and store it's key in big.
    foreach (key, val, count) {
        big = val;
        if
    }
    return big;
} */
