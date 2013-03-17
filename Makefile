all: shpcat.class osmconvert

osmconvert: osmconvert.c
	cc -O3 -o osmconvert osmconvert.c -lz

shpcat.class: shpcat.java
	javac shpcat.java
