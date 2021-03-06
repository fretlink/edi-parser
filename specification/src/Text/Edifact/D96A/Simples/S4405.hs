{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S4405
  ( simple4405
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   4405  Status, coded
-- >
-- >   Desc: Provides information regarding a status.
-- >
-- >   Repr: an..3
-- >
-- >         1 To be done
-- >              Remark that the requested service in the order remains
-- >              outstanding.
-- >         2 Done
-- >              The instruction has been completed.
-- >         3 Passed on
-- >              The information has been passed on.
-- >         4 Final
-- >              The amount has the status of finality.
-- >         5 Subject to final payment
-- >              The amount is subject to finality.
-- >         6 Minimum
-- >              The amount quoted is a minimum tariff.
-- >         7 Fixed
-- >              The amount quoted is a fixed tariff.
-- >         8 Maximum
-- >              The amount quoted is a maximum tariff.
-- >         9 Information
-- >              The amount is quoted for information only, it is not part
-- >              of the charges to be deducted or added.
-- >        10 0 day available
-- >              The amount is available today.
-- >        11 1 day available
-- >              The amount is available on the next banking office day
-- >              after the booking date.
-- >        12 2 days available
-- >              The amount is available on the second banking office day
-- >              after the booking date.
-- >        13 3 days available
-- >              The amount available on the third banking office day
-- >              after the booking date.
-- >        14 Uncollected funds
-- >              Funds not collected by beneficiary.
-- >        15 Nil
-- >              Self explanatory.
-- >        16 None advised
-- >              Self explanatory.
-- >        17 Requested
-- >              Self explanatory.
-- >        18 Free of charge
-- >              Self explanatory.
-- >        19 Rounded
-- >              Self explanatory.
-- >        20 Permanent
-- >              Self-explanatory.
-- >        21 Temporary
-- >              Self-explanatory.
simple4405 :: Parser Value
simple4405 = simple "4405" (alphaNumeric `upTo` 3)
