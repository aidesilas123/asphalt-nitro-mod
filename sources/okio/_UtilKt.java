package okio;

import com.applovin.exoplayer2.common.base.Ascii;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.Buffer;
import okio.internal._ByteStringKt;

/* JADX INFO: compiled from: -Util.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _UtilKt {
    private static final Buffer.a a = new Buffer.a();
    private static final int b = -1234567890;

    public static final int and(byte b2, int i) {
        return b2 & i;
    }

    public static final long and(byte b2, long j) {
        return ((long) b2) & j;
    }

    public static final long and(int i, long j) {
        return ((long) i) & j;
    }

    public static final boolean arrayRangeEquals(byte[] a2, int i, byte[] b2, int i2, int i3) {
        Intrinsics.checkNotNullParameter(a2, "a");
        Intrinsics.checkNotNullParameter(b2, "b");
        if (i3 <= 0) {
            return true;
        }
        int i4 = 0;
        while (true) {
            int i5 = i4 + 1;
            if (a2[i4 + i] != b2[i4 + i2]) {
                return false;
            }
            if (i5 >= i3) {
                return true;
            }
            i4 = i5;
        }
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return b;
    }

    public static final Buffer.a getDEFAULT__new_UnsafeCursor() {
        return a;
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }

    public static final int leftRotate(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public static final long minOf(int i, long j) {
        return Math.min(i, j);
    }

    public static final long minOf(long j, int i) {
        return Math.min(j, i);
    }

    public static final int resolveDefaultParameter(ByteString byteString, int i) {
        Intrinsics.checkNotNullParameter(byteString, "<this>");
        return i == b ? byteString.F() : i;
    }

    public static final Buffer.a resolveDefaultParameter(Buffer.a unsafeCursor) {
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        return unsafeCursor == a ? new Buffer.a() : unsafeCursor;
    }

    public static final int reverseBytes(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    public static final long reverseBytes(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final short reverseBytes(short s) {
        int i = s & 65535;
        return (short) (((i & 255) << 8) | ((65280 & i) >>> 8));
    }

    public static final long rightRotate(long j, int i) {
        return (j << (64 - i)) | (j >>> i);
    }

    public static final int shl(byte b2, int i) {
        return b2 << i;
    }

    public static final int shr(byte b2, int i) {
        return b2 >> i;
    }

    public static final String toHexString(byte b2) {
        return StringsKt__StringsJVMKt.concatToString(new char[]{_ByteStringKt.getHEX_DIGIT_CHARS()[(b2 >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[b2 & Ascii.SI]});
    }

    public static final String toHexString(int i) {
        if (i == 0) {
            return "0";
        }
        int i2 = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 28) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 24) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 20) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 16) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 12) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 8) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[(i >> 4) & 15], _ByteStringKt.getHEX_DIGIT_CHARS()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return StringsKt__StringsJVMKt.concatToString(cArr, i2, 8);
    }

    public static final String toHexString(long j) {
        if (j == 0) {
            return "0";
        }
        int i = 0;
        char[] cArr = {_ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 60) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 56) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 52) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 48) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 44) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 40) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 36) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 32) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 28) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 24) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 20) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 16) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 12) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 8) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) ((j >> 4) & 15)], _ByteStringKt.getHEX_DIGIT_CHARS()[(int) (j & 15)]};
        while (i < 16 && cArr[i] == '0') {
            i++;
        }
        return StringsKt__StringsJVMKt.concatToString(cArr, i, 16);
    }

    public static final byte xor(byte b2, byte b3) {
        return (byte) (b2 ^ b3);
    }
}
