def measure(count=1)
  time_total = 0
  s = Time.now
  count.times do
    time_start = Time.now
    yield
    time_end = Time.now
    time_total += time_end - time_start
  end
  return (time_total / count)
end