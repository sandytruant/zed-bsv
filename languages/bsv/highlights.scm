; Keywords
[
  "package"
  "endpackage"
  "import"
  "export"
  "module"
  "endmodule"
  "interface"
  "endinterface"
  "typedef"
  "struct"
  "enum"
] @keyword

[
  "method"
  "endmethod"
  "function"
  "endfunction"
  "rule"
  "endrule"
] @keyword.function

[
  "if"
  "else"
  "case"
  "endcase"
  "default"
] @keyword.control.conditional

"for" @keyword.control.repeat

[
  "begin"
  "end"
] @keyword.control

"return" @keyword.control.return

; Built-in types
(primitive_type) @type.builtin

; Type nodes (for debugging - highlight entire type expression)
(type) @type

; Boolean literals
[
  "True"
  "False"
] @constant.builtin.boolean

; Operators
[
  "="
  "<="
  "+"
  "-"
  "*"
  "/"
  "%"
  "=="
  "!="
  "<"
  ">"
  ">="
  "&&"
  "||"
  "!"
  "&"
  "|"
  "^"
  "~"
  "<<"
  ">>"
] @operator

; Punctuation
[
  "("
  ")"
  "{"
  "}"
  "["
  "]"
] @punctuation.bracket

[
  ","
  ";"
  ":"
  "."
] @punctuation.delimiter

"::" @punctuation.delimiter

; Comments
(comment) @comment

; Numbers
(number) @constant.numeric

; Strings
(string) @string

; Boolean
(boolean) @constant.builtin.boolean

; Function/Method/Rule names
(function_declaration
  name: (identifier) @function)

(method_declaration
  name: (identifier) @function.method)

(rule_declaration
  name: (identifier) @function)

; Module/Interface names
(module_declaration
  name: (identifier) @type)

(interface_declaration
  name: (identifier) @type)

; Package name
(package_declaration
  name: (identifier) @namespace)

; Identifiers (general - keep this at the end)
(identifier) @variable
