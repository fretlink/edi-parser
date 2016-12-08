module Text.Edifact.Scaffolder.Simples.Specification
  ( -- *
    specificationParser
  ) where

import           Text.Edifact.Scaffolder.Commons

import           Text.Parsec                     as P (anyChar, count, digit,
                                                       endOfLine, manyTill,
                                                       oneOf, skipMany, string,
                                                       try)
import           Text.Parsec.String              (Parser)

specificationParser :: Parser (SimpleCode, SimpleName)
specificationParser = scanUntil [ simpleParser ]

simpleParser :: Parser (SimpleCode, SimpleName)
simpleParser = do
  _ <- count 3 (oneOf "+*#|-X ")
  skipMany (string " ")
  code <- simpleCodeParser
  _ <- string " "
  skipMany (string " ")
  name <- SimpleName <$> manyTill anyChar (() <$ try endOfLine)
  pure (code, name)

simpleCodeParser :: Parser SimpleCode
simpleCodeParser = fromString <$> count 4 digit
