# nameconv

## Description

Tool to convert identifiers according to naming convention.

## Requirenments

sed (GNU sed) 4.7 is required to run this tool.

## Usage

```bash
echo '-f|--from <convension> -t|--to <convension> -i|--input <text>' | sed -r -f nameconv.sed
```

where `convension` is:

- `pascal-case`
- `snake-case`

Note: all options and text to be tranformed must be passed as a single input string to sed.

## Errors

- No input naming convention specified or syntax is wrong. (1 error code)
- No target naming convention specified or syntax is wrong. (1 error code)

## Examples

```bash
echo '--from pascal-case --to snake-case --input HelloWorld' | sed -r -f nameconv.sed
```
