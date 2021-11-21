;; Keywords
[
  "as"
  "coerce"
] @keyword

[
  "if"
  "else"
] @conditional

[
  "def"
  "return"
] @keyword.function

[
  "import"
] @include

;; Punctuations
[
  ":="
  "^" "×" "→" ; type ops
] @operator

[
  ";" "," ":" "."
] @punctuation.delimiter

[
  "(" ")"
  "[" "]"
  "{" "}"
] @punctuation.bracket

[
  "!"
  "mfree"
  "qfree"
  "const"
] @annotation

;; Literals

(string)    @string
(character) @character
(const_Z)   @number
(const_Q)   @float
(const_B)   @boolean

[
  "δ" "∞"
] @constant.macro

;; Functions
[
  "⌈" "⌉" ; ceil
  "⌊" "⌋" ; floor
] @function

[
  "δ" "λ"
] @function

;; Names
(function_declr
  name: (identifier) @function)

(function_def
  name: (identifier) @function)

;; Built-ins
[
  "𝟙"
  "𝔹"
  "ℕ"
  "ℤ"
  "ℚ"
  "ℝ"
  "ℂ"
  "int"
  "uint"
] @type.builtin

(comment) @comment

;; LINT
(tuple_type
  "const" @error)
