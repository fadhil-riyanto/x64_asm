extern int s(int);

int f(int i) {
        if (i == 0) 
                return 1;

        return s(i);
}