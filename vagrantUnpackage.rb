#!/usr/bin/env ruby

# bulk unpackage all boxes in current directory

boxes = `ls *.box`
boxes.lines do |box|
  box.chomp!
  parts = box.split(':')
  parts.length == 1 ? dest = parts[0] : dest = parts.join('/')

  # vagrant box add chef_centos-6.5-i386.box --name 'chef/centos-6.5-i386.box'
  cmd = "vagrant box add #{box} --name '#{dest}'"
  puts cmd ; `#{cmd}`
end
