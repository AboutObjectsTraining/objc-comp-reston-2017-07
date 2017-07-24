#import <stdio.h>


enum Color {
    Yellow,
    Brown,
    Pink
};

typedef enum Color Color;


void doStringStuff() {
    char words[] = "Hello world!";
    printf("%s\n", words);
    
    for(char *p = words; *p; p++) {
        printf("address: %p, value: %c\n", p, *p);
    }
    
    {
        char *p = "oof!";
        printf("address: %p, value: %c\n", p, *p);
    }
    
    putchar('\n');
}

void doCharStuff() {
    char myChar = 99;
    
    printf("my char is %c, previous char is  %c\n", myChar, myChar - 1);
    
    printf("the alphabet is ");
    for (int i = 0; i < 26; i++) {
        putchar(97 + i);
    }
    putchar('\n');
}


void doEnumStuff(Color someColor) {
    
}

void doSomething(void) {
    printf("In %s\n", __func__);
}


//int main(int argc, const char * argv[]) {
//    
//    doStringStuff();
////    doCharStuff();
////    doSomething();
////    doEnumStuff(Pink);
//    
//    return 0;
//}
