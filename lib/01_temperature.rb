def ftoc (temp)
  celsius = (temp.to_f - 32.0) * (5.0 / 9.0)
  return celsius
end


def ctof (temp)
  farenheit = (temp.to_f * (9.0/5.0)) + 32
  return farenheit
end
