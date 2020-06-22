function taskB(parN) {
    let n = parN,
        min = 1000,
        minp = 1000 * 1000;
    let a = [];

    console.log("n = " + n);

    for (let index = 1; index < 9; index++) {
        a[index] = randomInteger(1, 1000);
    }
    for (let index = 9; index < n; index++) {
        a[index] = randomInteger(1, 1000);
        if ((a[1] % 2 == 1) && (a[1] < min)) {
            min = a[1];
        } else if ((min * a[9] < minp) && (min * a[9] % 2 == 1)) {
            minp = minp * a[9];
        }

        for (let j = 1; j < 6; j++) {
            a[j] = a[j + 1];
        }
    }
    if (minp % 2 == 0) {
        return console.log('-1');
    } else {
        return console.log(minp);
    }
}

function randomInteger(min, max) {
    let rand = min - 0.5 + Math.random() * (max - min + 1);
    return Math.round(rand);
}

function main() {
    taskB(randomInteger(9, 10000));
    return "Вычислено";
}

console.log(main())
