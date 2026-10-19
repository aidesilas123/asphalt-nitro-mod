package okio;

import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Objects;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import okio.internal._ByteStringKt;

/* JADX INFO: compiled from: ByteString.kt */
/* JADX INFO: loaded from: classes5.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    public static final Companion a = new Companion(null);
    public static final ByteString b = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    private final byte[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient int f10847d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient String f10848e;

    /* JADX INFO: compiled from: ByteString.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i, Object obj) {
            if ((i & 1) != 0) {
                charset = Charsets.b;
            }
            return companion.c(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = bArr.length;
            }
            return companion.g(bArr, i, i2);
        }

        public final ByteString a(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            byte[] bArrDecodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
            if (bArrDecodeBase64ToArray != null) {
                return new ByteString(bArrDecodeBase64ToArray);
            }
            return null;
        }

        public final ByteString b(String str) {
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
                    bArr[i] = (byte) ((_ByteStringKt.b(str.charAt(i4)) << 4) + _ByteStringKt.b(str.charAt(i4 + 1)));
                    if (i3 > i2) {
                        break;
                    }
                    i = i3;
                }
            }
            return new ByteString(bArr);
        }

        public final ByteString c(String str, Charset charset) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        public final ByteString d(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.C(str);
            return byteString;
        }

        public final ByteString e(ByteBuffer byteBuffer) {
            Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        public final ByteString f(byte... data) {
            Intrinsics.checkNotNullParameter(data, "data");
            byte[] bArrCopyOf = Arrays.copyOf(data, data.length);
            Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
            return new ByteString(bArrCopyOf);
        }

        public final ByteString g(byte[] bArr, int i, int i2) {
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            _UtilKt.checkOffsetAndCount(bArr.length, i, i2);
            return new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(bArr, i, i2 + i));
        }

        public final ByteString h(InputStream inputStream, int i) throws IOException {
            Intrinsics.checkNotNullParameter(inputStream, "<this>");
            int i2 = 0;
            if (!(i >= 0)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Integer.valueOf(i)).toString());
            }
            byte[] bArr = new byte[i];
            while (i2 < i) {
                int i3 = inputStream.read(bArr, i2, i - i2);
                if (i3 == -1) {
                    throw new EOFException();
                }
                i2 += i3;
            }
            return new ByteString(bArr);
        }
    }

    public ByteString(byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.c = data;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i, byte[] bArr, int i2, int i3, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i4 & 1) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        byteString.g(i, bArr, i2, i3);
    }

    public static final ByteString decodeBase64(String str) {
        return a.a(str);
    }

    public static final ByteString decodeHex(String str) {
        return a.b(str);
    }

    public static final ByteString encodeString(String str, Charset charset) {
        return a.c(str, charset);
    }

    public static final ByteString encodeUtf8(String str) {
        return a.d(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return byteString.s(byteString2, i);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return byteString.t(bArr, i);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.w(byteString2, i);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
        }
        if ((i2 & 2) != 0) {
            i = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.x(bArr, i);
    }

    public static final ByteString of(ByteBuffer byteBuffer) {
        return a.e(byteBuffer);
    }

    public static final ByteString of(byte... bArr) {
        return a.f(bArr);
    }

    public static final ByteString of(byte[] bArr, int i, int i2) {
        return a.g(bArr, i, i2);
    }

    public static final ByteString read(InputStream inputStream, int i) throws IOException {
        return a.h(inputStream, i);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException {
        ByteString byteStringH = a.h(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("c");
        declaredField.setAccessible(true);
        declaredField.set(this, byteStringH.c);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i, int i2, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = _UtilKt.getDEFAULT__ByteString_size();
        }
        return byteString.H(i, i2);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.c.length);
        objectOutputStream.write(this.c);
    }

    public boolean A(int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        return i >= 0 && i <= k().length - i3 && i2 >= 0 && i2 <= other.length - i3 && _UtilKt.arrayRangeEquals(k(), i, other, i2, i3);
    }

    public final void B(int i) {
        this.f10847d = i;
    }

    public final void C(String str) {
        this.f10848e = str;
    }

    public final ByteString D() {
        return h(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    public final ByteString E() {
        return h("SHA-256");
    }

    public final int F() {
        return n();
    }

    public final boolean G(ByteString prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return z(0, prefix, 0, prefix.F());
    }

    public ByteString H(int i, int i2) {
        int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i2);
        if (!(i >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        if (iResolveDefaultParameter <= k().length) {
            if (iResolveDefaultParameter - i >= 0) {
                return (i == 0 && iResolveDefaultParameter == k().length) ? this : new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(k(), i, iResolveDefaultParameter));
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException(("endIndex > length(" + k().length + ')').toString());
    }

    public ByteString I() {
        byte b2;
        for (int i = 0; i < k().length; i++) {
            byte b3 = k()[i];
            byte b4 = (byte) 65;
            if (b3 >= b4 && b3 <= (b2 = (byte) 90)) {
                byte[] bArrK = k();
                byte[] bArrCopyOf = Arrays.copyOf(bArrK, bArrK.length);
                Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[i] = (byte) (b3 + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b5 = bArrCopyOf[i2];
                    if (b5 >= b4 && b5 <= b2) {
                        bArrCopyOf[i2] = (byte) (b5 + 32);
                    }
                }
                return new ByteString(bArrCopyOf);
            }
        }
        return this;
    }

    public byte[] J() {
        byte[] bArrK = k();
        byte[] bArrCopyOf = Arrays.copyOf(bArrK, bArrK.length);
        Intrinsics.checkNotNullExpressionValue(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
        return bArrCopyOf;
    }

    public String K() {
        String strP = p();
        if (strP != null) {
            return strP;
        }
        String utf8String = _JvmPlatformKt.toUtf8String(u());
        C(utf8String);
        return utf8String;
    }

    public void L(Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        _ByteStringKt.commonWrite(this, buffer, i, i2);
    }

    public String e() {
        return _Base64Kt.encodeBase64$default(k(), null, 1, null);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.F() == k().length && byteString.A(0, k(), 0, k().length)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(okio.ByteString r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            int r0 = r9.F()
            int r1 = r10.F()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2b
            byte r7 = r9.j(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.j(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(okio.ByteString):int");
    }

    public void g(int i, byte[] target, int i2, int i3) {
        Intrinsics.checkNotNullParameter(target, "target");
        ArraysKt___ArraysJvmKt.copyInto(k(), target, i2, i, i3 + i);
    }

    public ByteString h(String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(k(), 0, F());
        byte[] digestBytes = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    public int hashCode() {
        int iM = m();
        if (iM != 0) {
            return iM;
        }
        int iHashCode = Arrays.hashCode(k());
        B(iHashCode);
        return iHashCode;
    }

    public final boolean i(ByteString suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return z(F() - suffix.F(), suffix, 0, suffix.F());
    }

    public final byte j(int i) {
        return v(i);
    }

    public final byte[] k() {
        return this.c;
    }

    public final int m() {
        return this.f10847d;
    }

    public int n() {
        return k().length;
    }

    public final String p() {
        return this.f10848e;
    }

    public String q() {
        char[] cArr = new char[k().length * 2];
        byte[] bArrK = k();
        int length = bArrK.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b2 = bArrK[i];
            i++;
            int i3 = i2 + 1;
            cArr[i2] = _ByteStringKt.getHEX_DIGIT_CHARS()[(b2 >> 4) & 15];
            i2 = i3 + 1;
            cArr[i3] = _ByteStringKt.getHEX_DIGIT_CHARS()[b2 & Ascii.SI];
        }
        return StringsKt__StringsJVMKt.concatToString(cArr);
    }

    public final int s(ByteString other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return t(other.u(), i);
    }

    public int t(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = k().length - other.length;
        int iMax = Math.max(i, 0);
        if (iMax <= length) {
            while (true) {
                int i2 = iMax + 1;
                if (_UtilKt.arrayRangeEquals(k(), iMax, other, 0, other.length)) {
                    return iMax;
                }
                if (iMax == length) {
                    break;
                }
                iMax = i2;
            }
        }
        return -1;
    }

    public String toString() {
        String str;
        if (k().length == 0) {
            str = "[size=0]";
        } else {
            int iA = _ByteStringKt.a(k(), 64);
            if (iA != -1) {
                String strK = K();
                Objects.requireNonNull(strK, "null cannot be cast to non-null type java.lang.String");
                String strSubstring = strK.substring(0, iA);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(strSubstring, "\\", "\\\\", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null);
                if (iA >= strK.length()) {
                    return "[text=" + strReplace$default + ']';
                }
                return "[size=" + k().length + " text=" + strReplace$default + "…]";
            }
            if (k().length > 64) {
                StringBuilder sb = new StringBuilder();
                sb.append("[size=");
                sb.append(k().length);
                sb.append(" hex=");
                int iResolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, 64);
                if (iResolveDefaultParameter <= k().length) {
                    if (!(iResolveDefaultParameter + 0 >= 0)) {
                        throw new IllegalArgumentException("endIndex < beginIndex".toString());
                    }
                    sb.append((iResolveDefaultParameter == k().length ? this : new ByteString(ArraysKt___ArraysJvmKt.copyOfRange(k(), 0, iResolveDefaultParameter))).q());
                    sb.append("…]");
                    return sb.toString();
                }
                throw new IllegalArgumentException(("endIndex > length(" + k().length + ')').toString());
            }
            str = "[hex=" + q() + ']';
        }
        return str;
    }

    public byte[] u() {
        return k();
    }

    public byte v(int i) {
        return k()[i];
    }

    public final int w(ByteString other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return x(other.u(), i);
    }

    public int x(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iMin = Math.min(_UtilKt.resolveDefaultParameter(this, i), k().length - other.length);
        if (iMin >= 0) {
            while (true) {
                int i2 = iMin - 1;
                if (_UtilKt.arrayRangeEquals(k(), iMin, other, 0, other.length)) {
                    return iMin;
                }
                if (i2 < 0) {
                    break;
                }
                iMin = i2;
            }
        }
        return -1;
    }

    public final ByteString y() {
        return h(SameMD5.TAG);
    }

    public boolean z(int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        return other.A(i2, k(), i, i3);
    }
}
