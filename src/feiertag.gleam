import gleam/bool
import gleam/int
import gleam/list
import gleam/order
import gleam/result

pub type Country {
  Austria
}

type Ordinal {
  Ordinal(year: Int, ordinal: Int)
}

fn is_leap_year(year: Int) -> Bool {
  use <- bool.guard(year % 400 == 0, True)
  use <- bool.guard(year % 100 == 0, False)
  use <- bool.guard(year % 4 == 0, True)

  False
}

fn get_month_lengths(year: Int) -> List(Int) {
  case is_leap_year(year) {
    True -> [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    False -> [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  }
}

fn to_ordinal(year: Int, month: Int, day: Int) -> Ordinal {
  let base =
    get_month_lengths(year)
    |> list.take(month - 1)
    |> list.fold(0, int.add)

  let ordinal = base + day

  Ordinal(year:, ordinal:)
}

fn from_ordinal(ordinal: Ordinal) -> #(Int, Int, Int) {
  let Ordinal(year:, ordinal:) = ordinal
  let #(month, day) =
    get_month_lengths(year)
    |> list.fold(#(1, ordinal), fn(t, month_length) {
      let #(month, ordinal) = t
      case ordinal < month_length {
        True -> #(month, ordinal)
        False -> #(month + 1, ordinal - month_length)
      }
    })

  #(year, month, day)
}

fn ordinal_add(ordinal: Ordinal, days: Int) -> Ordinal {
  assert ordinal.ordinal + days < 367
  Ordinal(year: ordinal.year, ordinal: ordinal.ordinal + days)
}

pub fn is_holiday(country: Country, year: Int, month: Int, day: Int) -> Bool {
  get_holiday(country, year, month, day)
  |> result.is_ok()
}

pub fn get_holiday(
  country: Country,
  year: Int,
  month: Int,
  day: Int,
) -> Result(String, Nil) {
  get_holidays(country, year)
  |> list.find(fn(h) { h.0 == #(year, month, day) })
  |> result.map(fn(h) { h.1 })
}

pub fn get_holidays(
  country: Country,
  year: Int,
) -> List(#(#(Int, Int, Int), String)) {
  case country {
    Austria -> get_holidays_austria(year)
  }
  |> list.sort(fn(a, b) {
    let #(#(ay, am, ad), _) = a
    let #(#(by, bm, bd), _) = b

    int.compare(ay, by)
    |> order.lazy_break_tie(fn() { int.compare(am, bm) })
    |> order.lazy_break_tie(fn() { int.compare(ad, bd) })
  })
}

fn easter_sunday(year: Int) -> Ordinal {
  let a = year % 19
  let b = year / 100
  let c = year % 100
  let d = b / 4
  let e = b % 4
  let f = { b + 8 } / 25
  let g = { b - f + 1 } / 3
  let h = { 19 * a + b - d - g + 15 } % 30
  let i = c / 4
  let k = c % 4
  let l = { 32 + 2 * e + 2 * i - h - k } % 7
  let m = { a + 11 * h + 22 * l } / 451
  let n = { h + l - 7 * m + 114 } / 31
  let o = { h + l - 7 * m + 114 } % 31

  let month = n
  let day = o + 1

  to_ordinal(year, month, day)
}

fn get_holidays_austria(year: Int) -> List(#(#(Int, Int, Int), String)) {
  let easter = easter_sunday(year)

  let easter_offset = fn(days) {
    easter
    |> ordinal_add(days)
    |> from_ordinal
  }

  [
    // fixed dates
    #(#(year, 1, 1), "Neujahr"),
    #(#(year, 1, 6), "Heilige Drei Könige"),
    #(#(year, 5, 1), "Staatsfeiertag"),
    #(#(year, 8, 15), "Mariä Himmelfahrt"),
    #(#(year, 10, 26), "Nationalfeiertag"),
    #(#(year, 11, 1), "Allerheiligen"),
    #(#(year, 12, 8), "Mariä Empfängnis"),
    #(#(year, 12, 25), "Christtag"),
    #(#(year, 12, 26), "Stefanitag"),
    // fluid dates
    #(easter_offset(1), "Ostermontag"),
    #(easter_offset(39), "Christi Himmelfahrt"),
    #(easter_offset(50), "Pfingstmontag"),
    #(easter_offset(60), "Fronleichnam"),
  ]
}
