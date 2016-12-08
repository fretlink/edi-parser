{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S6311
  ( simple6311
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- > *    6311  Measurement purpose code qualifier                      [B]
-- >
-- >      Desc: Code qualifying the purpose of the measurement.
-- >
-- >      Repr: an..3
-- >
-- >      AAA   Line item measurement
-- >               Line item measurement specified by the Food and Drug
-- >               Administration.
-- >
-- > +    AAB   Transport conditions for delivery to distribution centre
-- >               Specified measurements refer to transport conditions for
-- >               delivery to a distribution centre.
-- >
-- >      AAC   Retail container size
-- >               Size of a retail container in terms of volume.
-- >
-- >      AAD   Other US Government agency application
-- >               Measurement to be used by/for other United States
-- >               government agencies.
-- >
-- >      AAE   Measurement
-- >               [6314] Value of the measured unit.
-- >
-- >      AAF   Customs line item measurement
-- >               The measurement of a consignment or part for customs
-- >               purpose.
-- >
-- >      AAG   Alcohol content
-- >               The measurement of the alcohol content.
-- >
-- >      AAH   Dimensions total weight
-- >               The total weight of an identified dimension.
-- >
-- >      AAI   Item weight
-- >               Weight at line item level.
-- >
-- >      AAJ   Visa quantity
-- >               Measurement reportable for visaed merchandise.
-- >
-- >      AAK   Licence (quantity deducted)
-- >               Quantity to be written off from the total license
-- >               amount.
-- >
-- >      AAL   Cargo loaded
-- >               Total tonnage of cargo loaded onto the conveyance.
-- >
-- >      AAM   Cargo discharged
-- >               Total tonnage of cargo unloaded from the conveyance.
-- >
-- >      AAN   Weight of conveyance
-- >               Tonnage of conveyance.
-- >
-- >      AAO   Conveyance summer dead weight
-- >               Registered summer dead weight total tonnage of the
-- >               vessel.
-- >
-- >      AAP   Containerized cargo on vessel's weight
-- >               Total weight of containerized cargo on vessel.
-- >
-- >      AAQ   Non-containerized cargo on vessel's weight
-- >               Total weight of non-containerized cargo on vessel.
-- >
-- >      AAR   1st specified tariff quantity
-- >               Primary reportable quantity associated with a tariff
-- >               number.
-- >
-- >      AAS   2nd specified tariff quantity
-- >               Secondary reportable quantity associated with a tariff
-- >               number.
-- >
-- >      AAT   3rd specified tariff quantity
-- >               Third reportable quantity associated with a tariff
-- >               number.
-- >
-- >      AAU   Package
-- >               Commodity/product shipped or sold in discrete individual
-- >               containers which may be accumulated in a larger package.
-- >
-- >      AAV   Person
-- >               Physical measurement of a person.
-- >
-- >      AAW   Accuracy
-- >               Accuracy of the measurements being sent.
-- >
-- >      AAX   Consignment measurement
-- >               Measurement related to a consignment; to be specified by
-- >               the measurement code dimension value.
-- >
-- >      AAY   Package measurement
-- >               Measurements of package.
-- >
-- >      AAZ   Handling unit measurement
-- >               Measurements of handling unit.
-- >
-- >      ABA   Unit of measure used for ordered quantities
-- >               The unit of measure in which ordered quantities are
-- >               expressed.
-- >
-- > +    ABB   Transport conditions for delivery to market
-- >               Specified measurements refer to transport conditions for
-- >               delivery to the market.
-- >
-- > +    ABC   Storage conditions to guarantee product freshness until
-- >            best before date
-- >               Specified measurements refer to storage conditions to
-- >               guarantee the product freshness until best before date.
-- >
-- >      ABI   Ventilation
-- >               The number of air exchanges per hour.
-- >
-- >      ABJ   Original unit of issue
-- >               A code identifying the original unit of issue.
-- >
-- >      ABK   External dimension
-- >               The outer measurement of the referenced item or package.
-- >
-- >      ABL   Internal dimension
-- >               The inner measurement of the referenced item or package.
-- >
-- >      ABM   Test piece dimensions
-- >               The size of the test piece that was tested.
-- >
-- >      ABN   Average reading
-- >               Average reading of the test being reported on.
-- >
-- >      ABO   Comparison price measurement
-- >               A measurement used for comparison pricing purposes.
-- >
-- >      ABP   Unit of measure per unit of issue
-- >               Provides the unit of measurement which is to be used for
-- >               a given unit of issue.
-- >
-- >      ABQ   Air flow
-- >               The movement of air.
-- >
-- > X    ABR   Certified weight
-- >               Weight which has been certified.
-- >
-- >            Note:
-- >               1. This code value will be removed effective with
-- >               directory D.03A.
-- >
-- >      ABS   Velocity
-- >               Speed.
-- >
-- >      ABT   Supplementary unit
-- >               Supplementary unit referring to the measurement
-- >               reported.
-- >
-- >      ABU   Quota
-- >               Maximum number or amount.
-- >
-- >      ABV   Unit of time
-- >               The specification of a specific unit of time.
-- >
-- >      ABW   Unit of measure used for invoiced quantities
-- >               Unit of measure of invoiced quantity.
-- >
-- >      ABX   Usable or consumable content
-- >               Measurement of usable or consumable contents.
-- >
-- >      ABY   Payment cycle
-- >               Measurement of the period of time over which payment
-- >               occurs.
-- >
-- >      ABZ   Plot size
-- >               The relative bigness of a plot or an allotment of land.
-- >
-- >      ACA   Space occupied
-- >               Space taken up or filled.
-- >
-- >      ACB   Building size
-- >               The relative bigness of a permanent fixed structure
-- >               forming an enclosure.
-- >
-- >      ACC   Office size
-- >               The relative bigness of a room or building used for
-- >               clerical or similar work.
-- >
-- >      ACD   Area damaged
-- >               The size of an area that was damaged.
-- >
-- >      ACE   Land size
-- >               The relative bigness of an expanse of ground.
-- >
-- >      ACF   Industrial plant size
-- >               The relative bigness of a factory or facility used in an
-- >               industrial process.
-- >
-- >      ACG   Installed capacity
-- >               The maximum amount that can be contained or produced.
-- >
-- >      ACH   Warehouse size
-- >               The relative bigness of a structure in which things are
-- >               temporarily stored.
-- >
-- >      ASW   Weight ascertained
-- >               [4240] Endorsement of the true weight (mass) as
-- >               ascertained or verified by the railway (CIM 81).
-- >
-- >      ASX   Supplemental tariff classification quantity
-- >               Supplemental quantity reportable for a tariff number.
-- >
-- >      ASY   1st specified tariff quantity, general rules of
-- >            interpretation 3(c) or 3(b)
-- >               The first reportable quantity associated with a tariff
-- >               number for goods classified under general rules of
-- >               interpretation 3(b) or 3(c).
-- >
-- >      ASZ   2nd specified tariff quantity, general rules of
-- >            interpretation 3(c) or 3(b)
-- >               Secondary reportable quantity associated with a tariff
-- >               classification for goods classified under harmonized
-- >               tariff schedule general rules of interpretation 3(b) or
-- >               3(c).
-- >
-- >      ATA   3rd specified tariff quantity, general rules of
-- >            interpretation 3(c) or 3(b)
-- >               Third reportable quantity associated with a tariff
-- >               classification for goods classified under harmonized
-- >               tariff schedule general rules of interpretation 3(b) or
-- >               3(c).
-- >
-- >      ATB   Showroom size
-- >               The relative bigness of a room used for display.
-- >
-- >      ATC   Reserves
-- >               Measurement of reserves maintained.
-- >
-- >      ATD   Height reference point
-- >               The point from which the reference height is determined.
-- >
-- >      ATE   Available for cultivation
-- >               The purpose is to measure the availability for
-- >               cultivation.
-- >
-- >      CH    Chemistry
-- >               The given measurement value identifies the amount or
-- >               percentage of a specific chemical within a substance.
-- >
-- >      CHW   Chargeable weight
-- >               The weight on which charges are based.
-- >
-- >      CN    Core notch dimensions
-- >               The notch dimensions of a core.
-- >
-- >      CS    Core size
-- >               The size of a core.
-- >
-- >      CT    Counts
-- >               The measurement is counts.
-- >
-- >      DEN   Density
-- >               Code to indicate the mass of a commodity per unit of
-- >               volume.
-- >
-- >      DT    Dimensional tolerance
-- >               Possible range of values for a specified measurement
-- >               dimension of a product, material or package.
-- >
-- >      DV    Discrete measurement value
-- >               The measurement specified is separate and distinct from
-- >               other measurements.
-- >
-- >      DX    Dimension used in price extension
-- >               Dimension will be used in conjunction with price
-- >               extension.
-- >
-- >      EN    Environmental conditions
-- >               The data values to be reported reflect the environmental
-- >               conditions surrounding a situation including but not
-- >               limited to test environments.
-- >
-- >      FO    Footage
-- >               Length or distance in feet.
-- >
-- >      IV    Interpolated value
-- >               The value based on interpolation.
-- >
-- >      LAO   Vessel overall length
-- >               Total overall length of the vessel.
-- >
-- >      LC    Limited weight/size coils
-- >               Measurement identifying weight or size limit of coils.
-- >
-- >      LGL   Length limitations
-- >               Indicates that value/range information is understood as
-- >               length limitation.
-- >
-- >      LL    Lift limitation
-- >               A measurement indicating lift capacity limitations.
-- >
-- >      LMT   Loading meters
-- >               The length in a vehicle, whereby the complete width and
-- >               height over that length is needed for the goods.
-- >
-- >      PAL   Payload
-- >               The revenue-producing load carried by a means of
-- >               transport.
-- >
-- >      PC    Parting cut (sawcut)
-- >               Cut identifying parts of an item probably for
-- >               separation.
-- >
-- >      PD    Physical dimensions (product ordered)
-- >               Specified measurement dimensions refer to physical
-- >               dimensions of a product, material or package.
-- >
-- >      PL    Package limitations
-- >               A measurement indicating limitations associated with the
-- >               package.
-- >
-- >      PLL   Platform limitation
-- >               A measurement indicating limitations in relation to a
-- >               platform.
-- >
-- >      RL    Receiving facility limitations
-- >               Specified measurement dimensions are provided as a
-- >               result of limitations or restrictions related to the
-- >               physical dimensions of a product, material or package at
-- >               the reception point.
-- >
-- >      SE    Property specification
-- >               Indicates that the data to follow are target
-- >               specifications.
-- >
-- >      SH    Shipping tolerance
-- >               Tolerances related to shipping.
-- >
-- >      SM    Shade
-- >               The degree to which a colour is mixed with black or is
-- >               decreasingly illuminated.
-- >
-- >      SO    Storage limitation
-- >               A measurement indicating limitation in relation to
-- >               storage.
-- >
-- >      SR    Surface roughness
-- >               The measurement of roughness of a surface.
-- >
-- >      ST    Surface treatment
-- >               The attribute being measured is the surface treatment.
-- >
-- >      SU    Surface
-- >               Surface area of an object.
-- >
-- >      SV    Specification value
-- >               A measurable item characteristic specified by the buyer,
-- >               seller or third party.
-- >
-- >      TE    Temperature
-- >               The measured attribute is temperature.
-- >
-- >      TL    Transportation equipment limitations
-- >               A measurement indicating limitations in relation to
-- >               transportation equipment.
-- >
-- >      TR    Test result
-- >               Indicates that the data to follow is the test result
-- >               measurements.
-- >
-- >      VOL   Volume
-- >               Size or measure of anything in three dimensions.
-- >
-- >      WT    Weights
-- >               The measured attribute is weight.
-- >
-- >      WX    Weight used in price extension
-- >               Weight will be used in conjunction with price extension.
simple6311 :: Parser Value
simple6311 = simple "6311" (alphaNumeric `upTo` 3)