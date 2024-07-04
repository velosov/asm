as hello-world.s -o hello-world.o # compiles to intermediate object file
gcc -o hello-world hello-world.o -nostdlib -static # converts into machine instructions' executable
./hello-world # runs it
echo $? #prints exit code