# MarketBoomer- Ruby Take Home Project

## Sample CSV file

```
ITEM,ID,PARENT
feelings,98473,nil
happy,621dsz.t,98473
sad,what-a-strange-id,98473
```

## How to run

Let's run sample files in this repo.

### Sample 1

`$ruby file_processor.rb sample-1.csv`

**Output**

```
+ feelings
  + happy
  + sad
```

### Sample 2

`$ruby file_processor.rb sample-2.csv`

**Output**

```
+ Milky Way
  + Proxima Centauri
    + Proxima Centauri c
    + Proxima Centauri b
  + Sol
    + Mercury
    + Venus
    + Terra
      + Mountains
      + Luna
    + Pluto
    + Jupiter
    + Uranus
    + Saturn
    + Mars
      + Mountains
```

Thank you!
