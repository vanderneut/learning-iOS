//
//  main.c
//  C Primer
//
//  Created by Erik van der Neut on 4/21/13.
//  Copyright (c) 2013 Erik van der Neut. All rights reserved.
//

#include <stdio.h>

/**
 * Function prototoypes. Note that function prototypes aren't strictly necessary 
 * on the condition that the implementation of the function is placed before it 
 * is called for the first time. However, using function prototypes is useful as
 * it allows developers to spread source code over multiple files and thereby 
 * keeping a project organized.
 */
void helloWorld();
int multiplyByFive(int a);
void structureExercise();
void pointerExercise();

/**
 * MAIN function
 */
int main(int argc, const char * argv[])
{
	helloWorld();
	
    // Variables
    int a = 5;
    float b = 6.3;
    char c = 'r';
    printf("- This is an int : %i\n", a);
    printf("- This is a float: %f\n", b);
    printf("- This is a char : %c\n", c);
    
	printf("\n- %i multiplied by 5 is: %i\n", a, multiplyByFive(a));
	
	structureExercise();
	pointerExercise();
	
    return 0;
}

void helloWorld()
{
	printf("Hello, World!\n\n");
}

int multiplyByFive(int a)
{
	return 5 * a;
}

void structureExercise()
{
	struct Album
	{
		int year;
		int tracks;
	};
	
	struct Album myAlbum;
	struct Album yourAlbum;
	
	myAlbum.year = 1971;
	myAlbum.tracks = 7;
	
	yourAlbum.year = 2001;
	yourAlbum.tracks = 15;
	
	printf("\nMy album was released in %i and had %i tracks.\n", myAlbum.year, myAlbum.tracks);
	printf("Your album was released in %i and had %i tracks.\n", yourAlbum.year, yourAlbum.tracks);
}

void pointerExercise()
{
	int d = 5;
	int *e = &d;
	
	printf("\n> d has a value of %i\n", d);
	printf("> e has a value of %p\n", e);
	printf("> the object that e points to has a value of %i\n", *e);
}