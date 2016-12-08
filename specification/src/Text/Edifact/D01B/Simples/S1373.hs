{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D01B.Simples.S1373
  ( simple1373
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >      1373  Document status code                                    [B]
-- >
-- >      Desc: Code specifying the status of a document.
-- >
-- >      Repr: an..3
-- >
-- >      1     Accepted
-- >               The specified document is accepted.
-- >
-- >      2     Accompanying goods
-- >               Notice that a specific document will be accompanying the
-- >               goods.
-- >
-- >      3     Conditionally accepted
-- >               The specified document is conditionally accepted.
-- >
-- >      4     To arrive by separate EDI message
-- >               Notice that a specific document/message will be
-- >               transmitted via a separate EDI message.
-- >
-- >      5     Information only
-- >               Notice that the specific document or message is for
-- >               information only.
-- >
-- >      6     To arrive by manual means
-- >               Notice that a specific document or message will not be
-- >               sent via EDI.
-- >
-- >      7     To be raised and sent
-- >               Request for a specific message to be formatted and
-- >               transmitted or a request for a specific document to be
-- >               raised and sent.
-- >
-- >      8     Rejected
-- >               The specified document is rejected.
-- >
-- >      9     To be printed
-- >               The document or message is to be printed.
-- >
-- >      10    Document currently valid
-- >               Specific document is currently valid.
-- >
-- >      11    Document not available
-- >               Specified document is not available.
-- >
-- >      12    Document exhausted by declaration and attached
-- >               Customs declaration to which the document is related
-- >               completed or exhaust the allowance stated on the
-- >               document. The document is attached to the Customs
-- >               declaration.
-- >
-- >      13    Document not exhausted by declaration and attached
-- >               Customs declaration to which the document is related
-- >               does not complete or exhaust the allowance stated on the
-- >               document . The document is not attached to the
-- >               declaration but has already been lodged in the Customs
-- >               station.
-- >
-- >      14    Document exhausted by declaration and previously lodged
-- >               Customs declaration to which the document is related
-- >               completed or exhaust the allowance stated on the
-- >               document. The usage of the document is complete. The
-- >               document is not attached to the declaration but has
-- >               already been lodged in the Customs station.
-- >
-- >      15    Document not exhausted by declaration and previously lodged
-- >               Customs declaration to which the document is related
-- >               does not complete or exhaust the allowance stated on the
-- >               document. The document can continue to be used for
-- >               future declarations until the allowance is exhausted.
-- >               The document is not attached to the declaration but has
-- >               already been lodged in the Customs station.
-- >
-- >      16    Document not attached
-- >               Specified document is not or cannot be attached.
-- >
-- >      17    Document with the goods
-- >               Document not attached to the Customs declaration but is
-- >               attached to the goods.
-- >
-- >      18    Document attached, to be returned after endorsement
-- >               Specified document is attached to the Customs
-- >               declaration and will be required to be returned to the
-- >               declarant after Customs endorsement.
-- >
-- >      19    Document applied for
-- >               Application has been submitted for that document.
-- >
-- >      20    Received for shipment
-- >               Indicates that the document has legal validity from the
-- >               date of receival of the cargo.
-- >
-- >      21    Shipped on board
-- >               Indicates that the document has legal validity from the
-- >               date that cargo is loaded on board a vessel.
-- >
-- >      22    Status 0
-- >               Message is at status 0.
-- >
-- >      23    Status 1
-- >               Message is at status 1.
-- >
-- >      24    Status 2
-- >               Message is at status 2.
-- >
-- >      25    Message under development
-- >               Message is under development.
-- >
-- >      26    Document not freighted
-- >               Document not to include freight figures.
-- >
-- >      27    Document freighted
-- >               Document to include freight figures.
-- >
-- >      28    Archived
-- >               The document or message has been archived.
-- >
-- >      29    Provisional
-- >               The document or message has no official status.
-- >
-- >      30    Documents enclosed in the first transmission
-- >               The documents are enclosed in the first transmission.
-- >
-- >      31    Documents enclosed in the second transmission
-- >               The documents are enclosed in the second transmission.
-- >
-- >      32    Document not required, waiver issued
-- >               The document is not required, waiver of requirement has
-- >               been issued.
-- >
-- >      33    Already on file with receiver of this message
-- >               The document is already on file with the party receiving
-- >               the message.
-- >
-- >      34    Retained by sender of this message, or by sender's agent or
-- >            representative
-- >               The document is in the possession of the sender or
-- >               sender's agent or representative.
-- >
-- >      36    Document previously submitted
-- >               The document has already been submitted.
simple1373 :: Parser Value
simple1373 = simple "1373" (alphaNumeric `upTo` 3)
