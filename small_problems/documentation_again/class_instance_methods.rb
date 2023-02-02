# rb 2.7.5
File::path
  This a public class method, available to all instances

  path(path) → string click to toggle source
Returns the string representation of the path

File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"



File#path
  This is a public instance method, available only within an instance

  path → filename click to toggle source
to_path → filename
Returns the pathname used to create file as a string. Does not normalize the name.

The pathname may not point to the file corresponding to file. For instance, the pathname becomes void when the file has been moved or deleted.

This method raises IOError for a file created using File::Constants::TMPFILE because they don't have a pathname.

File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"