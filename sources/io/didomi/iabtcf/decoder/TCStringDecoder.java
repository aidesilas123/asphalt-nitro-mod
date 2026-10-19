package io.didomi.iabtcf.decoder;

import io.didomi.iabtcf.decoder.exceptions.ByteParseException;
import io.didomi.iabtcf.decoder.exceptions.UnsupportedVersionException;
import io.didomi.iabtcf.decoder.utils.Base64;
import io.didomi.iabtcf.decoder.utils.BitReader;
import io.didomi.iabtcf.decoder.utils.FieldDefs;
import java.util.EnumSet;

/* JADX INFO: loaded from: classes4.dex */
class TCStringDecoder {
    TCStringDecoder() {
    }

    public static TCString decode(String str, DecoderOption... decoderOptionArr) throws ByteParseException, UnsupportedVersionException, IllegalArgumentException {
        TCStringV2 tCStringV2FromBitVector;
        EnumSet enumSetNoneOf = EnumSet.noneOf(DecoderOption.class);
        for (DecoderOption decoderOption : decoderOptionArr) {
            enumSetNoneOf.add(decoderOption);
        }
        String[] strArrSplit = str.split("\\.");
        BitReader bitReaderVectorFromString = vectorFromString(strArrSplit[0]);
        byte bits6 = bitReaderVectorFromString.readBits6(FieldDefs.CORE_VERSION);
        if (bits6 == 1) {
            return TCStringV1.fromBitVector(bitReaderVectorFromString);
        }
        if (bits6 != 2) {
            throw new UnsupportedVersionException("Version " + ((int) bits6) + "is unsupported yet");
        }
        if (strArrSplit.length > 1) {
            BitReader[] bitReaderArr = new BitReader[strArrSplit.length - 1];
            for (int i = 1; i < strArrSplit.length; i++) {
                bitReaderArr[i - 1] = vectorFromString(strArrSplit[i]);
            }
            tCStringV2FromBitVector = TCStringV2.fromBitVector(bitReaderVectorFromString, bitReaderArr);
        } else {
            tCStringV2FromBitVector = TCStringV2.fromBitVector(bitReaderVectorFromString, new BitReader[0]);
        }
        if (!enumSetNoneOf.contains(DecoderOption.LAZY)) {
            tCStringV2FromBitVector.hashCode();
        }
        return tCStringV2FromBitVector;
    }

    static BitReader vectorFromString(String str) {
        return new BitReader(Base64.getUrlDecoder().decode(str));
    }
}
