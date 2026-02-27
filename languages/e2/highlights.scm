; =========================
; Comments
; =========================

(comment) @comment


; =========================
; Keywords
; =========================

[
  "var"
  "func"
  "end"
  "if"
  "then"
  "else"
  "while"
  "do"
  "return"
  "as"
  "or"
  "and"
] @keyword


; =========================
; Types
; =========================

(primitive_type_name) @type.builtin
(type_name) @type


; =========================
; Functions
; =========================

; Function declaration name
(function_declaration
  (identifier) @function)

; Function call name
(function_call
  (identifier) @function.call)


; =========================
; Parameters
; =========================

(parameter_declaration
  (identifier) @parameter)


; =========================
; Variables
; =========================

; Variable declaration name
(variable_declaration
  (identifier) @variable)

; Assignment target
(assign_statement
  (lvalue
    (identifier) @variable))

; Variable access
(variable_access
  (identifier) @variable)

; Array base identifier
(array_access
  (identifier) @variable)


; =========================
; Literals
; =========================

(number_literal) @number
(CHAR_LITERAL) @character


; =========================
; Operators
; =========================

[
  ":="
  "+"
  "-"
  "*"
  "/"
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
] @operator


; =========================
; Punctuation
; =========================

[
  "("
  ")"
  "["
  "]"
  ","
  ":"
  ";"
] @punctuation.delimiter
