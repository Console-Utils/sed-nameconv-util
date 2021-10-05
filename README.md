# Naming convention converter

## Description

Tool to convert identifiers according to naming convention.

## Requirenments

- `GNU sed 4.7`

## Syntax

```bash
echo '[options]' | sed -r -f nameconv.sed
```

## Options

- `-f`|`--from` - initial case style
  - required: true
  - value: `pascal-case`|`snake-case`
- `-t`|`--to` - target case style
  - required: true
  - value: `pascal-case`|`snake-case`
- `-t`|`--input` - target case style
  - required: true
  - value: any string

## Return codes

- `0` - always returned

## Errors

- No correct input naming convention specified or syntax is wrong. (1 error code)
- No correct target naming convention specified or syntax is wrong. (1 error code)
- Something went wrong. Please check whether all options are separated via at least one space. (1 error code)

## Notes

All options and text to be tranformed must be passed as a single input string to sed.

## Examples

```bash
echo '--from pascal-case --to snake-case --input HelloWorld' | sed -r -f nameconv.sed
```
