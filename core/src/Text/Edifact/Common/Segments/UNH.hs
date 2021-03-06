{-# LANGUAGE OverloadedStrings #-}

module Text.Edifact.Common.Segments.UNH
  ( segmentUNH
  ) where

import           Text.Edifact.Common.Composites (compositeS009, compositeS010)
import           Text.Edifact.Common.Simples    (simple0062, simple0068)

import           Text.Edifact.Parsing
import           Text.Edifact.Types          (Value)

-- | Derived from this specification:
--
-- >         Change indicators
-- >
-- >           UNH    MESSAGE HEADER
-- >
-- >           Function: To head, identify and specify a message.
-- >
-- >     010   0062  MESSAGE REFERENCE NUMBER                              M  an..14
-- >
-- >     020   S009  MESSAGE IDENTIFIER                                    M
-- >           0065   Message type                                         M  an..6
-- >           0052   Message version number                               M  an..3
-- >           0054   Message release number                               M  an..3
-- >           0051   Controlling agency                                   M  an..2
-- >           0057   Association assigned code                            C  an..6
-- >
-- >     030   0068  COMMON ACCESS REFERENCE                               C  an..35
-- >
-- >     040   S010  STATUS OF THE TRANSFER                                C
-- >           0070   Sequence of transfers                                M  n..2
-- >           0073   First and last transfer                              C  a1
--
-- Dependencies: 'compositeS009', 'compositeS010', 'simple0062', 'simple0068'.
segmentUNH :: Parser Value
segmentUNH =
  segment "UNH"
    [ "010" .@ mandatory simple0062
    , "020" .@ mandatory compositeS009
    , "030" .@ optional  simple0068
    , "040" .@ optional  compositeS010
    ]
