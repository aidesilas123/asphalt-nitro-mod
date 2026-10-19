package okio.internal;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.Objects;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Buffer;
import okio.ByteString;
import okio._Base64Kt;
import okio._JvmPlatformKt;
import okio._UtilKt;

/* JADX INFO: compiled from: -ByteString.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _ByteStringKt {
    private static final char[] a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0044 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x007c A[EDGE_INSN: B:261:0x007c->B:55:0x007c BREAK  A[LOOP:1: B:31:0x004d->B:59:0x0082, LOOP_LABEL: LOOP:0: B:3:0x0008->B:289:0x0008], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0205 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int a(byte[] r19, int r20) {
        /*
            Method dump skipped, instruction units count: 537
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._ByteStringKt.a(byte[], int):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(char c) {
        if ('0' <= c && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (!('a' <= c && c <= 'f')) {
            c2 = 'A';
            if (!('A' <= c && c <= 'F')) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex digit: ", Character.valueOf(c)));
            }
        }
        return (c - c2) + 10;
    }

    public static final String commonBase64(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return _Base64Kt.encodeBase64$default(byteString.k(), null, 1, null);
    }

    public static final String commonBase64Url(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return _Base64Kt.encodeBase64(byteString.k(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public static final int commonCompareTo(ByteString byteString, ByteString other) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int iF = byteString.F();
        int iF2 = other.F();
        int iMin = Math.min(iF, iF2);
        for (int i = 0; i < iMin; i++) {
            int iJ = byteString.j(i) & 255;
            int iJ2 = other.j(i) & 255;
            if (iJ != iJ2) {
                return iJ < iJ2 ? -1 : 1;
            }
        }
        if (iF == iF2) {
            return 0;
        }
        return iF < iF2 ? -1 : 1;
    }

    public static final void commonCopyInto(ByteString byteString, int i, byte[] target, int i2, int i3) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        ArraysKt___ArraysJvmKt.copyInto(byteString.k(), target, i2, i, i3 + i);
    }

    public static final ByteString commonDecodeBase64(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
        if (bArrDecodeBase64ToArray != null) {
            return new ByteString(bArrDecodeBase64ToArray);
        }
        return null;
    }

    public static final ByteString commonDecodeHex(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int i = 0;
        if (!(str.length() % 2 == 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex string: ", str).toString());
        }
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        int i2 = length - 1;
        if (i2 >= 0) {
            while (true) {
                int i3 = i + 1;
                int i4 = i * 2;
                bArr[i] = (byte) ((b(str.charAt(i4)) << 4) + b(str.charAt(i4 + 1)));
                if (i3 > i2) {
                    break;
                }
                i = i3;
            }
        }
        return new ByteString(bArr);
    }

    public static final ByteString commonEncodeUtf8(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
        byteString.C(str);
        return byteString;
    }

    public static final boolean commonEndsWith(ByteString byteString, ByteString suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.z(byteString.F() - suffix.F(), suffix, 0, suffix.F());
    }

    public static final boolean commonEndsWith(ByteString byteString, byte[] suffix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return byteString.A(byteString.F() - suffix.length, suffix, 0, suffix.length);
    }

    public static final boolean commonEquals(ByteString byteString, Object obj) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        if (obj == byteString) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString2 = (ByteString) obj;
            if (byteString2.F() == byteString.k().length && byteString2.A(0, byteString.k(), 0, byteString.k().length)) {
                return true;
            }
        }
        return false;
    }

    public static final byte commonGetByte(ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.k()[i];
    }

    public static final int commonGetSize(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.k().length;
    }

    public static final int commonHashCode(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int iM = byteString.m();
        if (iM != 0) {
            return iM;
        }
        int iHashCode = Arrays.hashCode(byteString.k());
        byteString.B(iHashCode);
        return iHashCode;
    }

    public static final String commonHex(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        char[] cArr = new char[byteString.k().length * 2];
        byte[] bArrK = byteString.k();
        int length = bArrK.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArrK[i];
            i++;
            int i3 = i2 + 1;
            cArr[i2] = getHEX_DIGIT_CHARS()[(b >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = getHEX_DIGIT_CHARS()[b & Ascii.SI];
        }
        return StringsKt__StringsJVMKt.concatToString(cArr);
    }

    public static final int commonIndexOf(ByteString byteString, byte[] other, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int length = byteString.k().length - other.length;
        int iMax = Math.max(i, 0);
        if (iMax > length) {
            return -1;
        }
        while (true) {
            int i2 = iMax + 1;
            if (_UtilKt.arrayRangeEquals(byteString.k(), iMax, other, 0, other.length)) {
                return iMax;
            }
            if (iMax == length) {
                return -1;
            }
            iMax = i2;
        }
    }

    public static final byte[] commonInternalArray(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return byteString.k();
    }

    public static final int commonLastIndexOf(ByteString byteString, ByteString other, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return byteString.x(other.u(), i);
    }

    public static final int commonLastIndexOf(ByteString byteString, byte[] other, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int iMin = Math.min(_UtilKt.resolveDefaultParameter(byteString, i), byteString.k().length - other.length);
        if (iMin < 0) {
            return -1;
        }
        while (true) {
            int i2 = iMin - 1;
            if (_UtilKt.arrayRangeEquals(byteString.k(), iMin, other, 0, other.length)) {
                return iMin;
            }
            if (i2 < 0) {
                return -1;
            }
            iMin = i2;
        }
    }

    public static final ByteString commonOf(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return new ByteString(bArrCopyOf);
    }

    public static final boolean commonRangeEquals(ByteString byteString, int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return other.A(i2, byteString.k(), i, i3);
    }

    public static final boolean commonRangeEquals(ByteString byteString, int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        return i >= 0 && i <= byteString.k().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _UtilKt.arrayRangeEquals(byteString.k(), i, other, i2, i3);
    }

    public static final boolean commonStartsWith(ByteString byteString, ByteString prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.z(0, prefix, 0, prefix.F());
    }

    public static final boolean commonStartsWith(ByteString byteString, byte[] prefix) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return byteString.A(0, prefix, 0, prefix.length);
    }

    public static final ByteString commonSubstring(ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (iResolveDefaultParameter <= byteString.k().length) {
            if (iResolveDefaultParameter - i >= 0) {
                return (i == 0 && iResolveDefaultParameter == byteString.k().length) ? byteString : new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(byteString.k(), i, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException(("endIndex > length(" + byteString.k().length + ')').toString());
    }

    public static final ByteString commonToAsciiLowercase(ByteString byteString) {
        byte b;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i = 0; i < byteString.k().length; i++) {
            byte b2 = byteString.k()[i];
            byte b3 = (byte) 65;
            if (b2 >= b3 && b2 <= (b = (byte) 90)) {
                byte[] bArrK = byteString.k();
                byte[] bArrCopyOf = Arrays.copyOf(bArrK, bArrK.length);
                Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final ByteString commonToAsciiUppercase(ByteString byteString) {
        byte b;
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        for (int i = 0; i < byteString.k().length; i++) {
            byte b2 = byteString.k()[i];
            byte b3 = (byte) 97;
            if (b2 >= b3 && b2 <= (b = (byte) 122)) {
                byte[] bArrK = byteString.k();
                byte[] bArrCopyOf = Arrays.copyOf(bArrK, bArrK.length);
                Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b2 - 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b4 = bArrCopyOf[i2];
                    if (b4 >= b3 && b4 <= b) {
                        bArrCopyOf[i2] = (byte) (b4 - 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return byteString;
    }

    public static final byte[] commonToByteArray(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        byte[] bArrK = byteString.k();
        byte[] bArrCopyOf = Arrays.copyOf(bArrK, bArrK.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    public static final ByteString commonToByteString(byte[] bArr, int i, int i2) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        _UtilKt.checkOffsetAndCount(bArr.length, i, i2);
        return new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(bArr, i, i2 + i));
    }

    public static final String commonToString(ByteString byteString) {
        ByteString byteString2 = byteString;
        Intrinsics.checkNotNullParameter(byteString2, "<this>");
        if (byteString.k().length == 0) {
            return "[size=0]";
        }
        int iA = a(byteString.k(), 64);
        if (iA != -1) {
            String strK = byteString.K();
            Objects.requireNonNull(strK, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strK.substring(0, iA);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strSubstring, "\\", "\\\\", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null);
            if (iA >= strK.length()) {
                return "[text=" + strReplace$default + ']';
            }
            return "[size=" + byteString.k().length + " text=" + strReplace$default + "…]";
        }
        if (byteString.k().length <= 64) {
            return "[hex=" + byteString.q() + ']';
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[size=");
        sb.append(byteString.k().length);
        sb.append(" hex=");
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(byteString2, 64);
        if (!(iResolveDefaultParameter <= byteString.k().length)) {
            throw new IllegalArgumentException(("endIndex > length(" + byteString.k().length + ')').toString());
        }
        if (!(iResolveDefaultParameter + 0 >= 0)) {
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        if (iResolveDefaultParameter != byteString.k().length) {
            byteString2 = new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(byteString.k(), 0, iResolveDefaultParameter));
        }
        sb.append(byteString2.q());
        sb.append("…]");
        return sb.toString();
    }

    public static final String commonUtf8(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        String strP = byteString.p();
        if (strP != null) {
            return strP;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(byteString.u());
        byteString.C(utf8String);
        return utf8String;
    }

    public static final void commonWrite(ByteString byteString, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        buffer.write(byteString.k(), i, i2);
    }

    public static final char[] getHEX_DIGIT_CHARS() {
        return a;
    }

    public static /* synthetic */ void getHEX_DIGIT_CHARS$annotations() {
    }
}
