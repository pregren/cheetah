create_file '.rubocop.yml', <<YAML

inherit_from: .rubocop_todo.yml

require: rubocop-rspec

# our custom config
RSpec/MultipleExpectations:
  Max: 1
  Exclude:
    - "spec/features/*"

RSpec/DescribeClass:
  Exclude:
    - spec/features/*
    - spec/requests/*

Metrics/LineLength:
  Description: 'Limit lines to 100 characters.'
  Max: 100

#############################

AllCops:
  Exclude:
    - vendor/**/*
    - config/**/*
    - Gemfile
    - bin/**/*
    - db/**/*.rb
    - spec/**/*
    - node_modules/**/*
  DisplayStyleGuide: true
  ExtraDetails: true
  TargetRubyVersion: 2.5

Naming/AccessorMethodName:
  Description: Check the naming of accessor methods for get_/set_.
  Enabled: false

Style/Alias:
  Description: 'Use alias_method instead of alias.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#alias-method'
  Enabled: false

Style/ArrayJoin:
  Description: 'Use Array#join instead of Array#*.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#array-join'
  Enabled: false

Style/AsciiComments:
  Description: 'Use only ascii symbols in comments.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#english-comments'
  Enabled: false

Naming/AsciiIdentifiers:
  Description: 'Use only ascii symbols in identifiers.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#english-identifiers'
  Enabled: false

Style/Attr:
  Description: 'Checks for uses of Module#attr.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#attr'
  Enabled: false

Metrics/BlockNesting:
  Description: 'Avoid excessive block nesting'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#three-is-the-number-thou-shalt-count'
  Enabled: false

Style/CaseEquality:
  Description: 'Avoid explicit use of the case equality operator(===).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-case-equality'
  Enabled: false

Style/CharacterLiteral:
  Description: 'Checks for uses of character literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-character-literals'
  Enabled: false

Style/ClassAndModuleChildren:
  Description: 'Checks style of children classes and modules.'
  Enabled: true
  EnforcedStyle: nested

Metrics/ClassLength:
  Description: 'Avoid classes longer than 100 lines of code.'
  Enabled: false

Metrics/ModuleLength:
  Description: 'Avoid modules longer than 100 lines of code.'
  Enabled: false

Style/ClassVars:
  Description: 'Avoid the use of class variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-class-vars'
  Enabled: false

Style/CollectionMethods:
  Enabled: true
  PreferredMethods:
    find: detect
    inject: reduce
    collect: map
    find_all: select

Style/ColonMethodCall:
  Description: 'Do not use :: for method call.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#double-colons'
  Enabled: false

Style/CommentAnnotation:
  Description: >-
                 Checks formatting of special comments
                 (TODO, FIXME, OPTIMIZE, HACK, REVIEW).
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#annotate-keywords'
  Enabled: false

Metrics/AbcSize:
  Description: >-
                 A calculated magnitude based on number of assignments,
                 branches, and conditions.
  Enabled: false

Metrics/BlockLength:
  CountComments: false  # count full line comments?
  Max: 25
  ExcludedMethods: []
  Exclude:
    - "spec/**/*"

Metrics/CyclomaticComplexity:
  Description: >-
                 A complexity metric that is strongly correlated to the number
                 of test cases needed to validate a method.
  Enabled: false

Rails/Delegate:
  Description: 'Prefer delegate method for delegations.'
  Enabled: false

Style/PreferredHashMethods:
  Description: 'Checks use of `has_key?` and `has_value?` Hash methods.'
  StyleGuide: '#hash-key'
  Enabled: false

Style/Documentation:
  Description: 'Document classes and non-namespace modules.'
  Enabled: false

Style/DoubleNegation:
  Description: 'Checks for uses of double negation (!!).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-bang-bang'
  Enabled: false

Style/EachWithObject:
  Description: 'Prefer `each_with_object` over `inject` or `reduce`.'
  Enabled: false

Style/EmptyLiteral:
  Description: 'Prefer literals to Array.new/Hash.new/String.new.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#literal-array-hash'
  Enabled: false

# Checks whether the source file has a utf-8 encoding comment or not
# AutoCorrectEncodingComment must match the regex
# /#.*coding\s?[:=]\s?(?:UTF|utf)-8/
Style/Encoding:
  Enabled: false

Style/EvenOdd:
  Description: 'Favor the use of Fixnum#even? && Fixnum#odd?'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#predicate-methods'
  Enabled: false

Naming/FileName:
  Description: 'Use snake_case for source file names.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#snake-case-files'
  Enabled: false

Style/FrozenStringLiteralComment:
  Description: >-
    Add the frozen_string_literal comment to the top of files
    to help transition from Ruby 2.3.0 to Ruby 3.0.
  Enabled: false

Style/FlipFlop:
  Description: 'Checks for flip flops'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-flip-flops'
  Enabled: false

Style/FormatString:
  Description: 'Enforce the use of Kernel#sprintf, Kernel#format or String#%.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#sprintf'
  Enabled: false

Style/GlobalVars:
  Description: 'Do not introduce global variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#instance-vars'
  Reference: 'http://www.zenspider.com/Languages/Ruby/QuickRef.html'
  Enabled: false

Style/GuardClause:
  Description: 'Check for conditionals that can be replaced with guard clauses'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-conditionals'
  Enabled: false

Style/IfUnlessModifier:
  Description: >-
                 Favor modifier if/unless usage when you have a
                 single-line body.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#if-as-a-modifier'
  Enabled: false

Style/IfWithSemicolon:
  Description: 'Do not use if x; .... Use the ternary operator instead.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-semicolon-ifs'
  Enabled: false

Style/InlineComment:
  Description: 'Avoid inline comments.'
  Enabled: false

Style/Lambda:
  Description: 'Use the new lambda literal syntax for single-line blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#lambda-multi-line'
  Enabled: false

Style/LambdaCall:
  Description: 'Use lambda.call(...) instead of lambda.(...).'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#proc-call'
  Enabled: false

Style/LineEndConcatenation:
  Description: >-
                 Use \ instead of + or << to concatenate two string literals at
                 line end.
  Enabled: false

Metrics/MethodLength:
  Description: 'Avoid methods longer than 10 lines of code.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#short-methods'
  Enabled: false

Style/ModuleFunction:
  Description: 'Checks for usage of `extend self` in modules.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#module-function'
  Enabled: false

Style/MultilineBlockChain:
  Description: 'Avoid multi-line chains of blocks.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#single-line-blocks'
  Enabled: false

Style/NegatedIf:
  Description: >-
                 Favor unless over if for negative conditions
                 (or control flow or).
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#unless-for-negatives'
  Enabled: false

Style/NegatedWhile:
  Description: 'Favor until over while for negative conditions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#until-for-negatives'
  Enabled: false

Style/Next:
  Description: 'Use `next` to skip iteration instead of a condition at the end.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-conditionals'
  Enabled: false

Style/NilComparison:
  Description: 'Prefer x.nil? to x == nil.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#predicate-methods'
  Enabled: false

Style/Not:
  Description: 'Use ! instead of not.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#bang-not-not'
  Enabled: false

Style/NumericLiterals:
  Description: >-
                 Add underscores to large numeric literals to improve their
                 readability.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#underscores-in-numerics'
  Enabled: false

Style/OneLineConditional:
  Description: >-
                 Favor the ternary operator(?:) over
                 if/then/else/end constructs.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#ternary-operator'
  Enabled: false

Naming/BinaryOperatorParameterName:
  Description: 'When defining binary operators, name the argument other.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#other-arg'
  Enabled: false

Metrics/ParameterLists:
  Description: 'Avoid parameter lists longer than three or four parameters.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#too-many-params'
  Enabled: false

Style/PercentLiteralDelimiters:
  Description: 'Use `%`-literal delimiters consistently'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-literal-braces'
  Enabled: false

Style/PerlBackrefs:
  Description: 'Avoid Perl-style regex back references.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-perl-regexp-last-matchers'
  Enabled: false

Naming/PredicateName:
  Description: 'Check the names of predicate methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#bool-methods-qmark'
  NamePrefixBlacklist:
    - is_
  Exclude:
    - spec/**/*

Style/Proc:
  Description: 'Use proc instead of Proc.new.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#proc'
  Enabled: false

Style/RaiseArgs:
  Description: 'Checks the arguments passed to raise/fail.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#exception-class-messages'
  Enabled: false

Style/RegexpLiteral:
  Description: 'Use / or %r around regular expressions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-r'
  Enabled: false

Style/SelfAssignment:
  Description: >-
                 Checks for places where self-assignment shorthand should have
                 been used.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#self-assignment'
  Enabled: false

Style/SingleLineBlockParams:
  Description: 'Enforces the names of some block params.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#reduce-blocks'
  Enabled: false

Style/SingleLineMethods:
  Description: 'Avoid single-line methods.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-single-line-methods'
  Enabled: false

Style/SignalException:
  Description: 'Checks for proper usage of fail and raise.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#fail-method'
  Enabled: false

Style/SpecialGlobalVars:
  Description: 'Avoid Perl-style global variables.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-cryptic-perlisms'
  Enabled: false

Style/StringLiterals:
  Description: 'Checks if uses of quotes match the configured preference.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#consistent-string-literals'
  EnforcedStyle: double_quotes
  Enabled: true

Style/TrailingCommaInArguments:
  Description: 'Checks for trailing comma in argument lists.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas'
  EnforcedStyleForMultiline: comma
  SupportedStylesForMultiline:
    - comma
    - consistent_comma
    - no_comma
  Enabled: true

Style/TrailingCommaInArrayLiteral:
  Description: 'Checks for trailing comma in array literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas'
  EnforcedStyleForMultiline: comma
  SupportedStylesForMultiline:
    - comma
    - consistent_comma
    - no_comma
  Enabled: true

Style/TrailingCommaInHashLiteral:
  Description: 'Checks for trailing comma in hash literals.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-trailing-array-commas'
  EnforcedStyleForMultiline: comma
  SupportedStylesForMultiline:
    - comma
    - consistent_comma
    - no_comma
  Enabled: true

Style/TrivialAccessors:
  Description: 'Prefer attr_* methods to trivial readers/writers.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#attr_family'
  Enabled: false

Style/VariableInterpolation:
  Description: >-
                 Don't interpolate global, instance and class variables
                 directly in strings.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#curlies-interpolate'
  Enabled: false

Style/WhenThen:
  Description: 'Use when x then ... for one-line cases.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#one-line-cases'
  Enabled: false

Style/WhileUntilModifier:
  Description: >-
                 Favor modifier while/until usage when you have a
                 single-line body.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#while-as-a-modifier'
  Enabled: false

Style/WordArray:
  Description: 'Use %w or %W for arrays of words.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#percent-w'
  Enabled: false

# Layout

Layout/AlignParameters:
  Description: 'Here we check if the parameters on a multi-line method call or definition are aligned.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-double-indent'
  Enabled: false

Layout/ConditionPosition:
  Description: >-
                 Checks for condition placed in a confusing position relative to
                 the keyword.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#same-line-condition'
  Enabled: false

Layout/DotPosition:
  Description: 'Checks the position of the dot in multi-line method calls.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#consistent-multi-line-chains'
  EnforcedStyle: trailing

Layout/ExtraSpacing:
  Description: 'Do not use unnecessary spacing.'
  Enabled: true

Layout/MultilineOperationIndentation:
  Description: >-
                 Checks indentation of binary operations that span more than
                 one line.
  Enabled: true
  EnforcedStyle: indented

Layout/MultilineMethodCallIndentation:
  Description: >-
                 Checks indentation of method calls with the dot operator
                 that span more than one line.
  Enabled: true
  EnforcedStyle: indented

Layout/InitialIndentation:
  Description: >-
    Checks the indentation of the first non-blank non-comment line in a file.
  Enabled: false

# Lint

Lint/AmbiguousOperator:
  Description: >-
                 Checks for ambiguous operators in the first argument of a
                 method invocation without parentheses.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parens-as-args'
  Enabled: false

Lint/AmbiguousRegexpLiteral:
  Description: >-
                 Checks for ambiguous regexp literals in the first argument of
                 a method invocation without parenthesis.
  Enabled: false

Lint/AssignmentInCondition:
  Description: "Don't use assignment in conditions."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#safe-assignment-in-condition'
  Enabled: false

Lint/CircularArgumentReference:
  Description: "Don't refer to the keyword argument in the default value."
  Enabled: false

Lint/DeprecatedClassMethods:
  Description: 'Check for deprecated class method calls.'
  Enabled: false

Lint/DuplicatedKey:
  Description: 'Check for duplicate keys in hash literals.'
  Enabled: false

Lint/EachWithObjectArgument:
  Description: 'Check for immutable argument given to each_with_object.'
  Enabled: false

Lint/ElseLayout:
  Description: 'Check for odd code arrangement in an else block.'
  Enabled: false

Lint/FormatParameterMismatch:
  Description: 'The number of parameters to format/sprint must match the fields.'
  Enabled: false

Lint/HandleExceptions:
  Description: "Don't suppress exception."
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#dont-hide-exceptions'
  Enabled: false

Lint/LiteralAsCondition:
  Description: 'Checks of literals used in conditions.'
  Enabled: false

Lint/LiteralInInterpolation:
  Description: 'Checks for literals used in interpolation.'
  Enabled: false

Lint/Loop:
  Description: >-
                 Use Kernel#loop with break rather than begin/end/until or
                 begin/end/while for post-loop tests.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#loop-with-break'
  Enabled: false

Lint/NestedMethodDefinition:
  Description: 'Do not use nested method definitions.'
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#no-nested-methods'
  Enabled: false

Lint/NonLocalExitFromIterator:
  Description: 'Do not use return in iterator to cause non-local exit.'
  Enabled: false

Lint/ParenthesesAsGroupedExpression:
  Description: >-
                 Checks for method calls with a space before the opening
                 parenthesis.
  StyleGuide: 'https://github.com/bbatsov/ruby-style-guide#parens-no-spaces'
  Enabled: false

Lint/RequireParentheses:
  Description: >-
                 Use parentheses in the method call to avoid confusion
                 about precedence.
  Enabled: false

Lint/UnderscorePrefixedVariableName:
  Description: 'Do not use prefix `_` for a variable that is used.'
  Enabled: false

Lint/UnneededCopDisableDirective:
  Description: >-
                 Checks for rubocop:disable comments that can be removed.
                 Note: this cop is not disabled when disabling all cops.
                 It must be explicitly disabled.
  Enabled: false

Lint/Void:
  Description: 'Possible use of operator/literal/variable in void context.'
  Enabled: false

# Performance

Performance/CaseWhenSplat:
  Description: >-
                  Place `when` conditions that use splat at the end
                  of the list of `when` branches.
  Enabled: false

Performance/Count:
  Description: >-
                  Use `count` instead of `select...size`, `reject...size`,
                  `select...count`, `reject...count`, `select...length`,
                  and `reject...length`.
  Enabled: false

Performance/Detect:
  Description: >-
                  Use `detect` instead of `select.first`, `find_all.first`,
                  `select.last`, and `find_all.last`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerabledetect-vs-enumerableselectfirst-code'
  Enabled: false

Performance/FlatMap:
  Description: >-
                  Use `Enumerable#flat_map`
                  instead of `Enumerable#map...Array#flatten(1)`
                  or `Enumberable#collect..Array#flatten(1)`
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerablemaparrayflatten-vs-enumerableflat_map-code'
  Enabled: false

Performance/ReverseEach:
  Description: 'Use `reverse_each` instead of `reverse.each`.'
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#enumerablereverseeach-vs-enumerablereverse_each-code'
  Enabled: false

Performance/Sample:
  Description: >-
                  Use `sample` instead of `shuffle.first`,
                  `shuffle.last`, and `shuffle[Fixnum]`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#arrayshufflefirst-vs-arraysample-code'
  Enabled: false

Performance/Size:
  Description: >-
                  Use `size` instead of `count` for counting
                  the number of elements in `Array` and `Hash`.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#arraycount-vs-arraysize-code'
  Enabled: false

Performance/StringReplacement:
  Description: >-
                  Use `tr` instead of `gsub` when you are replacing the same
                  number of characters. Use `delete` instead of `gsub` when
                  you are deleting characters.
  Reference: 'https://github.com/JuanitoFatas/fast-ruby#stringgsub-vs-stringtr-code'
  Enabled: false

# Rails

Rails/ActionFilter:
  Description: 'Enforces consistent use of action filter methods.'
  Enabled: false

Rails/Date:
  Description: >-
                  Checks the correct usage of date aware methods,
                  such as Date.today, Date.current etc.
  Enabled: false

Rails/FindBy:
  Description: 'Prefer find_by over where.first.'
  Enabled: false

Rails/FindEach:
  Description: 'Prefer all.find_each over all.find.'
  Enabled: false

Rails/HasAndBelongsToMany:
  Description: 'Prefer has_many :through to has_and_belongs_to_many.'
  Enabled: false

Rails/Output:
  Description: 'Checks for calls to puts, print, etc.'
  Enabled: false

Rails/ReadWriteAttribute:
  Description: >-
                 Checks for read_attribute(:attr) and
                 write_attribute(:attr, val).
  Enabled: false

Rails/ScopeArgs:
  Description: 'Checks the arguments of ActiveRecord scopes.'
  Enabled: false

Rails/TimeZone:
  Description: 'Checks the correct usage of time zone aware methods.'
  StyleGuide: 'https://github.com/bbatsov/rails-style-guide#time'
  Reference: 'http://danilenko.org/2012/7/6/rails_timezones'
  Enabled: false

Rails/Validation:
  Description: 'Use validates :attribute, hash of validations.'
  Enabled: false
YAML

git add: '.'

git commit: %( -m 'setting rubocop' )

run 'bundle exec rubocop -a --auto-gen-config'

git add: '.'

git commit: %( -m 'fix rubocop' )
