# 02 - Functions

In the console window try writing `window.prompt()`

You will see that it opens an input box for you type in

Then if you submit you can see the input in your console

Now try assigning the value of the input to a variable like this

`name = window.prompt("What is your name?")`

try writing name in the window and see that it has been stored!

`window` is an object and `prompt` is a function that it has.

To use a function you must write parenthesis `()` and inside you can enter a parameter, it is like an option.

Now lets try making our own function!

First try writing `hello()` in the console. It is not defined!

Lets make this function

```
function hello(name, age) {
    return "Hello " + name + ". You are " + age + " years old."
}
```

Try writing `hello("Sune", 34)` now!

Lets write another function
```
function whoAreYou() {
    name = window.prompt("What is your name?")
    age = window.prompt("What is your age?")
    console.log(hello(name, age))
}
```
