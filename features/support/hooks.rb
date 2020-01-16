Before do
  puts "Before hook is executed"
  $driver.start_driver
end

After do
  puts "After hook is executed"
  sleep 3
  $driver.driver_quit
end