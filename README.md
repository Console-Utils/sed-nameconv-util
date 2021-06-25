# nameconv

## Description

Tool to convert identifiers according to naming convention.

## Requirenments

sed (GNU sed) 4.7 is required to run this tool.

## Usage

```bash
echo '-f|--from <convension> -t|--to <convension> --text <text>' | sed -f nameconf.sed
```

where `convension` is:

- `pascal-case`
- `snake-case`

Note: all options and text to be tranformed must be passed as a single input string to sed.

## Errors

No input naming convention specified or syntax is wrong.
No target naming convention specified or syntax is wrong.

## Examples

```bash
echo '--from pascal-case --to snake-case --text <text>' | sed -f nameconf.sed
```
