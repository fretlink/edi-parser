{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S8457
  ( simple8457
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      8457  Excess transportation reason code                       [B]
-- >
-- >      Desc: Code specifying the reason for excess transportation.
-- >
-- >      Repr: an..3
-- >
-- >      A     Special rail car order, schedule increase forecast change
-- >               The reason for the excess transportation is due to
-- >               special rail car order, schedule increase forecast
-- >               change.
-- >
-- >      B     Engineering change or late release
-- >               The reason for the excess transportation is due to
-- >               engineering change or late release.
-- >
-- >      C     Specification (schedule) error/overbuilding
-- >               The reason for the excess transportation is due to
-- >               special rail car order, schedule increase forecast
-- >               change specification (schedule) error/overbuilding.
-- >
-- >      D     Shipment tracing delay
-- >               The reason for the excess transportation is due to
-- >               shipment tracing delay.
-- >
-- >      E     Plant inventory loss
-- >               The reason for the excess transportation is due to plant
-- >               inventory loss.
-- >
-- >      F     Building ahead of schedule
-- >               The reason for the excess transportation is due to
-- >               building ahead of schedule.
-- >
-- >      G     Vendor behind schedule
-- >               The reason for the excess transportation is due to
-- >               vendor behind schedule.
-- >
-- >      H     Failed to include in last shipment
-- >               The reason for the excess transportation is due to
-- >               failure to include costs in last shipment.
-- >
-- >      I     Carrier loss claim
-- >               The reason for the excess transportation is due to
-- >               carrier loss claim.
-- >
-- >      J     Transportation failure
-- >               The reason for the excess transportation is due to
-- >               transportation failure.
-- >
-- >      K     Insufficient weight for carload
-- >               The reason for the excess transportation is due to
-- >               insufficient weight for carload.
-- >
-- >      L     Reject or discrepancy (material rejected in prior shipment)
-- >               The reason for the excess transportation is due to
-- >               reject or discrepancy.
-- >
-- >      M     Transportation delay
-- >               The reason for the excess transportation is due to
-- >               transportation delay.
-- >
-- >      N     Lack of railcar or railroad equipment
-- >               The reason for the excess transportation is due to lack
-- >               of railcar of railroad equipment.
-- >
-- >      P     Releasing error
-- >               The reason for the excess transportation is due to
-- >               releasing error.
-- >
-- >      R     Record error or cate reported discrepancy report
-- >               The reason for the excess transportation is due to
-- >               record error or cate reported discrepancy report.
-- >
-- >      T     Common or peculiar part schedule increase
-- >               The reason for the excess transportation is due to
-- >               common or peculiar part schedule increase.
-- >
-- >      U     Alternative supplier shipping for responsible supplier
-- >               The reason for the excess transportation is due to
-- >               alternative supplier shipping for responsible supplier.
-- >
-- >      V     Direct schedule or locally controlled
-- >               The reason for the excess transportation is due to
-- >               direct schedule or locally controlled.
-- >
-- >      W     Purchasing waiver approval
-- >               The reason for the excess transportation is due to
-- >               purchasing waiver approved.
-- >
-- >      X     Authorization code to be determined
-- >               The reason for the excess transportation is due to
-- >               authorization code to be determined.
-- >
-- >      Y     Pilot material
-- >               The reason for the excess transportation is due to pilot
-- >               material.
-- >
-- >      ZZZ   Mutually defined
-- >               A code assigned within a code list to be used on an
-- >               interim basis and as defined among trading partners
-- >               until a precise code can be assigned to the code list.
simple8457 :: Parser Value
simple8457 = simple "8457" (alphaNumeric `upTo` 3)
