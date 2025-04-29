# 02 - Functions

Go to the Console window again (`Ctrl` + `Shift` + `i` or right-click "Inspect").

Try this:

```javascript
window.prompt()
```

It makes a question box!

Now, let's remember the answer:

```javascript
name = window.prompt("What is your name?")
```

Type `name` to see it! `prompt()` is a **function** – a tool that asks questions.

Let's make our own **function**!

First write this in your console

```javascript
hello("Bert", 10)
```

Notice it doesn't exist!

Lets create it by typing this:

```javascript
function hello(name, age) {
    return "Hello " + name + ". You are " + age + " years old."
}
```

Now use it:

```javascript
hello("Friend's Name", Their Age)
```

It makes a sentence!

Here's another **function**:

```javascript
function whoAreYou() {
    name = window.prompt("What is your name?")
    age = window.prompt("What is your age?")
    console.log(hello(name, age))
}
```

Try `whoAreYou()`! **Functions** are like mini-programs that make the computer do things. ✨
