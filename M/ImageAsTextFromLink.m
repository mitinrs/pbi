let
    UrlToImage = (ImageUrl as text) as list =>
let
    BinaryContent = Web.Contents(ImageUrl),
    Base64 = "data:image/jpeg;base64, " & Binary.ToText(BinaryContent, BinaryEncoding.Base64),
    SplitUpText=Splitter.SplitTextByRepeatedLengths(30000)(Base64)
in
    SplitUpText
in
    UrlToImage