## Atbash Cipher

A folding cipher where the mappings are done by "folding the alphabet." This way, "a" maps to "z", "b" maps to "y", "c" maps to "x", and so on.

[https://en.wikipedia.org/wiki/Atbash](https://en.wikipedia.org/wiki/Atbash)
```
Plain:    abcdefghijklmnopqrstuvwxyz
Cipher:   zyxwvutsrqponmlkjihgfedcba
```

For the class Cipher, implement a class method `encode` that takes a word as an argument returns the encoded word

Example usage:

```
Cipher.encode("hello")
=> "svool"

Cipher.encode("peter")
=> "kvgvi"

```
## Further
For the class Cipher, implement a class method `decode` that takes a word as an argument returns the decoded word
