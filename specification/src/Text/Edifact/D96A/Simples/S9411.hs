{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S9411
  ( simple9411
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   9411  Government involvement, coded
-- >
-- >   Desc: Indication of requirement and status of government
-- >         involvement.
-- >
-- >   Repr: an..3
-- >
-- >         1 Carried out as instructed
-- >              Instructions have been carried out.
-- >         2 Carried out as amended
-- >              Procedures have been carried out as amended.
-- >         3 Completed
-- >              Procedures have been completed.
-- >         4 Not applicable
-- >              Instructions are not applicable.
-- >         5 Optimal
-- >              An action which is most desirable but not required.
-- >         6 Required
-- >              Procedures are required.
-- >         7 Applicable
-- >              Procedures are applicable.
simple9411 :: Parser Value
simple9411 = simple "9411" (alphaNumeric `upTo` 3)
