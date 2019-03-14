## Atbash Cipher

A folding cipher where the mappings are done by "folding the alphabet." This way, "a" maps to "z", "b" maps to "y", "c" maps to "x", and so on.

[https://en.wikipedia.org/wiki/Atbash](https://en.wikipedia.org/wiki/Atbash)
```
Plain:    abcdefghijklmnopqrstuvwxyz
Cipher:   zyxwvutsrqponmlkjihgfedcba
```


Example usage:

```
"hello" => "svool"

"peter" => "kvgvi"

```
## Further
Implement `decode` funcionality.

## Further
Prompt the user for input and encode that input.

## Further
Prompt the user for input and then see if they want to either encode or decode that input.

## Further
The cipher assumes a character set of just letters. It doesn't include number characters.

Create the ability for the user to input their own charaacter set, `abcdefghijklmnopqrstuvwxyz1234567890` for example. Then process that input so that you can encode a cipher. (reverse the order) Ask the user for some input to encode.
