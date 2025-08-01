# feiertag

[![Package Version](https://img.shields.io/hexpm/v/feiertag)](https://hex.pm/packages/feiertag)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/feiertag/)

Calculate state holidays on the fly

```sh
gleam add feiertag@1
```
```gleam
import feiertag
import gleam/io

pub fn main() {
    io.println("is x-mas a state holiday?")
    assert Ok("Christtag") == feiertag.get_holiday(feiertag.Austria, 2025, 12, 25)
    io.println("yes!!! x-mas is a state holiday in austria <3")
}
```

Further documentation can be found at <https://hexdocs.pm/feiertag>.

## Currently supported Countries
- Austria

Adding a country should be fairly simple PRs are welcome <3

## Development

```sh
gleam run   # Run the project
gleam test  # Run the tests
```
