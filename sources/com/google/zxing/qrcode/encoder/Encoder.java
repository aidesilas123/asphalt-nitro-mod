package com.google.zxing.qrcode.encoder;

import com.google.zxing.common.CharacterSetECI;
import com.google.zxing.common.StringUtils;
import com.google.zxing.g;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class Encoder {
    private static final int[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    static final Charset b = StandardCharsets.ISO_8859_1;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Mode.values().length];
            a = iArr;
            try {
                iArr[Mode.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Mode.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Mode.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Mode.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Encoder() {
    }

    static void a(String str, com.google.zxing.common.a aVar, Charset charset) {
        for (byte b2 : str.getBytes(charset)) {
            aVar.e(b2, 8);
        }
    }

    static void b(CharSequence charSequence, com.google.zxing.common.a aVar) throws g {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iO = o(charSequence.charAt(i));
            if (iO == -1) {
                throw new g();
            }
            int i2 = i + 1;
            if (i2 < length) {
                int iO2 = o(charSequence.charAt(i2));
                if (iO2 == -1) {
                    throw new g();
                }
                aVar.e((iO * 45) + iO2, 11);
                i += 2;
            } else {
                aVar.e(iO, 6);
                i = i2;
            }
        }
    }

    static void c(String str, Mode mode, com.google.zxing.common.a aVar, Charset charset) throws g {
        int i = a.a[mode.ordinal()];
        if (i == 1) {
            h(str, aVar);
            return;
        }
        if (i == 2) {
            b(str, aVar);
            return;
        }
        if (i == 3) {
            a(str, aVar, charset);
        } else {
            if (i == 4) {
                e(str, aVar);
                return;
            }
            throw new g("Invalid mode: " + mode);
        }
    }

    public static Mode chooseMode(String str) {
        return l(str, null);
    }

    private static void d(CharacterSetECI characterSetECI, com.google.zxing.common.a aVar) {
        aVar.e(Mode.ECI.e(), 4);
        aVar.e(characterSetECI.f(), 8);
    }

    static void e(String str, com.google.zxing.common.a aVar) throws g {
        int i;
        Charset charset = StringUtils.b;
        if (charset == null) {
            throw new g("SJIS Charset not supported on this platform");
        }
        byte[] bytes = str.getBytes(charset);
        if (bytes.length % 2 != 0) {
            throw new g("Kanji byte size not even");
        }
        int length = bytes.length - 1;
        for (int i2 = 0; i2 < length; i2 += 2) {
            int i3 = ((bytes[i2] & 255) << 8) | (bytes[i2 + 1] & 255);
            int i4 = 33088;
            if (i3 >= 33088 && i3 <= 40956) {
                i = i3 - i4;
            } else if (i3 < 57408 || i3 > 60351) {
                i = -1;
            } else {
                i4 = 49472;
                i = i3 - i4;
            }
            if (i == -1) {
                throw new g("Invalid byte sequence");
            }
            aVar.e(((i >> 8) * PsExtractor.AUDIO_STREAM) + (i & 255), 13);
        }
    }

    public static QRCode encode(String str, ErrorCorrectionLevel errorCorrectionLevel) throws g {
        return encode(str, errorCorrectionLevel, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.zxing.qrcode.encoder.QRCode encode(java.lang.String r6, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel r7, java.util.Map<com.google.zxing.EncodeHintType, ?> r8) throws com.google.zxing.g {
        /*
            Method dump skipped, instruction units count: 337
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.qrcode.encoder.Encoder.encode(java.lang.String, com.google.zxing.qrcode.decoder.ErrorCorrectionLevel, java.util.Map):com.google.zxing.qrcode.encoder.QRCode");
    }

    static void f(int i, Version version, Mode mode, com.google.zxing.common.a aVar) throws g {
        int iF = mode.f(version);
        int i2 = 1 << iF;
        if (i < i2) {
            aVar.e(i, iF);
            return;
        }
        throw new g(i + " is bigger than " + (i2 - 1));
    }

    static void g(Mode mode, com.google.zxing.common.a aVar) {
        aVar.e(mode.e(), 4);
    }

    static void h(CharSequence charSequence, com.google.zxing.common.a aVar) {
        int length = charSequence.length();
        int i = 0;
        while (i < length) {
            int iCharAt = charSequence.charAt(i) - '0';
            int i2 = i + 2;
            if (i2 < length) {
                aVar.e((iCharAt * 100) + ((charSequence.charAt(i + 1) - '0') * 10) + (charSequence.charAt(i2) - '0'), 10);
                i += 3;
            } else {
                i++;
                if (i < length) {
                    aVar.e((iCharAt * 10) + (charSequence.charAt(i) - '0'), 7);
                    i = i2;
                } else {
                    aVar.e(iCharAt, 4);
                }
            }
        }
    }

    private static int i(Mode mode, com.google.zxing.common.a aVar, com.google.zxing.common.a aVar2, Version version) {
        return aVar.i() + mode.f(version) + aVar2.i();
    }

    private static int j(b bVar) {
        return c.a(bVar) + c.c(bVar) + c.d(bVar) + c.e(bVar);
    }

    private static int k(com.google.zxing.common.a aVar, ErrorCorrectionLevel errorCorrectionLevel, Version version, b bVar) throws g {
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < 8; i3++) {
            d.a(aVar, errorCorrectionLevel, version, i3, bVar);
            int iJ = j(bVar);
            if (iJ < i) {
                i2 = i3;
                i = iJ;
            }
        }
        return i2;
    }

    private static Mode l(String str, Charset charset) {
        Charset charset2 = StringUtils.b;
        if (charset2 != null && charset2.equals(charset) && r(str)) {
            return Mode.KANJI;
        }
        boolean z = false;
        boolean z2 = false;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z2 = true;
            } else {
                if (o(cCharAt) == -1) {
                    return Mode.BYTE;
                }
                z = true;
            }
        }
        return z ? Mode.ALPHANUMERIC : z2 ? Mode.NUMERIC : Mode.BYTE;
    }

    private static Version m(int i, ErrorCorrectionLevel errorCorrectionLevel) throws g {
        for (int i2 = 1; i2 <= 40; i2++) {
            Version versionForNumber = Version.getVersionForNumber(i2);
            if (u(i, versionForNumber, errorCorrectionLevel)) {
                return versionForNumber;
            }
        }
        throw new g("Data too big");
    }

    static byte[] n(byte[] bArr, int i) {
        int length = bArr.length;
        int[] iArr = new int[length + i];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = bArr[i2] & 255;
        }
        new com.google.zxing.common.h.c(com.google.zxing.common.h.a.f4333e).b(iArr, i);
        byte[] bArr2 = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr2[i3] = (byte) iArr[length + i3];
        }
        return bArr2;
    }

    static int o(int i) {
        int[] iArr = a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    static void p(int i, int i2, int i3, int i4, int[] iArr, int[] iArr2) throws g {
        if (i4 >= i3) {
            throw new g("Block ID too large");
        }
        int i5 = i % i3;
        int i6 = i3 - i5;
        int i7 = i / i3;
        int i8 = i7 + 1;
        int i9 = i2 / i3;
        int i10 = i9 + 1;
        int i11 = i7 - i9;
        int i12 = i8 - i10;
        if (i11 != i12) {
            throw new g("EC bytes mismatch");
        }
        if (i3 != i6 + i5) {
            throw new g("RS blocks mismatch");
        }
        if (i != ((i9 + i11) * i6) + ((i10 + i12) * i5)) {
            throw new g("Total bytes mismatch");
        }
        if (i4 < i6) {
            iArr[0] = i9;
            iArr2[0] = i11;
        } else {
            iArr[0] = i10;
            iArr2[0] = i12;
        }
    }

    static com.google.zxing.common.a q(com.google.zxing.common.a aVar, int i, int i2, int i3) throws g {
        if (aVar.j() != i2) {
            throw new g("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i3);
        int i4 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            p(i, i2, i3, i5, iArr, iArr2);
            int i6 = iArr[0];
            byte[] bArr = new byte[i6];
            aVar.l(i4 * 8, bArr, 0, i6);
            byte[] bArrN = n(bArr, iArr2[0]);
            arrayList.add(new com.google.zxing.qrcode.encoder.a(bArr, bArrN));
            iMax = Math.max(iMax, i6);
            iMax2 = Math.max(iMax2, bArrN.length);
            i4 += iArr[0];
        }
        if (i2 != i4) {
            throw new g("Data bytes does not match offset");
        }
        com.google.zxing.common.a aVar2 = new com.google.zxing.common.a();
        for (int i7 = 0; i7 < iMax; i7++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA = ((com.google.zxing.qrcode.encoder.a) it.next()).a();
                if (i7 < bArrA.length) {
                    aVar2.e(bArrA[i7], 8);
                }
            }
        }
        for (int i8 = 0; i8 < iMax2; i8++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((com.google.zxing.qrcode.encoder.a) it2.next()).b();
                if (i8 < bArrB.length) {
                    aVar2.e(bArrB[i8], 8);
                }
            }
        }
        if (i == aVar2.j()) {
            return aVar2;
        }
        throw new g("Interleaving error: " + i + " and " + aVar2.j() + " differ.");
    }

    static boolean r(String str) {
        byte[] bytes = str.getBytes(StringUtils.b);
        int length = bytes.length;
        if (length % 2 != 0) {
            return false;
        }
        for (int i = 0; i < length; i += 2) {
            int i2 = bytes[i] & 255;
            if ((i2 < 129 || i2 > 159) && (i2 < 224 || i2 > 235)) {
                return false;
            }
        }
        return true;
    }

    private static Version s(ErrorCorrectionLevel errorCorrectionLevel, Mode mode, com.google.zxing.common.a aVar, com.google.zxing.common.a aVar2) throws g {
        return m(i(mode, aVar, aVar2, m(i(mode, aVar, aVar2, Version.getVersionForNumber(1)), errorCorrectionLevel)), errorCorrectionLevel);
    }

    static void t(int i, com.google.zxing.common.a aVar) throws g {
        int i2 = i * 8;
        if (aVar.i() > i2) {
            throw new g("data bits cannot fit in the QR Code" + aVar.i() + " > " + i2);
        }
        for (int i3 = 0; i3 < 4 && aVar.i() < i2; i3++) {
            aVar.b(false);
        }
        int i4 = aVar.i() & 7;
        if (i4 > 0) {
            while (i4 < 8) {
                aVar.b(false);
                i4++;
            }
        }
        int iJ = i - aVar.j();
        for (int i5 = 0; i5 < iJ; i5++) {
            aVar.e((i5 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.i() != i2) {
            throw new g("Bits size does not equal capacity");
        }
    }

    static boolean u(int i, Version version, ErrorCorrectionLevel errorCorrectionLevel) {
        return version.d() - version.c(errorCorrectionLevel).d() >= (i + 7) / 8;
    }
}
