## Interval check

If you have a value that should stay within an interval, for example number of
lives, you can use a Clamp function.

newLevel = Mathf.Clamp(level - 1, 0, 3);

The first parameter is the new value to be tested, next is min and
then max. The function returns a valid value as close to the new
value as possible.
