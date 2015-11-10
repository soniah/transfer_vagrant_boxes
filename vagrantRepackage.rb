#!/usr/bin/env ruby

# bulk repackage all boxes

`rm -f package.box`
boxes = `vagrant box list`
boxes.lines do |line|
  name = line.split[0]
  version = line.split[2].chop
  cmd = "vagrant box repackage #{name} virtualbox #{version}"
  puts cmd ; `#{cmd}`
  cmd = "mv package.box #{name.sub('/',':')}.box"
  puts cmd ; `#{cmd}`
end
