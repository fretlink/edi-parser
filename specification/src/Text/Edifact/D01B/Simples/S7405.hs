{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S7405
  ( simple7405
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      7405  Object identification code qualifier                    [C]
-- >
-- >      Desc: Code qualifying the identification of an object.
-- >
-- >      Repr: an..3
-- >
-- >      AA    House bill of lading
-- >               A number that is used to identify goods from a freight
-- >               forwarder/consolidator.
-- >
-- >      AB    1st structure element name
-- >               The first element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AC    2nd structure element name
-- >               The second element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AD    3rd structure element name
-- >               The third element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AE    4th structure element name
-- >               The fourth element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AF    5th structure element name
-- >               The fifth element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AG    6th structure element name
-- >               The sixth element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AH    7th structure element name
-- >               The seventh element in a series of elements that
-- >               together define the structure of an object.
-- >
-- >      AI    8th structure element name
-- >               The eighth element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AJ    9th structure element name
-- >               The ninth element in a series of elements that together
-- >               define the structure of an object.
-- >
-- >      AK    Data set
-- >               The identity of a data set.
-- >
-- >      AL    Kanban card number
-- >               Reference number assigned by a consignee to a Kanban
-- >               card.
-- >
-- >      AM    Level number
-- >               Level number in a hierarchy or other structure.
-- >
-- >      AN    Manufacturing reference number
-- >               A unique number identifying a particular assembly or
-- >               other manufacturing process.
-- >
-- >      AO    Position number in package
-- >               A number to identify the position within a package
-- >               according to agreed rules between partners.
-- >
-- >      AP    Product
-- >               A name or number which identifies a product.
-- >
-- >      AQ    Release number
-- >               Number assigned to a release.
-- >
-- >      AR    Statistical concept
-- >               Statistical concept.
-- >
-- >      AS    Table
-- >               A table of items e.g. figures and text represented in
-- >               rows and columns.
-- >
-- >      AT    Transport packing group number
-- >               Number identifying a group of articles in a predescribed
-- >               unit load for shipment/dispatch as agreed between
-- >               partners.
-- >
-- >      AU    Value list
-- >               A coded or non coded list of values.
-- >
-- >      AV    Value list subset
-- >               A subset of a coded or non coded list of values.
-- >
-- >      AW    Serial shipping container code
-- >               A single unique serial number which identifies shipping
-- >               containers or shipping packages.
-- >
-- >      AX    Case number
-- >               A code to identify the number assigned to a given case.
-- >
-- >      AY    Financial security identification number
-- >               Identification number of a financial security.
-- >
-- >      AZ    Compact disk player security code number
-- >               The security code number of the compact disk player.
-- >
-- >      BA    Question in questionnaire
-- >               The identity number of a question in a questionnaire.
-- >
-- >      BB    Questionnaire
-- >               The identification of a questionnaire.
-- >
-- >      BC    Check digit
-- >               The check digit of the primary number.
-- >
-- >      BD    Vehicle telephone identification number
-- >               The number which identifies the telephone equipment
-- >               fitted to the vehicle.
-- >
-- >      BE    Batch excluded
-- >               Products manufactured in Batch not to be included in
-- >               consignment.
-- >
-- >      BF    Door key number
-- >               The number on the key that fits the door lock.
-- >
-- >      BG    Fleet number
-- >               The number of the fleet to which a vehicle is assigned.
-- >
-- >      BH    Ignition key number
-- >               The number on the key that fits the ignition lock.
-- >
-- >      BI    Radio security code number
-- >               The security code number of the radio.
-- >
-- > X    BJ    Serial shipping container code
-- >               Code requested for deletion.
-- >
-- >            Note:
-- >               1. This code value will be removed effective with
-- >               directory D.03A.
-- >
-- >      BK    Fleet vehicle unit number
-- >               The unit number of the vehicle within the fleet
-- >               allocated by the fleet operator.
-- >
-- >      BL    Vehicle registration number
-- >               The registration number of the vehicle.
-- >
-- >      BM    Accounting Classification Reference Number (ACRN)
-- >               A reference number identifying the accounting
-- >               classification.
-- >
-- >      BN    Serial number
-- >               Identification number of an item which distinguishes
-- >               this specific item out of a number of identical items.
-- >
-- >      BO    Fund
-- >               A code identifying a fund.
-- >
-- >      BP    Special Accounting Classification Reference Number (ACRN)
-- >               A reference number identifying a special accounting
-- >               classification.
-- >
-- >      BQ    Project
-- >               A code identifying a project.
-- >
-- >      BR    Transportation Account Code (TAC)
-- >               A code identifying a transportation account.
-- >
-- >      BS    Financial details
-- >               A code identifying financial details for accounting.
-- >
-- >      BT    Account manager
-- >               A code identifying the account manager.
-- >
-- >      BU    Buyer's package identification
-- >               A package identification number allocated by a buyer.
-- >
-- >      BV    Predecessor constraint
-- >               Identity number is a predecessor constraint.
-- >
-- >      BW    Successor constraint
-- >               Identity number is a successor constraint.
-- >
-- >      BX    Batch number
-- >               Unique number affixed by manufacturer to a batch of
-- >               products produced under similar conditions.
-- >
-- >      BY    Person identity number
-- >               The identity number of a person.
-- >
-- >      BZ    Health-care professional identity number
-- >               The identity number of a health-care professional.
-- >
-- >      CA    Private institution identity number
-- >               The identity number of a private institution.
-- >
-- >      CB    Public institution identity number
-- >               The identity number of a public institution.
-- >
-- >      CC    Tree structure
-- >               The identity number of a structure containing two or
-- >               more objects linked in a hierarchy.
-- >
-- >      CD    Tree structure subset
-- >               The identity number of a subset of a structure
-- >               containing two or more objects linked in a hierarchy.
-- >
-- >      CE    Link set
-- >               The identity number of a set of links.
-- >
-- >      CF    Organisation chart
-- >               The identity number of an organisation chart.
-- >
-- >      CG    Healthcare provider number (non-government)
-- >               Identity number assigned to a healthcare provider by a
-- >               non-government body.
-- >
-- >      CH    Primary patient identification number
-- >               Primary number identifying a patient.
-- >
-- >      CI    Insurer identification number
-- >               A unique identifier assigned to an insurer.
-- >
-- >      CJ    Hospital issued healthcare provider number
-- >               Identity number of a healthcare service provider issued
-- >               by a hospital.
-- >
-- >      CK    Healthcare practice identification number
-- >               Uniquely identifies the practice in which one or more
-- >               healthcare providers conduct business.
-- >
-- >      CL    Agent identification number
-- >               A unique identifier assigned to an agent.
-- >
-- >      CM    Insurer group identification number
-- >               The identification number of the insurer's group.
-- >
-- >      CN    Chassis number
-- >               Unique number affixed by manufacturer to a chassis for
-- >               identification purposes.
-- >
-- >      CO    Invoice number
-- >               Number assigned to the invoice.
-- >
-- >      CP    Account number
-- >               Account identification number.
-- >
-- >      CQ    Internal control number
-- >               Control number assigned for internal use.
-- >
-- >      CR    Policy number
-- >               Number uniquely identifying a policy.
-- >
-- >      CS    Attribute set
-- >               A set of attributes.
-- >
-- >      CT    Footnote set
-- >               A set of footnotes.
-- >
-- >      EE    Engine number
-- >               Unique number affixed by manufacturer to an engine for
-- >               identification purposes.
-- >
-- >      EM    Emulsion number
-- >               Manufacturer assigned reference to a photographic
-- >               product indicating sensitivity.
-- >
-- >      IL    Invoice line number
-- >               Sequential numerical assignment to identical invoiced
-- >               goods which are subject to the same conditions of sale.
-- >
-- >      ML    Marking/label number
-- >               The number on the marking or label.
-- >
-- >      PN    Part number
-- >               Manufacturer-assigned reference to a product part.
-- >
-- >      SC    Secondary Customs tariff number
-- >               Indicate (e.g. in segment GIR) the secondary (sub-)
-- >               level of a Customs tariff number.
-- >
-- >      VV    Vehicle identity number
-- >               Unique serial number assigned by the manufacturer that
-- >               distinguishes one vehicle from another.
-- >
-- >      VW    Skid number
-- >               A number identifying a skid or pallet.
-- >
-- >      VX    Authorisation
-- >               Official approval.
-- >
-- >      VY    Insurance policy
-- >               Contract of insurance.
-- >
-- >      VZ    Transport unit identification according to ISO/IEC 15459
-- >               The identification of a transport unit according to
-- >               ISO/IEC 15459 (ISO: International Organization for
-- >               Standardization. IEC: International Electrotechnical
-- >               Commission).
-- >
-- >      WA    Indivisible transport unit according to ISO/IEC 15459
-- >               The identification of an indivisible transport unit
-- >               according to ISO/IEC 15459 (ISO: International
-- >               Organization for Standardization. IEC: International
-- >               Electrotechnical Commission).
-- >
-- >      WB    Divisible transport unit according to ISO/IEC 15459
-- >               The identification of a divisible transport unit
-- >               according to ISO/IEC 15459 (ISO: International
-- >               Organization for Standardization. IEC: International
-- >               Electrotechnical Commission).
simple7405 :: Parser Value
simple7405 = simple "7405" (alphaNumeric `upTo` 3)
