let
    BinaryToImage = (ImageBinary as binary) as list =>
    let
        Base64 = "data:image/jpeg;base64, " & Binary.ToText(ImageBinary, BinaryEncoding.Base64),
        SplitUpText=Splitter.SplitTextByRepeatedLengths(30000)(Base64)
    in
        SplitUpText
in
    BinaryToImage