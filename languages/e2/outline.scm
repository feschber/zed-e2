(variable_declaration
    "var" @name
    (identifier) @context
    (type_name) @context.extra
    ) @item

(function_declaration
    "func" @name
    (identifier) @context
    (block) @item
    )

(while_statement
    "while" @name
    (conditional_expression) @context
    (block) @item
    )

(if_statement
    "if" @context
    (conditional_expression) @name
    (block) @item
    )
