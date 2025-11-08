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
  "union"
  "tagged"
  "deriving"
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
  "matches"
] @keyword.control.conditional

[
  "for"
  "while"
] @keyword.control.repeat

[
  "return"
  "action"
  "endaction"
  "actionvalue"
  "endactionvalue"
] @keyword.control.return

[
  "let"
  "var"
] @keyword.storage

; Built-in types
[
  "Bit"
  "Int"
  "UInt"
  "Bool"
  "Integer"
  "String"
  "Reg"
  "Wire"
  "FIFO"
  "Vector"
  "Action"
  "ActionValue"
  "Rules"
  "Module"
  "void"
] @type.builtin

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

; Comments
(comment) @comment

; Numbers
(number) @constant.numeric

; Strings
(string) @string

; Identifiers
(identifier) @variable

; Function/Method names
(function_declaration
  name: (identifier) @function)

(method_declaration
  name: (identifier) @function.method)

(function_call
  function: (identifier) @function)

; Module/Interface names
(module_declaration
  name: (identifier) @type)

(interface_declaration
  name: (identifier) @type)

; Type names
(type_identifier) @type

; Package name
(package_declaration
  name: (identifier) @namespace)

(import_declaration
  package: (identifier) @namespace)

; Parameters
(parameter
  name: (identifier) @variable.parameter)

; Field access
(member_expression
  field: (identifier) @property)

; Rule names
(rule_declaration
  name: (identifier) @function)
