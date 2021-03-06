{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S4457
  ( simple4457
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   4457  Product/service substitution, coded
-- >
-- >   Desc: Code indicating product or service substitution conditions.
-- >
-- >   Repr: an..3
-- >
-- >         1 No substitution allowed
-- >              Notice to supplier to fill order exactly as specified.
-- >         2 Supply any binding if edition ordered not available
-- >              Indicates that substitute bindings are acceptable if the
-- >              edition of a book originally ordered is unavailable.
-- >         3 Supply paper binding if edition ordered not available
-- >              Indicates that a paper back edition of a book is
-- >              acceptable if the edition ordered is unavailable.
-- >         4 Supply cloth binding if edition ordered not available
-- >              Indicates that the cloth bound edition of a book is
-- >              acceptable if the edition ordered is unavailable.
-- >         5 Supply library binding if edition ordered not available
-- >              Indicates that a library binding of a book is acceptable
-- >              if the edition ordered is unavailable.
-- >         6 Equivalent item substitution
-- >              Indicates that an item of the same value and performance
-- >              may be substituted for the item specified.
-- >         7 Alternate item substitution allowed
-- >              Indicates that an item of equal or greater value and
-- >              performance may be substituted for the item specified.
-- >    ZZZ    Mutually defined
-- >              A code reserved for special trading partner requirements
-- >              when pre-defined codes do not exist.
simple4457 :: Parser Value
simple4457 = simple "4457" (alphaNumeric `upTo` 3)
