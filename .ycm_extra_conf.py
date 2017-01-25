# My modified version of YouCompleteMe's completion fils, modified for my own
# uses.

import os
import ycm_core


cflags = [
    '-Wall',
    '-Wextra',
# THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
# language to use when compiling headers. So it will guess. Badly. So C++
# headers will be compiled as C headers. You don't want that so ALWAYS specify
# a "-std=<something>".
# For a C project, you would set this to something like 'c99' instead of
# 'c++11'.
'-std=gnu99',
# ...and the same thing goes for the magic -x option which specifies the
# language that the files to be compiled are written in. This is mostly
# relevant for c++ headers.
# For a C project, you would set this to 'c' instead of 'c++'.
'-x',
'c'
]


cppflags = [
    '-Wall',
    '-Wextra',
# THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
# language to use when compiling headers. So it will guess. Badly. So C++
# headers will be compiled as C headers. You don't want that so ALWAYS specify
# a "-std=<something>".
# For a C project, you would set this to something like 'c99' instead of
# 'c++11'.
'-std=gnu++11',
# ...and the same thing goes for the magic -x option which specifies the
# language that the files to be compiled are written in. This is mostly
# relevant for c++ headers.
# For a C project, you would set this to 'c' instead of 'c++'.
'-x',
'c++'
]


gtkflags = [
'-I./include',
'-I/usr/include/gtk-3.0',
'-I/usr/include/at-spi2-atk/2.0',
'-I/usr/include/at-spi-2.0',
'-I/usr/include/dbus-1.0',
'-I/usr/lib/dbus-1.0/include',
'-I/usr/include/gtk-3.0',
'-I/usr/include/gio-unix-2.0/',
'-I/usr/include/cairo',
'-I/usr/include/pango-1.0',
'-I/usr/include/atk-1.0',
'-I/usr/include/cairo',
'-I/usr/include/pixman-1',
'-I/usr/include/freetype2',
'-I/usr/include/libpng16',
'-I/usr/include/harfbuzz',
'-I/usr/include/glib-2.0',
'-I/usr/lib/glib-2.0/include',
'-I/usr/include/freetype2',
'-I/usr/include/harfbuzz',
'-I/usr/include/libdrm',
'-I/usr/include/libpng16',
'-I/usr/include/gdk-pixbuf-2.0',
'-I/usr/include/libpng16',
'-I/usr/include/glib-2.0',
'-I/usr/lib/glib-2.0/include'
]

gtkmmflags = [
'-pthread',
'-I/usr/include/gtkmm-3.0',
'-I/usr/lib64/gtkmm-3.0/include',
'-I/usr/include/atkmm-1.6',
'-I/usr/include/gtk-3.0/unix-print',
'-I/usr/include/gdkmm-3.0',
'-I/usr/lib64/gdkmm-3.0/include',
'-I/usr/include/giomm-2.4',
'-I/usr/lib64/giomm-2.4/include',
'-I/usr/include/pangomm-1.4',
'-I/usr/lib64/pangomm-1.4/include',
'-I/usr/include/glibmm-2.4',
'-I/usr/lib64/glibmm-2.4/include',
'-I/usr/include/gtk-3.0',
'-I/usr/include/at-spi2-atk/2.0',
'-I/usr/include/at-spi-2.0',
'-I/usr/include/dbus-1.0',
'-I/usr/lib64/dbus-1.0/include',
'-I/usr/include/gtk-3.0',
'-I/usr/include/gio-unix-2.0/',
'-I/usr/include/cairo',
'-I/usr/include/pango-1.0',
'-I/usr/include/harfbuzz',
'-I/usr/include/pango-1.0',
'-I/usr/include/atk-1.0',
'-I/usr/include/cairo',
'-I/usr/include/cairomm-1.0',
'-I/usr/lib64/cairomm-1.0/include',
'-I/usr/include/cairo',
'-I/usr/include/pixman-1',
'-I/usr/include/freetype2',
'-I/usr/include/libdrm',
'-I/usr/include/sigc++-2.0',
'-I/usr/lib64/sigc++-2.0/include',
'-I/usr/include/gdk-pixbuf-2.0',
'-I/usr/include/libpng16',
'-I/usr/include/glib-2.0',
'-I/usr/lib64/glib-2.0/include'
]

vte_flags = [
    "-pthread",
    "-I/usr/include/vte-2.91"].extend(gtkflags)

# IMPORTANT: One of the following two lines is required.
flags = cppflags

# You can add gtk or gtkmm with the following.
flags.extend(gtkmmflags)








# Set this to the absolute path to the folder (NOT the file!) containing the
# compile_commands.json file to use that instead of 'flags'. See here for
# more details: http://clang.llvm.org/docs/JSONCompilationDatabase.html
#
# You can get CMake to generate this file for you by adding:
#   set( CMAKE_EXPORT_COMPILE_COMMANDS 1 )
# to your CMakeLists.txt file.
#
# Most projects will NOT need to set this to anything; you can just change the
# 'flags' list of compilation flags. Notice that YCM itself uses that approach.
compilation_database_folder = ''

if os.path.exists( compilation_database_folder ):
  database = ycm_core.CompilationDatabase( compilation_database_folder )
else:
  database = None

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.m', '.mm' ]

def DirectoryOfThisScript():
  return os.path.dirname( os.path.abspath( __file__ ) )


def MakeRelativePathsInFlagsAbsolute( flags, working_directory ):
  if not working_directory:
    return list( flags )
  new_flags = []
  make_next_absolute = False
  path_flags = [ '-isystem', '-I', '-iquote', '--sysroot=' ]
  for flag in flags:
    new_flag = flag

    if make_next_absolute:
      make_next_absolute = False
      if not flag.startswith( '/' ):
        new_flag = os.path.join( working_directory, flag )

    for path_flag in path_flags:
      if flag == path_flag:
        make_next_absolute = True
        break

      if flag.startswith( path_flag ):
        path = flag[ len( path_flag ): ]
        new_flag = path_flag + os.path.join( working_directory, path )
        break

    if new_flag:
      new_flags.append( new_flag )
  return new_flags


def IsHeaderFile( filename ):
  extension = os.path.splitext( filename )[ 1 ]
  return extension in [ '.h', '.hxx', '.hpp', '.hh' ]


def GetCompilationInfoForFile( filename ):
  # The compilation_commands.json file generated by CMake does not have entries
  # for header files. So we do our best by asking the db for flags for a
  # corresponding source file, if any. If one exists, the flags for that file
  # should be good enough.
  if IsHeaderFile( filename ):
    basename = os.path.splitext( filename )[ 0 ]
    for extension in SOURCE_EXTENSIONS:
      replacement_file = basename + extension
      if os.path.exists( replacement_file ):
        compilation_info = database.GetCompilationInfoForFile(
          replacement_file )
        if compilation_info.compiler_flags_:
          return compilation_info
    return None
  return database.GetCompilationInfoForFile( filename )


def FlagsForFile( filename, **kwargs ):
  if database:
    # Bear in mind that compilation_info.compiler_flags_ does NOT return a
    # python list, but a "list-like" StringVec object
    compilation_info = GetCompilationInfoForFile( filename )
    if not compilation_info:
      return None

    final_flags = MakeRelativePathsInFlagsAbsolute(
      compilation_info.compiler_flags_,
      compilation_info.compiler_working_dir_ )

    # NOTE: This is just for YouCompleteMe; it's highly likely that your project
    # does NOT need to remove the stdlib flag. DO NOT USE THIS IN YOUR
    # ycm_extra_conf IF YOU'RE NOT 100% SURE YOU NEED IT.
    try:
      final_flags.remove( '-stdlib=libc++' )
    except ValueError:
      pass
  else:
    relative_to = DirectoryOfThisScript()
    final_flags = MakeRelativePathsInFlagsAbsolute( flags, relative_to )

  return {
    'flags': final_flags,
    'do_cache': True
  }
