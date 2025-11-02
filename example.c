int cheese() {
    return 1+2+3+4+5+6+7+8+9+10-11-12-13-14-15-16-17-18-19-20;
}

int apple(int a, int b, int c) {
    a = b + c - a;
    c = b - a;
    return a + b + c;
}

int wain(int a, int b) {
    int* p = NULL;
    int orange = 50;
    int pear = 40;

    if (1 == 6 - 5) {
        pear = 80;
    } else {
        pear = cheese();
    }

    return apple(pear, cheese(), orange + 50);
}