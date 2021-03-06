{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S8155
  ( simple8155
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > * 8155  Equipment size and type identification
-- >
-- >   Desc: Coded description of the size and type of equipment e.g. unit
-- >         load device.
-- >
-- >   Repr: an..10
-- >
-- >         1 Dime coated tank
-- >              Self explanatory.
-- >         2 Epoxy coated tank
-- >              Self explanatory.
-- >         3 IMO1
-- >              Description to be provided.
-- >         4 IMO2
-- >              Description to be provided.
-- >         5 IMO3
-- >              Description to be provided.
-- >         6 Pressurized tank
-- >              Self explanatory.
-- >         7 Refrigerated tank
-- >              Self explanatory.
-- >         8 Semi-refrigerated
-- >              Self explanatory.
-- >         9 Stainless steel tank
-- >              Self explanatory.
-- >        10 Nonworking reefer container 40 ft
-- >              A 40 foot refrigerated container that is not actively
-- >              controlling temperature of the product.
-- >        11 Box pallet
-- >              Self explanatory.
-- >        12 Europallet
-- >              80 x 120 cm.
-- >        13 Scandinavian pallet
-- >              100 x 120 cm.
-- >        14 Trailer
-- >              Non self-propelled vehicle designed for the carriage of
-- >              cargo so that it can be towed by a motor vehicle.
-- >        15 Nonworking reefer container 20 ft
-- >              A 20 foot refrigerated container that is not actively
-- >              controlling temperature of the product.
-- >        16 Exchangeable pallet
-- >              Standard pallet exchangeable following international
-- >              convention.
-- >        17 Semi-trailer
-- >              Non self propelled vehicle without fron twheels designed
-- >              for the carriage of cargo and provided with a kingpin.
-- >        18 Tank container 20 ft.
-- >              Self explanatory.
-- >        19 Tank container 30 ft.
-- >              Self explanatory.
-- >        20 Tank container 40 ft.
-- >              Self explanatory.
-- >        21 Container IC 20 ft.
-- >              Self explanatory. IC = InterContainer (subsidiary company
-- >              of the European railway, responsible for container
-- >              traffic in a rail environment for special container
-- >              handling).
-- >        22 Container IC 30 ft.
-- >              Self explanatory.
-- >        23 Container IC 40 ft.
-- >              Self explanatory.
-- >        24 Refrigerator tank 20 ft.
-- >              Self explanatory.
-- >        25 Refrigerator tank 30 ft.
-- >              Self explanatory.
-- >        26 Refrigerator tank 40 ft.
-- >              Self explanatory.
-- >        27 Tank container IC 20 ft.
-- >              Self explanatory.
-- >        28 Tank container IC 30 ft.
-- >              Self explanatory.
-- >        29 Tank container IC 40 ft.
-- >              Self explanatory.
-- >        30 Refrigerator tank IC 20 ft.
-- >              Self explanatory.
-- > +      31 Temperature controlled container 30 ft.
-- >              Temperature controlled container measuring 30 feet.
-- >        32 Refrigerator tank IC 40 ft.
-- >              Self explanatory.
-- >        33 Movable case: L < 6,15m
-- >              Self explanatory.
-- >        34 Movable case: 6,15m < L < 7,82m
-- >              Self explanatory.
-- >        35 Movable case: 7,82m < L < 9,15m
-- >              Self explanatory.
-- >        36 Movable case: 9,15m < L < 10,90m
-- >              Self explanatory.
-- >        37 Movable case: 10,90m < L < 13,75m
-- >              Self explanatory.
-- >        38 Totebin
-- >              A steel open top unit of about 1,5 * 1,5 * 2,5 meters for
-- >              road transport of bulk cargo.
-- >        39 Temperature controlled container 20 ft
-- >              Temperature controlled container measuring 20 feet.
-- >        40 Temperature controlled container 40 ft
-- >              A temperature controlled container measuring 40 feet.
-- > +      41 Non working refrigerated (reefer) container 30ft.
-- >              A 30 foot refrigerated (reefer) container that is not
-- >              actively cooling the product.
-- > +      42 Dual trailers
-- >              Two trailers linked together one behind another and
-- >              pulled by one tractor.
simple8155 :: Parser Value
simple8155 = simple "8155" (alphaNumeric `upTo` 10)
