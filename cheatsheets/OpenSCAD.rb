cheatsheet do
  title 'OpenSCAD'
  docset_file_name 'OpenSCAD'
  keyword 'openscad'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Syntax'

    entry do
      name '[var](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/General#Variables) = [value](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/General#Values_and_Data_Types);'
      # notes "
      # Variables in OpenSCAD are simply a name followed by an assignment via an expression.
      # A value in OpenSCAD is either a Number (like 42), a Boolean (like true),
      # a String (like \"foo\"), a Vector (like [1,2,3]), or the Undefined value (undef).
      # "
    end
    entry do
      name '[module](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modules) name(...) { ... }'
      # notes "
      # Defining your own module (roughly comparable to a macro or a function in other languages) is a powerful way to reuse procedures.
      #
      # ```
      # module hole(distance, rot, size) {
      #   rotate(a = rot, v = [1, 0, 0]) {
      #     translate([0, distance, 0]) {
      #       cylinder(r = size, h = 100, center = true);
      #     }
      #   }
      # }
      # ```
      #
      # You can instantiate the module by passing values (or formulas) for the parameters just like a C function call:
      #
      # ```
      # hole(0, 90, 10);
      # ```
      # "
    end
    entry do
      name '[function](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/User-Defined_Functions) name(...) = ...'
      # notes "
      #   Define a function for code readability and re-use. Functions can have multiple input variables of different types.
      #   Starting from the last parameter, it's possible to define default values. Those are assigned in case the function call does not give all the parameters.
      #
      #   ```
      #   function f(p1, p2 = 3, p3 = 0) = 100 * p1 + 10 * p2 + p3;
      #   echo(f(3, 2, 1)); // produces ECHO: 321
      #   echo(f(3, 2));    // produces ECHO: 320
      #   echo(f(3));       // produces ECHO: 330
      #   ```
      # "
    end
    entry do
      name '[include](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Include_Statement) <....scad>'
      # notes "
      # Acts as if the contents of the included file were written in the including file.
      # "
    end
    entry do
      name '[use](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Include_Statement) <....scad>'
      # notes "
      # Imports modules and functions, but does not execute any commands other than those definitions.
      # "
    end
  end

  category do
    id '2D'

    entry do
      name '[circle](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#circle) (r=radius | d=diameter)'
      # notes "
      # Creates a circle at the origin of the coordinate system. The argument name is optional.
      # "
    end
    entry do
      name '[polygon](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#polygon) ([points])'
      # notes "
      # "
    end
    entry do
      name '[polygon](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#polygon) ([points], [paths])'
      # notes "
      # Create a polygon with the specified points and paths.
      #
      # ```
      # polygon(points = [ [x, y], ... ], paths = [ [p1, p2, p3..], ...], convexity = N);
      # ```
      # "
    end
    entry do
      name '[square](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#square) ([width, height], center)'
      # notes "
      # Creates a square at the origin of the coordinate system. When center is true the square will be centered on the origin,
      # otherwise it is created in the first quadrant.
      # "
    end
    entry do
      name '[text](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Text) (text, size, font, halign, valign, spacing, direction, language, script)'
      # notes "
      # [Note: Requires version 2015.03]
      # Create text using fonts installed on the local system or provided as separate font file.
      #
      # ```
      # text(t, size, font, halign, valign, spacing, direction, language, script);
      # ```
      # "
    end
  end

  category do
    id '3D'

    entry do
      name '[cube](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#cube) (size)'
    end
    entry do
      name '[cube](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#cube) ([width, depth, height])'
    end
    entry do
      name '[cylinder](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#cylinder) (h, r|d, center)'
    end
    entry do
      name '[cylinder](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#cylinder) (h, r1|d1, r2|d2, center)'
    end
    entry do
      name '[polyhedron](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#polyhedron) (points, triangles, convexity)'
    end
    entry do
      name '[sphere](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Primitive_Solids#sphere) (radius | d=diameter)'
    end
  end

  category do
    id 'Transformations'

    entry do
      name '[translate](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#translate) ([x, y, z])'
    end
    entry do
      name '[rotate](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#rotate) ([x, y, z])'
    end
    entry do
      name '[scale](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#scale) ([x, y, z])'
    end
    entry do
      name '[resize](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#resize) ([x, y, z], auto)'
    end
    entry do
      name '[mirror](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#mirror) ([x, y, z])'
    end
    entry do
      name '[multmatrix](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#multmatrix) (m)'
    end
    entry do
      name '[color](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#color) ("colorname")'
    end
    entry do
      name '[color](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#color) ([r, g, b, a])'
    end
    entry do
      name '[offset](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#offset) (r|delta, chamfer)'
    end
    entry do
      name '[hull](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#hull)()'
    end
    entry do
      name '[minkowski](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Transformations#minkowski)()'
    end
  end

  category do
    id 'Boolean operations'

    entry do
      name '[union](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/CSG_Modelling#union)()'
    end
    entry do
      name '[difference](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/CSG_Modelling#difference)()'
    end
    entry do
      name '[intersection](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/CSG_Modelling#intersection)()'
    end
  end

  category do
    id 'Modifier Characters'

    entry do
      name '[*](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modifier_Characters#Disable_Modifier)'
      td_notes "Disable"
    end
    entry do
      name '[!](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modifier_Characters#Root_Modifier)'
      td_notes "Show only"
    end
    entry do
      name '[#](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modifier_Characters#Debug_Modifier)'
      td_notes "Highlight / debug"
    end
    entry do
      name '[%](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modifier_Characters#Background_Modifier)'
      td_notes "Transparent / background"
    end
  end

  category do
    id 'Mathematical'

    entry do
      name '[abs](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#abs)'
    end
    entry do
      name '[acos](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#acos)'
    end
    entry do
      name '[asin](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#asin)'
    end
    entry do
      name '[atan](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#atan)'
    end
    entry do
      name '[atan2](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#atan2)'
    end
    entry do
      name '[ceil](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#ceil)'
    end
    entry do
      name '[cos](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#cos)'
    end
    entry do
      name '[exp](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#exp)'
    end
    entry do
      name '[floor](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#floor)'
    end
    entry do
      name '[len](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#len)'
    end
    entry do
      name '[let](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#let)'
    end
    entry do
      name '[ln](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#ln)'
    end
    entry do
      name '[log](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#log)'
    end
    entry do
      name '[max](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#max)'
    end
    entry do
      name '[min](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#min)'
    end
    entry do
      name '[pow](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#pow)'
    end
    entry do
      name '[rands](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#rands)'
    end
    entry do
      name '[round](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#round)'
    end
    entry do
      name '[sign](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#sign)'
    end
    entry do
      name '[sin](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#sin)'
    end
    entry do
      name '[sqrt](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#sqrt)'
    end
    entry do
      name '[tan](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#tan)'
    end
  end
  
  category do
    id 'Functions'
    
    entry do
      name '[chr](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/String_Functions#chr)'
    end
    entry do
      name '[concat](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#concat)'
    end
    entry do
      name '[cross](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#cross)'
    end
    entry do
      name '[lookup](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#lookup)'
    end
    entry do
      name '[norm](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Mathematical_Functions#norm)'
    end
    entry do
      name '[parent_module](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#parent_module.28n.29_and_.24parent_modules) (idx)'
    end
    entry do
      name '[search](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#Search)'
    end
    entry do
      name '[str](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/String_Functions#str)'
    end
    entry do
      name '[version](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#OpenSCAD_Version)'
    end
    entry do
      name '[version_num](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#OpenSCAD_Version)'
    end
  end
  
  category do
    id 'Other'
    
    entry do
      name '[children](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Modules#children) ([idx])'
    end
    entry do
      name '[echo](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#Echo_Statements) (...)'
    end
    entry do
      name '[for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#For_Loop) (i = [start:end]) { ... }'
    end
    entry do
      name '[for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#For_Loop) (i = [start:step:end]) { ... }'
    end
    entry do
      name '[for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#For_Loop) (i = [..., ..., ...]) { ... }'
    end
    entry do
      name '[if](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#If_Statement) (...) { ... }'
    end
    entry do
      name '[import](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Importing_Geometry#import) ("....stl")'
    end
    entry do
      name '[intersection_for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#Intersection_For_Loop) (i = [start:end]) { ... }'
    end
    entry do
      name '[intersection_for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#Intersection_For_Loop) (i = [start:step:end]) { ... }'
    end
    entry do
      name '[intersection_for](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Conditional_and_Iterator_Functions#Intersection_For_Loop) (i = [..., ..., ...]) { ... }'
    end
    entry do
      name '[linear_extrude](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#Linear_Extrude) (height, center, convexity, twist, slices)'
    end
    entry do
      name '[projection](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#3D_to_2D_Projection) (cut)'
    end
    entry do
      name '[render](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#Render) (convexity)'
    end
    entry do
      name '[rotate_extrude](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Using_the_2D_Subsystem#Rotate_Extrude) (convexity)'
    end
    entry do
      name '[surface](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#Surface) (file, center, invert, convexity)'
    end
  end
  
  category do
    id 'List Comprehensions'

    entry do
      name '[Generate](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/List_Comprehensions#for)'
      td_notes "[ for (i = range|list) i ]"
    end
    entry do
      name '[Conditions](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/List_Comprehensions#if)'
      td_notes "[ for (i = …) if (condition(i)) i ]"
    end
    entry do
      name '[Assignments](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/List_Comprehensions#let)'
      td_notes "[ for (i = …) let (assignments) a ]"
    end
  end

  category do
    id 'Special Variables'

    entry do
      name '[$children](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/User-Defined_Functions_and_Modules#children)'
      td_notes "Number of module children"
    end
    entry do
      name '[$fa](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24fa.2C_.24fs_and_.24fn)'
      td_notes "Minimum angle"
    end
    entry do
      name '[$fs](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24fa.2C_.24fs_and_.24fn)'
      td_notes "Minimum size"
    end
    entry do
      name '[$fn](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24fa.2C_.24fs_and_.24fn)'
      td_notes "Number of fragments"
    end
    entry do
      name '[$t](https://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24t)'
      td_notes "Animation step"
    end
    entry do
      name '[$vpr](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24vpr.2C_.24vpt_and_.24vpd)'
      td_notes "Viewport rotation"
    end
    entry do
      name '[$vpt](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24vpr.2C_.24vpt_and_.24vpd)'
      td_notes "Viewport translation"
    end
    entry do
      name '[$vpd](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual/Other_Language_Features#.24vpr.2C_.24vpt_and_.24vpd)'
      td_notes "Viewport camera distance"
    end
  end

  notes "
  * [Official website](http://www.openscad.org/)
  * [Code](https://github.com/openscad/openscad) | [Issues](https://github.com/openscad/openscad/issues)
  * [Manual](http://en.wikibooks.org/wiki/OpenSCAD_User_Manual)
  * [MCAD library](https://github.com/openscad/MCAD)
  * [Other links](http://fablabamersfoort.nl/book/openscad)
  * Cheatset created by [Hejki](https://github.com/Hejki/dash-docsets) based by [OpenSCAD CheatSheet](http://www.openscad.org/cheatsheet/index.html)
  * Thanks to [Matt Sephton](https://github.com/gingerbeardman) for update
  "
end
