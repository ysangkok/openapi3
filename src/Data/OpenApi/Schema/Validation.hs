-- |
-- Module:      Data.OpenApi.Schema.Validation
-- Maintainer:  Nickolay Kudasov <nickolay@getshoptv.com>
-- Stability:   experimental
--
-- Validate JSON values with Swagger Schema.
module Data.OpenApi.Schema.Validation (
  -- * How to use validation
  -- $howto

  -- ** Examples
  -- $examples

  -- ** Validating @'Maybe'@
  -- $maybe

  -- * JSON validation

  ValidationError,

  -- ** Using 'ToJSON' and 'ToSchema'
  validatePrettyToJSON,
  validateToJSON,
  validateToJSONWithPatternChecker,
  renderValidationErrors,

  -- ** Using 'Value' and 'Schema'
  validateJSON,
  validateJSONWithPatternChecker,
) where

data ValidationError
validatePrettyToJSON = error "todo"
validateJSONWithPatternChecker = error "todo"
validateToJSONWithPatternChecker = error "todo"
renderValidationErrors = error "todo"
validateJSON = error "todo"
validateToJSON _ = []
