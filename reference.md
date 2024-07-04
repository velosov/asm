Registers:
    r: 64 bits
    e(xtended): 32
    - (none): 16

    Ax would stand for accumulator
    Cx for counter/loops
    majority now of free use, except a few like rsp (stack pointer) and rbp (base pointer)

[SYSCALLs](https://www.chromium.org/chromium-os/developer-library/reference/linux-constants/syscalls/):
    [Tables](https://syscall.sh/)

PIE: Position Independent Executables, implemented by default by gcc to leverage Address Space Layout Randomization (ASLR) as a form of mitigation of memory vulnerabilities. Changes resources' address locations.