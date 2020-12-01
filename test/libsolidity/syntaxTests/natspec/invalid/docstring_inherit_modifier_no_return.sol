contract C {
	///@return
	modifier m22 {}
}

contract D is C {
	modifier m22 {}
}
// ----
// SyntaxError 2883: (39-41): Modifier body does not contain '_'.
// SyntaxError 2883: (77-79): Modifier body does not contain '_'.
// DocstringParsingError 6546: (14-24): Documentation tag @return not valid for modifiers.
// TypeError 9456: (64-79): Overriding modifier is missing "override" specifier.
// TypeError 4334: (26-41): Trying to override non-virtual modifier. Did you forget to add "virtual"?
