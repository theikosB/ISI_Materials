// computing the primes upto a certain limit
#include <stdio.h>
#define METHOD 1
#define LIMITN 100000		// Look for primes under this limit
// #define LIMITN 30		// Look for primes under this limit
#define ASIZE  20000		// This will hold all the primes
int main()
{
   
    struct {
        long int rem;
        long int prime;
        } factor[ASIZE];
    int idx=0, n, isprime, j;
    printf("Will list primes starting from 2 upto %d\n",LIMITN);
    for(n=2;n<LIMITN;n++) {	// Interesting: n is never used explicitly!
        isprime=1;
        for( j=0; j<idx;j++){
#if METHOD == 1
	    // First idea is dont use the "%" operator
            factor[j].rem++;
            if (factor[j].rem==factor[j].prime) {
                factor[j].rem=0;
                isprime=0;
            }
#else
	    // Another idea is to use a cryptic single line
	    if ( (factor[j].rem=(factor[j].rem+1)%factor[j].prime) == 0 )
		    isprime=0;
#endif
	  
        }
        if(isprime){
            printf("%3d %d\n",idx+1,n);
            factor[idx].rem=0, factor[idx].prime=n;
            idx++;
        }
    }
}
