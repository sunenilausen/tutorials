# 03 - Attributes and objects

So we can also create a variable that contains many kinds of data. This could be an object.

Try writing this
`sune = { name: "Sune, age: 34 }`

Then you can access the attribute of e.g. age by writing
`sune.age`

Try it out

Now the `sune` object can also contain functions. So lets redefine sune

```javascript
sune = {
    name: "Sune",
    age: 34,
    hello: function() {
        console.log("Hello " + this.name)
    }
}
```
