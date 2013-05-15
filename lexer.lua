-- "ProcessWire" editor theme for Textadept.
-- Theme for Texadept based on the color of ProcessWire (© 2013 by Ryan Cramer Design, LLC)
-- Made from Dark theme for Textadept (Copyright 2007-2013 Mitchell mitchell.att.foicica.com. See LICENSE.)

-- Please note this theme is in a separate Lua state than Textadept's main one.
-- This means the global variables like 'buffer', 'view', and 'gui' are not
-- available here. Only the variables in the 'lexer' module are.

local l, color, style = lexer, lexer.color, lexer.style

l.colors = {
  -- Greyscale colors.
  dark_black   = color('1a', '1a', '1a'),
  black        = color('2f', '43', '48'),
  light_black  = color('2A', '2A', '2A'),
  --             color('4D', '4D', '4D'),
  dark_grey    = color('50', '67', '82'),
  grey         = color('a0', 'b7', 'd2'),
  light_grey   = color('cc', 'cc', 'cc'),
  --             color('B3', 'B3', 'B3'),
  dark_white   = color('d2', 'e4', 'ea'),
  white        = color('eb', 'f4', 'f9'),
  light_white  = color('FF', 'FF', 'FF'),

  -- Dark colors.
--dark_red      = color('66', '1A', '1A'),
--dark_yellow   = color('66', '66', '1A'),
--dark_green    = color('1A', '66', '1A'),
--dark_teal     = color('1A', '66', '66'),
--dark_purple   = color('66', '1A', '66'),
--dark_orange   = color('B3', '66', '1A'),
--dark_pink     = color('B3', '66', '66'),
--dark_lavender = color('66', '66', 'B3'),
--dark_blue     = color('1A', '66', 'B3'),

  -- Normal colors.
  red      = color('a3', '00', '00'),
  yellow   = color('66', '66', '00'),
  green    = color('00', '77', '00'),
  teal     = color('4D', '99', '99'),
  purple   = color('ba', '60', 'ff'),
  orange   = color('ff', '80', '00'),
  pink     = color('db', '11', '74'),
--lavender = color('99', '99', 'E6'),
  blue     = color('00', '93', 'Ea'),

  -- Light colors.
  light_red      = color('e0', '67', '3f'),
--light_yellow   = color('CC', 'CC', '80'),
  light_green    = color('00', '88', '00'),
--light_teal     = color('80', 'CC', 'CC'),
--light_purple   = color('CC', '80', 'CC'),
--light_orange   = color('FF', 'CC', '80'),
  light_pink     = color('FF', '8f', 'd2'),
--light_lavender = color('CC', 'CC', 'FF'),
  light_blue     = color('62', 'b7', 'ef'),
}

l.style_nothing    = style{                                   }
l.style_class      = style{fore = l.colors.light_blue         }
l.style_comment    = style{fore = l.colors.dark_grey          }
l.style_constant   = style{fore = l.colors.light_pink         }
l.style_definition = style{fore = l.colors.pink               }
l.style_error      = style{fore = l.colors.red, italic = true }
l.style_function   = style{fore = l.colors.purple             }
l.style_keyword    = style{fore = l.colors.light_pink         }
l.style_label      = style{fore = l.colors.light_blue         }
l.style_number     = style{fore = l.colors.light_blue         }
l.style_operator   = style{fore = l.colors.pink, bold = true  }
l.style_regex      = style{fore = l.colors.light_green        }
l.style_string     = style{fore = l.colors.grey               }
l.style_preproc    = style{fore = l.colors.light_blue         }
l.style_tag        = style{fore = l.colors.light_white        }
l.style_type       = style{fore = l.colors.light_blue         }
l.style_variable   = style{fore = l.colors.light_blue         }
l.style_whitespace = style{                                   }
l.style_embedded   = {                                        }
l.style_identifier = l.style_nothing

-- Default styles.
local font_face = 'Droid Sans Mono'
local font_size = 10
if WIN32 then
  font_face = 'Droid Sans Mono'
elseif OSX then
  font_face = 'Droid Sans Mono'
  font_size = 10
end
l.style_default = style{
  font = font_face, size = font_size,
  fore = l.colors.white, back = l.colors.black
}
l.style_line_number = style{fore = l.colors.dark_grey, back = l.colors.dark_black}
l.style_bracelight = style{fore = l.colors.white, back = l.colors.pink}
l.style_bracebad = style{fore = l.colors.light_blue}
l.style_controlchar = l.style_nothing
l.style_indentguide = style{
  fore = l.colors.light_black, back = l.colors.black
}
l.style_calltip = style{fore = l.colors.light_grey, back = l.colors.light_black}
