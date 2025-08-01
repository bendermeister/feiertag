import feiertag.{Austria}
import gleeunit

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn get_holidays_austria_2025_test() {
  let expected = [
    #(#(2025, 1, 1), "Neujahr"),
    #(#(2025, 1, 6), "Heilige Drei Könige"),
    #(#(2025, 4, 21), "Ostermontag"),
    #(#(2025, 5, 1), "Staatsfeiertag"),
    #(#(2025, 5, 29), "Christi Himmelfahrt"),
    #(#(2025, 6, 9), "Pfingstmontag"),
    #(#(2025, 6, 19), "Fronleichnam"),
    #(#(2025, 8, 15), "Mariä Himmelfahrt"),
    #(#(2025, 10, 26), "Nationalfeiertag"),
    #(#(2025, 11, 1), "Allerheiligen"),
    #(#(2025, 12, 8), "Mariä Empfängnis"),
    #(#(2025, 12, 25), "Christtag"),
    #(#(2025, 12, 26), "Stefanitag"),
  ]

  assert expected == feiertag.get_holidays(Austria, 2025)
}

pub fn get_holidays_austria_2026_test() {
  let expected = [
    #(#(2026, 1, 1), "Neujahr"),
    #(#(2026, 1, 6), "Heilige Drei Könige"),
    #(#(2026, 4, 6), "Ostermontag"),
    #(#(2026, 5, 1), "Staatsfeiertag"),
    #(#(2026, 5, 14), "Christi Himmelfahrt"),
    #(#(2026, 5, 25), "Pfingstmontag"),
    #(#(2026, 6, 4), "Fronleichnam"),
    #(#(2026, 8, 15), "Mariä Himmelfahrt"),
    #(#(2026, 10, 26), "Nationalfeiertag"),
    #(#(2026, 11, 1), "Allerheiligen"),
    #(#(2026, 12, 8), "Mariä Empfängnis"),
    #(#(2026, 12, 25), "Christtag"),
    #(#(2026, 12, 26), "Stefanitag"),
  ]

  assert expected == feiertag.get_holidays(Austria, 2026)
}

pub fn get_holidays_austria_2027_test() {
  let expected = [
    #(#(2027, 1, 1), "Neujahr"),
    #(#(2027, 1, 6), "Heilige Drei Könige"),
    #(#(2027, 3, 29), "Ostermontag"),
    #(#(2027, 5, 1), "Staatsfeiertag"),
    #(#(2027, 5, 6), "Christi Himmelfahrt"),
    #(#(2027, 5, 17), "Pfingstmontag"),
    #(#(2027, 5, 27), "Fronleichnam"),
    #(#(2027, 8, 15), "Mariä Himmelfahrt"),
    #(#(2027, 10, 26), "Nationalfeiertag"),
    #(#(2027, 11, 1), "Allerheiligen"),
    #(#(2027, 12, 8), "Mariä Empfängnis"),
    #(#(2027, 12, 25), "Christtag"),
    #(#(2027, 12, 26), "Stefanitag"),
  ]
  assert expected == feiertag.get_holidays(Austria, 2027)
}
