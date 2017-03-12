module oprtn.data;

ulong getAverage(ulong[] numbs, ulong sum) {
    return sum/numbs.length;
}

//This MUST take a sorted list
ulong getMedian(ulong[] numbs) {
    ulong median = numbs[numbs.length/2];
    return median;
}

ulong getMode(ulong[] numbs) {
    ulong[ulong] count;
    ulong mode, last = 0;
    //Construct Associative array with each element of numbs as the keys, and the count as the element associated with each number.
    foreach (var; numbs) {
        if (var in count) {
            ++count[var];
        } else {
            count[var] = 1;
        }
    }
    //Find the largest value of the array and store it's key in big.
    foreach (key, val; count) {
        if (val > last) {
            mode = key;
        }
        last = val;
    }
    return mode;
}
