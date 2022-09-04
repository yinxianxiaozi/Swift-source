//
//  main.m
//  闭包2Test
//
//  Created by 张文艺 on 2022/9/4.
//

#import <Foundation/Foundation.h>

/*
 2、getelementptr指令的认识
 */
struct munger_struct{
    int f1;
    int f2;
};
void munge(struct munger_struct *P){
    P[0].f1 = P[1].f1 + P[2].f2;
}
//使用
struct munger_struct* array[3];

//int main(int argc, const char * argv[]) {
//
//    munge(array);
//
//    return 0;
//}
