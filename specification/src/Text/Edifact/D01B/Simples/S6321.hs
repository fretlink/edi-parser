{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6321
  ( simple6321
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > *    6321  Measurement significance code                           [C]
-- >
-- >      Desc: Code specifying the significance of a measurement.
-- >
-- >      Repr: an..3
-- >
-- >      3     Approximately
-- >               The measurement is approximately equal to that
-- >               specified.
-- >
-- >      4     Equal to
-- >               The measurement is equal to that specified.
-- >
-- >      5     Greater than or equal to
-- >               The measurement is greater than or equal to that
-- >               specified.
-- >
-- >      6     Greater than
-- >               The measurement is greater than that specified.
-- >
-- >      7     Less than
-- >               The measurement is less than that specified.
-- >
-- >      8     Less than or equal to
-- >               The measurement is less than or equal to that specified.
-- >
-- >      9     Average value
-- >               Average value for a specific series of readings.
-- >
-- >      10    Not equal to
-- >               The measurement is not equal to that specified.
-- >
-- > X    11    Trace
-- >               Description to be provided.
-- >
-- >            Note:
-- >               1. This code value will be removed effective with
-- >               directory D.04B.
-- >
-- >      12    True value
-- >               The measurement reported is a true value.
-- >
-- >      13    Observed value
-- >               The measurement reported is an observed value.
-- >
-- >      15    Out of range
-- >               The measurement reported is out of range.
simple6321 :: Parser Value
simple6321 = simple "6321" (alphaNumeric `upTo` 3)
