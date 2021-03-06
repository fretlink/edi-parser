{-# LANGUAGE OverloadedStrings #-}

---- Machine generated code.
---- Output of edi-parser-scaffolder

module Text.Edifact.D96A.Simples.S4401
  ( simple4401
  ) where

import           Text.Edifact.Parsing
import           Text.Edifact.Types   (Value)

-- | Derived from this specification:
--
-- >   4401  Instruction, coded
-- >
-- >   Desc: Specification of an action to be taken by the receiver of the
-- >         message.
-- >
-- >   Repr: an..3
-- >
-- >    AA     Send credit note
-- >              Self explanatory.
-- >    AB     Change invoice
-- >              Send invoice, taking into account specified
-- >              discrepancies.
-- >    AD     Advise
-- >              Instruction to advise a party.
-- > X  AE     Change invoice
-- >              Send invoice, taking into account specified
-- >              discrepancies. Use code value AB.
-- >    AF     Stop delivery process
-- >              Self-explanatory.
-- >    AG     Send replacement
-- >              The identified item must be sent for replacement.
-- >    AH     Pick-up
-- >              The identified item is to be picked up.
-- >    AI     Advise by telecommunication
-- >              Advise of documentary credit by telecommunication.
-- >    AJ     Advise by fax
-- >              Instruction to advise party by fax.
-- >    AK     By registered airmail
-- >              Issue documentary credit by registered airmail.
-- >    AL     By registered airmail in one set
-- >              Deliver documents in one set by registered airmail.
-- >    AM     By registered airmail in two sets
-- >              Deliver documents in two sets by registered airmail.
-- >    AP     Advise by phone
-- >              Instruction to advise party by phone.
-- >    AT     Advise by telex
-- >              Instruction to advise party by telex.
-- >    CO     Convert
-- >              Convert the message into other format.
-- >    DA     Without
-- >              The bank advising the documentary credit is not requested
-- >              to confirm the credit.
-- >    DB     May add
-- >              The bank advising the documentary credit may add its
-- >              confirmation to the documentary credit.
-- >    DC     Confirm
-- >              The bank advising the documentary credit is requested to
-- >              confirm the credit.
-- >    DD     By registered mail
-- >              Issue documentary credit by registered mail.
-- >    DE     By courier service
-- >              Issue documentary credit by courier service.
-- >    DF     By teletransmission
-- >              Issue documentary credit by teletransmission.
-- >    DG     Preadvice by teletransmission
-- >              Preadvise documentary credit by teletransmission.
-- >    DH     By courier service in one set
-- >              Deliver documents in one set by courier service.
-- >    DI     By courier service in two sets
-- >              Deliver documents in two sets by courier service.
-- >    DJ     By registered mail in one set
-- >              Deliver documents in one set by registered mail.
-- >    DK     By registered mail in two sets
-- >              Deliver documents in two sets by registered mail.
-- >    DN     Per teletransmission
-- >              Deliver documents by teletransmission.
-- >    DO     Advise beneficiary by phone
-- >              Advise beneficiary of documentary credit by phone.
-- >    DP     Late presentation of documents within D/C validity
-- >           acceptable
-- >              Late presentation of documents with the documentary
-- >              credit validity is acceptable.
-- >    EI     EDI
-- >              Instructions to advise beneficiary by EDI.
-- >    EM     Electronic mail
-- >              Instructions to advise beneficiary by electronic mail.
-- >    EX     Expedite
-- >              Forward the information to requested party immediately.
-- >    QC     Quality control held
-- >              Goods to be held from distribution by stockholder until a
-- >              quality control assessment is completed by the
-- >              manufacturer.
-- >    QE     Quality control embargo
-- >              Quality control assessment is negative, goods are to be
-- >              held from distribution by stockholder.
-- >    RL     Released
-- >              Goods are released by manufacturer for distribution by
-- >              stockholder.
-- >    SW     S.W.I.F.T.
-- >              Instructions to advise beneficiary by S.W.I.F.T.
simple4401 :: Parser Value
simple4401 = simple "4401" (alphaNumeric `upTo` 3)
