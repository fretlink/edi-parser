{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S8457
  ( simple8457
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   8457  Excess transportation reason, coded
-- >
-- >   Desc: Indication of reason for excess transportation.
-- >
-- >   Repr: an..3
-- >
-- >    A      Special rail car order, schedule increase forecast change
-- >              Self explanatory.
-- >    B      Engineering change or late release
-- >              Self explanatory.
-- >    C      Specification (schedule) error/overbuilding
-- >              Self explanatory.
-- >    D      Shipment tracing delay
-- >              Self explanatory.
-- >    E      Plant inventory loss
-- >              Self explanatory.
-- >    F      Building ahead of schedule
-- >              Self explanatory.
-- >    G      Vendor behind schedule
-- >              Self explanatory.
-- >    H      Failed to include in last shipment
-- >              Self explanatory.
-- >    I      Carrier loss claim
-- >              Self explanatory.
-- >    J      Transportation failure
-- >              Self explanatory.
-- >    K      Insufficient weight for carload
-- >              Self explanatory.
-- >    L      Reject or discrepancy (material rejected in prior shipment)
-- >              Self explanatory.
-- >    M      Transportation delay
-- >              Self explanatory.
-- >    N      Lack of railcar or railroad equipment
-- >              Self explanatory.
-- >    P      Releasing error
-- >              Self explanatory.
-- >    R      Record error or cate reported discrepancy report
-- >              Self explanatory.
-- >    T      Common or peculiar part schedule increase
-- >              Self explanatory.
-- >    U      Alternative supplier shipping for responsible supplier
-- >              Self explanatory.
-- >    V      Direct schedule or locally controlled
-- >              Self explanatory.
-- >    W      Purchasing waiver approval
-- >              Self explanatory.
-- >    X      Authorization code to be determined
-- >              Self explanatory.
-- >    Y      Pilot material
-- >              Self explanatory.
-- >    ZZZ    Mutually defined
-- >              Self explanatory.
simple8457 :: Parser Value
simple8457 = simple "8457" (alphaNumeric `upTo` 3)
