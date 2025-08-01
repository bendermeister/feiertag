import feiertag.{Austria}
import gleeunit

pub fn main() -> Nil {
  gleeunit.main()
}

pub fn is_holiday_austria_2025_test() {
  assert True == feiertag.is_holiday(Austria, 2025, 1, 1)
  assert True == feiertag.is_holiday(Austria, 2025, 1, 6)
  assert True == feiertag.is_holiday(Austria, 2025, 4, 21)
  assert True == feiertag.is_holiday(Austria, 2025, 5, 1)
  assert True == feiertag.is_holiday(Austria, 2025, 5, 29)
  assert True == feiertag.is_holiday(Austria, 2025, 6, 9)
  assert True == feiertag.is_holiday(Austria, 2025, 6, 19)
  assert True == feiertag.is_holiday(Austria, 2025, 8, 15)
  assert True == feiertag.is_holiday(Austria, 2025, 10, 26)
  assert True == feiertag.is_holiday(Austria, 2025, 11, 1)
  assert True == feiertag.is_holiday(Austria, 2025, 12, 8)
  assert True == feiertag.is_holiday(Austria, 2025, 12, 25)
  assert True == feiertag.is_holiday(Austria, 2025, 12, 26)

  assert False == feiertag.is_holiday(Austria, 2025, 1, 2)
  assert False == feiertag.is_holiday(Austria, 2025, 2, 28)
  assert False == feiertag.is_holiday(Austria, 2025, 3, 15)
  assert False == feiertag.is_holiday(Austria, 2025, 8, 19)
  assert False == feiertag.is_holiday(Austria, 2025, 11, 13)
}

pub fn get_holiday_austria_2025_test() {
  assert Ok("Neujahr") == feiertag.get_holiday(Austria, 2025, 1, 1)
  assert Ok("Heilige Drei Könige") == feiertag.get_holiday(Austria, 2025, 1, 6)
  assert Ok("Ostermontag") == feiertag.get_holiday(Austria, 2025, 4, 21)
  assert Ok("Staatsfeiertag") == feiertag.get_holiday(Austria, 2025, 5, 1)
  assert Ok("Christi Himmelfahrt") == feiertag.get_holiday(Austria, 2025, 5, 29)
  assert Ok("Pfingstmontag") == feiertag.get_holiday(Austria, 2025, 6, 9)
  assert Ok("Fronleichnam") == feiertag.get_holiday(Austria, 2025, 6, 19)
  assert Ok("Mariä Himmelfahrt") == feiertag.get_holiday(Austria, 2025, 8, 15)
  assert Ok("Nationalfeiertag") == feiertag.get_holiday(Austria, 2025, 10, 26)
  assert Ok("Allerheiligen") == feiertag.get_holiday(Austria, 2025, 11, 1)
  assert Ok("Mariä Empfängnis") == feiertag.get_holiday(Austria, 2025, 12, 8)
  assert Ok("Christtag") == feiertag.get_holiday(Austria, 2025, 12, 25)
  assert Ok("Stefanitag") == feiertag.get_holiday(Austria, 2025, 12, 26)

  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 1, 2)
  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 1, 3)
  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 1, 4)
  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 4, 18)
  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 6, 20)
  assert Error(Nil) == feiertag.get_holiday(Austria, 2025, 12, 1)
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

pub fn is_holiday_austria_2026_test() {
  assert True == feiertag.is_holiday(Austria, 2026, 1, 1)
  assert True == feiertag.is_holiday(Austria, 2026, 1, 6)
  assert True == feiertag.is_holiday(Austria, 2026, 4, 6)
  assert True == feiertag.is_holiday(Austria, 2026, 5, 1)
  assert True == feiertag.is_holiday(Austria, 2026, 5, 14)
  assert True == feiertag.is_holiday(Austria, 2026, 5, 25)
  assert True == feiertag.is_holiday(Austria, 2026, 6, 4)
  assert True == feiertag.is_holiday(Austria, 2026, 8, 15)
  assert True == feiertag.is_holiday(Austria, 2026, 10, 26)
  assert True == feiertag.is_holiday(Austria, 2026, 11, 1)
  assert True == feiertag.is_holiday(Austria, 2026, 12, 8)
  assert True == feiertag.is_holiday(Austria, 2026, 12, 25)
  assert True == feiertag.is_holiday(Austria, 2026, 12, 26)

  assert False == feiertag.is_holiday(Austria, 2026, 3, 11)
  assert False == feiertag.is_holiday(Austria, 2026, 5, 16)
  assert False == feiertag.is_holiday(Austria, 2026, 8, 7)
  assert False == feiertag.is_holiday(Austria, 2026, 10, 25)
}

pub fn get_holiday_austria_2026_test() {
  assert Ok("Neujahr") == feiertag.get_holiday(Austria, 2026, 1, 1)
  assert Ok("Heilige Drei Könige") == feiertag.get_holiday(Austria, 2026, 1, 6)
  assert Ok("Ostermontag") == feiertag.get_holiday(Austria, 2026, 4, 6)
  assert Ok("Staatsfeiertag") == feiertag.get_holiday(Austria, 2026, 5, 1)
  assert Ok("Christi Himmelfahrt") == feiertag.get_holiday(Austria, 2026, 5, 14)
  assert Ok("Pfingstmontag") == feiertag.get_holiday(Austria, 2026, 5, 25)
  assert Ok("Fronleichnam") == feiertag.get_holiday(Austria, 2026, 6, 4)
  assert Ok("Mariä Himmelfahrt") == feiertag.get_holiday(Austria, 2026, 8, 15)
  assert Ok("Nationalfeiertag") == feiertag.get_holiday(Austria, 2026, 10, 26)
  assert Ok("Allerheiligen") == feiertag.get_holiday(Austria, 2026, 11, 1)
  assert Ok("Mariä Empfängnis") == feiertag.get_holiday(Austria, 2026, 12, 8)
  assert Ok("Christtag") == feiertag.get_holiday(Austria, 2026, 12, 25)
  assert Ok("Stefanitag") == feiertag.get_holiday(Austria, 2026, 12, 26)

  assert Error(Nil) == feiertag.get_holiday(Austria, 2026, 12, 11)
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

pub fn get_holiday_austria_2027_test() {
  assert Ok("Neujahr") == feiertag.get_holiday(Austria, 2027, 1, 1)
  assert Ok("Heilige Drei Könige") == feiertag.get_holiday(Austria, 2027, 1, 6)
  assert Ok("Ostermontag") == feiertag.get_holiday(Austria, 2027, 3, 29)
  assert Ok("Staatsfeiertag") == feiertag.get_holiday(Austria, 2027, 5, 1)
  assert Ok("Christi Himmelfahrt") == feiertag.get_holiday(Austria, 2027, 5, 6)
  assert Ok("Pfingstmontag") == feiertag.get_holiday(Austria, 2027, 5, 17)
  assert Ok("Fronleichnam") == feiertag.get_holiday(Austria, 2027, 5, 27)
  assert Ok("Mariä Himmelfahrt") == feiertag.get_holiday(Austria, 2027, 8, 15)
  assert Ok("Nationalfeiertag") == feiertag.get_holiday(Austria, 2027, 10, 26)
  assert Ok("Allerheiligen") == feiertag.get_holiday(Austria, 2027, 11, 1)
  assert Ok("Mariä Empfängnis") == feiertag.get_holiday(Austria, 2027, 12, 8)
  assert Ok("Christtag") == feiertag.get_holiday(Austria, 2027, 12, 25)
  assert Ok("Stefanitag") == feiertag.get_holiday(Austria, 2027, 12, 26)
}

pub fn is_holiday_austria_2027_test() {
  assert True == feiertag.is_holiday(Austria, 2027, 1, 1)
  assert True == feiertag.is_holiday(Austria, 2027, 1, 6)
  assert True == feiertag.is_holiday(Austria, 2027, 3, 29)
  assert True == feiertag.is_holiday(Austria, 2027, 5, 1)
  assert True == feiertag.is_holiday(Austria, 2027, 5, 6)
  assert True == feiertag.is_holiday(Austria, 2027, 5, 17)
  assert True == feiertag.is_holiday(Austria, 2027, 5, 27)
  assert True == feiertag.is_holiday(Austria, 2027, 8, 15)
  assert True == feiertag.is_holiday(Austria, 2027, 10, 26)
  assert True == feiertag.is_holiday(Austria, 2027, 11, 1)
  assert True == feiertag.is_holiday(Austria, 2027, 12, 8)
  assert True == feiertag.is_holiday(Austria, 2027, 12, 25)
  assert True == feiertag.is_holiday(Austria, 2027, 12, 26)
}
