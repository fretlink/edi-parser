{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6347
  ( simple6347
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      6347  Currency usage code qualifier                           [C]
-- >
-- >      Desc: Code qualifying the usage of a currency.
-- >
-- >      Repr: an..3
-- >
-- >      1     Charge payment currency
-- >               The currency in which charges are to be paid.
-- >
-- >      2     Reference currency
-- >               The currency applicable to amounts stated. It may have
-- >               to be converted.
-- >
-- >      3     Target currency
-- >               The currency which should be used to the target
-- >               destination of the transaction.
-- >
-- >      4     Transport document currency
-- >               Currency applicable to amounts stated in a transport
-- >               document/message.
-- >
-- >      5     Calculation base currency
-- >               Currency on which the calculation is based.
-- >
-- >      6     Information Currency
-- >               Additional currency the message recipient needs for
-- >               information purposes. The actual message amount(s)
-- >               is/are not based upon this currency.
-- >
-- >      7     Currency of the account
-- >               Currency in which the account is held.
simple6347 :: Parser Value
simple6347 = simple "6347" (alphaNumeric `upTo` 3)
