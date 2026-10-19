package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.SegmentPool;
import okio._JvmPlatformKt;
import okio._UtilKt;
import okio.u;
import okio.v;
import okio.w;
import okio.y;

/* JADX INFO: compiled from: -Buffer.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _BufferKt {
    private static final byte[] a = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");

    public static final void commonClear(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        buffer.skip(buffer.I());
    }

    public static final void commonClose(Buffer.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (!(aVar.a != null)) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        aVar.a = null;
        aVar.f(null);
        aVar.f10843d = -1L;
        aVar.f10844e = null;
        aVar.f10845f = -1;
        aVar.f10846g = -1;
    }

    public static final long commonCompleteSegmentByteCount(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long jI = buffer.I();
        if (jI == 0) {
            return 0L;
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        u uVar2 = uVar.h;
        Intrinsics.checkNotNull(uVar2);
        int i = uVar2.f10898d;
        return (i >= 8192 || !uVar2.f10900f) ? jI : jI - ((long) (i - uVar2.c));
    }

    public static final Buffer commonCopy(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        if (buffer.I() == 0) {
            return buffer2;
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        u uVarD = uVar.d();
        buffer2.a = uVarD;
        uVarD.h = uVarD;
        uVarD.f10901g = uVarD;
        for (u uVar2 = uVar.f10901g; uVar2 != uVar; uVar2 = uVar2.f10901g) {
            u uVar3 = uVarD.h;
            Intrinsics.checkNotNull(uVar3);
            Intrinsics.checkNotNull(uVar2);
            uVar3.c(uVar2.d());
        }
        buffer2.x(buffer.I());
        return buffer2;
    }

    public static final Buffer commonCopyTo(Buffer buffer, Buffer out, long j, long j2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(out, "out");
        _UtilKt.checkOffsetAndCount(buffer.I(), j, j2);
        if (j2 == 0) {
            return buffer;
        }
        out.x(out.I() + j2);
        u uVar = buffer.a;
        while (true) {
            Intrinsics.checkNotNull(uVar);
            int i = uVar.f10898d;
            int i2 = uVar.c;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            uVar = uVar.f10901g;
        }
        while (j2 > 0) {
            Intrinsics.checkNotNull(uVar);
            u uVarD = uVar.d();
            int i3 = uVarD.c + ((int) j);
            uVarD.c = i3;
            uVarD.f10898d = Math.min(i3 + ((int) j2), uVarD.f10898d);
            u uVar2 = out.a;
            if (uVar2 == null) {
                uVarD.h = uVarD;
                uVarD.f10901g = uVarD;
                out.a = uVarD;
            } else {
                Intrinsics.checkNotNull(uVar2);
                u uVar3 = uVar2.h;
                Intrinsics.checkNotNull(uVar3);
                uVar3.c(uVarD);
            }
            j2 -= (long) (uVarD.f10898d - uVarD.c);
            uVar = uVar.f10901g;
            j = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(Buffer buffer, Object obj) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer2 = (Buffer) obj;
        if (buffer.I() != buffer2.I()) {
            return false;
        }
        if (buffer.I() == 0) {
            return true;
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        u uVar2 = buffer2.a;
        Intrinsics.checkNotNull(uVar2);
        int i = uVar.c;
        int i2 = uVar2.c;
        long j = 0;
        while (j < buffer.I()) {
            long jMin = Math.min(uVar.f10898d - i, uVar2.f10898d - i2);
            if (0 < jMin) {
                long j2 = 0;
                while (true) {
                    j2++;
                    int i3 = i + 1;
                    int i4 = i2 + 1;
                    if (uVar.b[i] != uVar2.b[i2]) {
                        return false;
                    }
                    if (j2 >= jMin) {
                        i = i3;
                        i2 = i4;
                        break;
                    }
                    i = i3;
                    i2 = i4;
                }
            }
            if (i == uVar.f10898d) {
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                i = uVar.c;
            }
            if (i2 == uVar2.f10898d) {
                uVar2 = uVar2.f10901g;
                Intrinsics.checkNotNull(uVar2);
                i2 = uVar2.c;
            }
            j += jMin;
        }
        return true;
    }

    public static final long commonExpandBuffer(Buffer.a aVar, int i) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (!(i > 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount <= 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i <= 8192)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("minByteCount > Segment.SIZE: ", Integer.valueOf(i)).toString());
        }
        Buffer buffer = aVar.a;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!aVar.b) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
        }
        long jI = buffer.I();
        u uVarL = buffer.L(i);
        int i2 = 8192 - uVarL.f10898d;
        uVarL.f10898d = 8192;
        long j = i2;
        buffer.x(jI + j);
        aVar.f(uVarL);
        aVar.f10843d = jI;
        aVar.f10844e = uVarL.b;
        aVar.f10845f = 8192 - i2;
        aVar.f10846g = 8192;
        return j;
    }

    public static final byte commonGet(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        _UtilKt.checkOffsetAndCount(buffer.I(), j, 1L);
        u uVar = buffer.a;
        if (uVar == null) {
            Intrinsics.checkNotNull(null);
            throw null;
        }
        if (buffer.I() - j < j) {
            long jI = buffer.I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            Intrinsics.checkNotNull(uVar);
            return uVar.b[(int) ((((long) uVar.c) + j) - jI)];
        }
        long j2 = 0;
        while (true) {
            long j3 = ((long) (uVar.f10898d - uVar.c)) + j2;
            if (j3 > j) {
                Intrinsics.checkNotNull(uVar);
                return uVar.b[(int) ((((long) uVar.c) + j) - j2)];
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j2 = j3;
        }
    }

    public static final int commonHashCode(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        u uVar = buffer.a;
        if (uVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = uVar.f10898d;
            for (int i3 = uVar.c; i3 < i2; i3++) {
                i = (i * 31) + uVar.b[i3];
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
        } while (uVar != buffer.a);
        return i;
    }

    public static final long commonIndexOf(Buffer buffer, byte b, long j, long j2) {
        u uVar;
        long j3 = j;
        long jI = j2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        boolean z = false;
        long j4 = 0;
        if (0 <= j3 && j3 <= jI) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("size=" + buffer.I() + " fromIndex=" + j3 + " toIndex=" + jI).toString());
        }
        if (jI > buffer.I()) {
            jI = buffer.I();
        }
        long j5 = jI;
        if (j3 == j5 || (uVar = buffer.a) == null) {
            return -1L;
        }
        if (buffer.I() - j3 < j3) {
            long jI2 = buffer.I();
            while (jI2 > j3) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI2 -= (long) (uVar.f10898d - uVar.c);
            }
            while (jI2 < j5) {
                byte[] bArr = uVar.b;
                int iMin = (int) Math.min(uVar.f10898d, (((long) uVar.c) + j5) - jI2);
                for (int i = (int) ((((long) uVar.c) + j3) - jI2); i < iMin; i++) {
                    if (bArr[i] == b) {
                        return ((long) (i - uVar.c)) + jI2;
                    }
                }
                jI2 += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j3 = jI2;
            }
            return -1L;
        }
        while (true) {
            long j6 = ((long) (uVar.f10898d - uVar.c)) + j4;
            if (j6 > j3) {
                break;
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j4 = j6;
        }
        while (j4 < j5) {
            byte[] bArr2 = uVar.b;
            int iMin2 = (int) Math.min(uVar.f10898d, (((long) uVar.c) + j5) - j4);
            for (int i2 = (int) ((((long) uVar.c) + j3) - j4); i2 < iMin2; i2++) {
                if (bArr2[i2] == b) {
                    return ((long) (i2 - uVar.c)) + j4;
                }
            }
            j4 += (long) (uVar.f10898d - uVar.c);
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j3 = j4;
        }
        return -1L;
    }

    public static final long commonIndexOf(Buffer buffer, ByteString bytes, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(bytes.F() > 0)) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j2 = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        u uVar = buffer.a;
        if (uVar == null) {
            return -1L;
        }
        if (buffer.I() - j < j) {
            long jI = buffer.I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            byte[] bArrU = bytes.u();
            byte b = bArrU[0];
            int iF = bytes.F();
            long jI2 = (buffer.I() - ((long) iF)) + 1;
            long j3 = jI;
            u uVar2 = uVar;
            long j4 = j;
            while (j3 < jI2) {
                byte[] bArr = uVar2.b;
                u uVar3 = uVar2;
                int iMin = (int) Math.min(uVar2.f10898d, (((long) uVar2.c) + jI2) - j3);
                int i = (int) ((((long) uVar3.c) + j4) - j3);
                if (i < iMin) {
                    while (true) {
                        int i2 = i + 1;
                        if (bArr[i] == b && rangeEquals(uVar3, i2, bArrU, 1, iF)) {
                            return ((long) (i - uVar3.c)) + j3;
                        }
                        if (i2 >= iMin) {
                            break;
                        }
                        i = i2;
                    }
                }
                j3 += (long) (uVar3.f10898d - uVar3.c);
                uVar2 = uVar3.f10901g;
                Intrinsics.checkNotNull(uVar2);
                j4 = j3;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (uVar.f10898d - uVar.c)) + j2;
            if (j5 > j) {
                break;
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j2 = j5;
        }
        byte[] bArrU2 = bytes.u();
        byte b2 = bArrU2[0];
        int iF2 = bytes.F();
        long jI3 = (buffer.I() - ((long) iF2)) + 1;
        long j6 = j2;
        u uVar4 = uVar;
        long j7 = j;
        while (j6 < jI3) {
            byte[] bArr2 = uVar4.b;
            long j8 = jI3;
            int iMin2 = (int) Math.min(uVar4.f10898d, (((long) uVar4.c) + jI3) - j6);
            int i3 = (int) ((((long) uVar4.c) + j7) - j6);
            if (i3 < iMin2) {
                while (true) {
                    int i4 = i3 + 1;
                    if (bArr2[i3] == b2 && rangeEquals(uVar4, i4, bArrU2, 1, iF2)) {
                        return ((long) (i3 - uVar4.c)) + j6;
                    }
                    if (i4 >= iMin2) {
                        break;
                    }
                    i3 = i4;
                }
            }
            j6 += (long) (uVar4.f10898d - uVar4.c);
            uVar4 = uVar4.f10901g;
            Intrinsics.checkNotNull(uVar4);
            jI3 = j8;
            j7 = j6;
        }
        return -1L;
    }

    public static final long commonIndexOfElement(Buffer buffer, ByteString targetBytes, long j) {
        int i;
        int i2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        long jI = 0;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("fromIndex < 0: ", Long.valueOf(j)).toString());
        }
        u uVar = buffer.a;
        if (uVar == null) {
            return -1L;
        }
        if (buffer.I() - j < j) {
            jI = buffer.I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            if (targetBytes.F() == 2) {
                byte bJ = targetBytes.j(0);
                byte bJ2 = targetBytes.j(1);
                while (jI < buffer.I()) {
                    byte[] bArr = uVar.b;
                    i = (int) ((((long) uVar.c) + j) - jI);
                    int i3 = uVar.f10898d;
                    while (i < i3) {
                        byte b = bArr[i];
                        if (b == bJ || b == bJ2) {
                            i2 = uVar.c;
                        } else {
                            i++;
                        }
                    }
                    jI += (long) (uVar.f10898d - uVar.c);
                    uVar = uVar.f10901g;
                    Intrinsics.checkNotNull(uVar);
                    j = jI;
                }
            } else {
                byte[] bArrU = targetBytes.u();
                while (jI < buffer.I()) {
                    byte[] bArr2 = uVar.b;
                    i = (int) ((((long) uVar.c) + j) - jI);
                    int i4 = uVar.f10898d;
                    while (i < i4) {
                        byte b2 = bArr2[i];
                        int length = bArrU.length;
                        int i5 = 0;
                        while (i5 < length) {
                            byte b3 = bArrU[i5];
                            i5++;
                            if (b2 == b3) {
                                i2 = uVar.c;
                            }
                        }
                        i++;
                    }
                    jI += (long) (uVar.f10898d - uVar.c);
                    uVar = uVar.f10901g;
                    Intrinsics.checkNotNull(uVar);
                    j = jI;
                }
            }
            return -1L;
        }
        while (true) {
            long j2 = ((long) (uVar.f10898d - uVar.c)) + jI;
            if (j2 > j) {
                break;
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            jI = j2;
        }
        if (targetBytes.F() == 2) {
            byte bJ3 = targetBytes.j(0);
            byte bJ4 = targetBytes.j(1);
            while (jI < buffer.I()) {
                byte[] bArr3 = uVar.b;
                i = (int) ((((long) uVar.c) + j) - jI);
                int i6 = uVar.f10898d;
                while (i < i6) {
                    byte b4 = bArr3[i];
                    if (b4 == bJ3 || b4 == bJ4) {
                        i2 = uVar.c;
                    } else {
                        i++;
                    }
                }
                jI += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j = jI;
            }
        } else {
            byte[] bArrU2 = targetBytes.u();
            while (jI < buffer.I()) {
                byte[] bArr4 = uVar.b;
                i = (int) ((((long) uVar.c) + j) - jI);
                int i7 = uVar.f10898d;
                while (i < i7) {
                    byte b5 = bArr4[i];
                    int length2 = bArrU2.length;
                    int i8 = 0;
                    while (i8 < length2) {
                        byte b6 = bArrU2[i8];
                        i8++;
                        if (b5 == b6) {
                            i2 = uVar.c;
                        }
                    }
                    i++;
                }
                jI += (long) (uVar.f10898d - uVar.c);
                uVar = uVar.f10901g;
                Intrinsics.checkNotNull(uVar);
                j = jI;
            }
        }
        return -1L;
        return ((long) (i - i2)) + jI;
    }

    public static final int commonNext(Buffer.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        long j = aVar.f10843d;
        Buffer buffer = aVar.a;
        Intrinsics.checkNotNull(buffer);
        if (!(j != buffer.I())) {
            throw new IllegalStateException("no more bytes".toString());
        }
        long j2 = aVar.f10843d;
        return aVar.e(j2 == -1 ? 0L : j2 + ((long) (aVar.f10846g - aVar.f10845f)));
    }

    public static final boolean commonRangeEquals(Buffer buffer, long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j < 0 || i < 0 || i2 < 0 || buffer.I() - j < i2 || bytes.F() - i < i2) {
            return false;
        }
        if (i2 <= 0) {
            return true;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (buffer.m(((long) i3) + j) != bytes.j(i3 + i)) {
                return false;
            }
            if (i4 >= i2) {
                return true;
            }
            i3 = i4;
        }
    }

    public static final int commonRead(Buffer buffer, byte[] sink) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    public static final int commonRead(Buffer buffer, byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i, i2);
        u uVar = buffer.a;
        if (uVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, uVar.f10898d - uVar.c);
        byte[] bArr = uVar.b;
        int i3 = uVar.c;
        ArraysKt___ArraysJvmKt.copyInto(bArr, sink, i, i3, i3 + iMin);
        uVar.c += iMin;
        buffer.x(buffer.I() - ((long) iMin));
        if (uVar.c == uVar.f10898d) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return iMin;
    }

    public static final long commonRead(Buffer buffer, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (buffer.I() == 0) {
            return -1L;
        }
        if (j > buffer.I()) {
            j = buffer.I();
        }
        sink.n(buffer, j);
        return j;
    }

    public static final long commonReadAll(Buffer buffer, w sink) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long jI = buffer.I();
        if (jI > 0) {
            sink.n(buffer, jI);
        }
        return jI;
    }

    public static final Buffer.a commonReadAndWriteUnsafe(Buffer buffer, Buffer.a unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.a aVarResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (!(aVarResolveDefaultParameter.a == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        aVarResolveDefaultParameter.a = buffer;
        aVarResolveDefaultParameter.b = true;
        return aVarResolveDefaultParameter;
    }

    public static final byte commonReadByte(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() == 0) {
            throw new EOFException();
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        int i3 = i + 1;
        byte b = uVar.b[i];
        buffer.x(buffer.I() - 1);
        if (i3 == i2) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i3;
        }
        return b;
    }

    public static final byte[] commonReadByteArray(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteArray(buffer.I());
    }

    public static final byte[] commonReadByteArray(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.I() < j) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j];
        buffer.readFully(bArr);
        return bArr;
    }

    public static final ByteString commonReadByteString(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        return buffer.readByteString(buffer.I());
    }

    public static final ByteString commonReadByteString(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.I() < j) {
            throw new EOFException();
        }
        if (j < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(buffer.readByteArray(j));
        }
        ByteString byteStringK = buffer.K((int) j);
        buffer.skip(j);
        return byteStringK;
    }

    public static final long commonReadDecimalLong(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() == 0) {
            throw new EOFException();
        }
        long j = -7;
        int i = 0;
        long j2 = 0;
        boolean z = false;
        boolean z2 = false;
        do {
            u uVar = buffer.a;
            Intrinsics.checkNotNull(uVar);
            byte[] bArr = uVar.b;
            int i2 = uVar.c;
            int i3 = uVar.f10898d;
            while (i2 < i3) {
                byte b = bArr[i2];
                byte b2 = (byte) 48;
                if (b >= b2 && b <= ((byte) 57)) {
                    int i4 = b2 - b;
                    if (j2 < -922337203685477580L || (j2 == -922337203685477580L && i4 < j)) {
                        Buffer bufferU = new Buffer().writeDecimalLong(j2).writeByte(b);
                        if (!z) {
                            bufferU.readByte();
                        }
                        throw new NumberFormatException(Intrinsics.stringPlus("Number too large: ", bufferU.readUtf8()));
                    }
                    j2 = (j2 * 10) + ((long) i4);
                } else {
                    if (b != ((byte) 45) || i != 0) {
                        z2 = true;
                        break;
                    }
                    j--;
                    z = true;
                }
                i2++;
                i++;
            }
            if (i2 == i3) {
                buffer.a = uVar.b();
                SegmentPool.recycle(uVar);
            } else {
                uVar.c = i2;
            }
            if (z2) {
                break;
            }
        } while (buffer.a != null);
        buffer.x(buffer.I() - ((long) i));
        if (i >= (z ? 2 : 1)) {
            return z ? j2 : -j2;
        }
        if (buffer.I() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(buffer.m(0L)));
    }

    public static final void commonReadFully(Buffer buffer, Buffer sink, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (buffer.I() >= j) {
            sink.n(buffer, j);
        } else {
            sink.n(buffer, buffer.I());
            throw new EOFException();
        }
    }

    public static final void commonReadFully(Buffer buffer, byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = 0;
        while (i < sink.length) {
            int i2 = buffer.read(sink, i, sink.length - i);
            if (i2 == -1) {
                throw new EOFException();
            }
            i += i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009d A[EDGE_INSN: B:43:0x009d->B:37:0x009d BREAK  A[LOOP:0: B:5:0x0012->B:45:?], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final long commonReadHexadecimalUnsignedLong(okio.Buffer r15) throws java.io.EOFException {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            long r0 = r15.I()
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto La7
            r0 = 0
            r4 = r2
            r1 = 0
        L12:
            okio.u r6 = r15.a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            byte[] r7 = r6.b
            int r8 = r6.c
            int r9 = r6.f10898d
        L1d:
            if (r8 >= r9) goto L89
            r10 = r7[r8]
            r11 = 48
            byte r11 = (byte) r11
            if (r10 < r11) goto L2e
            r12 = 57
            byte r12 = (byte) r12
            if (r10 > r12) goto L2e
            int r11 = r10 - r11
            goto L48
        L2e:
            r11 = 97
            byte r11 = (byte) r11
            if (r10 < r11) goto L3d
            r12 = 102(0x66, float:1.43E-43)
            byte r12 = (byte) r12
            if (r10 > r12) goto L3d
        L38:
            int r11 = r10 - r11
            int r11 = r11 + 10
            goto L48
        L3d:
            r11 = 65
            byte r11 = (byte) r11
            if (r10 < r11) goto L75
            r12 = 70
            byte r12 = (byte) r12
            if (r10 > r12) goto L75
            goto L38
        L48:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L58
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r0 = r0 + 1
            goto L1d
        L58:
            okio.Buffer r15 = new okio.Buffer
            r15.<init>()
            okio.Buffer r15 = r15.writeHexadecimalUnsignedLong(r4)
            okio.Buffer r15 = r15.writeByte(r10)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.readUtf8()
            java.lang.String r1 = "Number too large: "
            java.lang.String r15 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r15)
            r0.<init>(r15)
            throw r0
        L75:
            if (r0 == 0) goto L79
            r1 = 1
            goto L89
        L79:
            java.lang.NumberFormatException r15 = new java.lang.NumberFormatException
            java.lang.String r0 = okio._UtilKt.toHexString(r10)
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r0 = kotlin.jvm.internal.Intrinsics.stringPlus(r1, r0)
            r15.<init>(r0)
            throw r15
        L89:
            if (r8 != r9) goto L95
            okio.u r7 = r6.b()
            r15.a = r7
            okio.SegmentPool.recycle(r6)
            goto L97
        L95:
            r6.c = r8
        L97:
            if (r1 != 0) goto L9d
            okio.u r6 = r15.a
            if (r6 != 0) goto L12
        L9d:
            long r1 = r15.I()
            long r6 = (long) r0
            long r1 = r1 - r6
            r15.x(r1)
            return r4
        La7:
            java.io.EOFException r15 = new java.io.EOFException
            r15.<init>()
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.commonReadHexadecimalUnsignedLong(okio.Buffer):long");
    }

    public static final int commonReadInt(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() < 4) {
            throw new EOFException();
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 24) | ((bArr[i3] & 255) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & 255);
        buffer.x(buffer.I() - 4);
        if (i8 == i2) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i8;
        }
        return i9;
    }

    public static final long commonReadLong(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() < 8) {
            throw new EOFException();
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 8) {
            return ((((long) buffer.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) buffer.readInt()));
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        long j = (((long) bArr[i]) & 255) << 56;
        int i4 = i3 + 1;
        long j2 = j | ((((long) bArr[i3]) & 255) << 48);
        int i5 = i4 + 1;
        long j3 = j2 | ((((long) bArr[i4]) & 255) << 40);
        int i6 = i5 + 1;
        long j4 = ((((long) bArr[i5]) & 255) << 32) | j3;
        int i7 = i6 + 1;
        long j5 = j4 | ((((long) bArr[i6]) & 255) << 24);
        int i8 = i7 + 1;
        long j6 = j5 | ((((long) bArr[i7]) & 255) << 16);
        int i9 = i8 + 1;
        long j7 = j6 | ((((long) bArr[i8]) & 255) << 8);
        int i10 = i9 + 1;
        long j8 = j7 | (((long) bArr[i9]) & 255);
        buffer.x(buffer.I() - 8);
        if (i10 == i2) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i10;
        }
        return j8;
    }

    public static final short commonReadShort(Buffer buffer) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() < 2) {
            throw new EOFException();
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        int i2 = uVar.f10898d;
        if (i2 - i < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = uVar.b;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & 255) << 8) | (bArr[i3] & 255);
        buffer.x(buffer.I() - 2);
        if (i4 == i2) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        } else {
            uVar.c = i4;
        }
        return (short) i5;
    }

    public static final Buffer.a commonReadUnsafe(Buffer buffer, Buffer.a unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.a aVarResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (!(aVarResolveDefaultParameter.a == null)) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        aVarResolveDefaultParameter.a = buffer;
        aVarResolveDefaultParameter.b = false;
        return aVarResolveDefaultParameter;
    }

    public static final String commonReadUtf8(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (!(j >= 0 && j <= 2147483647L)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount: ", Long.valueOf(j)).toString());
        }
        if (buffer.I() < j) {
            throw new EOFException();
        }
        if (j == 0) {
            return "";
        }
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.c;
        if (((long) i) + j > uVar.f10898d) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j), 0, 0, 3, null);
        }
        int i2 = (int) j;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(uVar.b, i, i + i2);
        uVar.c += i2;
        buffer.x(buffer.I() - j);
        if (uVar.c == uVar.f10898d) {
            buffer.a = uVar.b();
            SegmentPool.recycle(uVar);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(Buffer buffer) throws EOFException {
        int i;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() == 0) {
            throw new EOFException();
        }
        byte bM = buffer.m(0L);
        boolean z = false;
        if ((bM & 128) == 0) {
            i = bM & Ascii.DEL;
            i2 = 1;
            i3 = 0;
        } else if ((bM & 224) == 192) {
            i = bM & Ascii.US;
            i2 = 2;
            i3 = 128;
        } else if ((bM & 240) == 224) {
            i = bM & Ascii.SI;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((bM & 248) != 240) {
                buffer.skip(1L);
                return 65533;
            }
            i = bM & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (buffer.I() < j) {
            throw new EOFException("size < " + i2 + ": " + buffer.I() + " (to read code point prefixed 0x" + _UtilKt.toHexString(bM) + ')');
        }
        if (1 < i2) {
            int i4 = 1;
            while (true) {
                int i5 = i4 + 1;
                long j2 = i4;
                byte bM2 = buffer.m(j2);
                if ((bM2 & 192) != 128) {
                    buffer.skip(j2);
                    return 65533;
                }
                i = (i << 6) | (bM2 & 63);
                if (i5 >= i2) {
                    break;
                }
                i4 = i5;
            }
        }
        buffer.skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if (55296 <= i && i <= 57343) {
            z = true;
        }
        if (!z && i >= i3) {
            return i;
        }
        return 65533;
    }

    public static final String commonReadUtf8Line(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.I() != 0) {
            return buffer.readUtf8(buffer.I());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        byte b = (byte) 10;
        long jIndexOf = buffer.indexOf(b, 0L, j2);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j2 < buffer.I() && buffer.m(j2 - 1) == ((byte) 13) && buffer.m(j2) == b) {
            return readUtf8Line(buffer, j2);
        }
        Buffer buffer2 = new Buffer();
        buffer.j(buffer2, 0L, Math.min(32, buffer.I()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.I(), j) + " content=" + buffer2.readByteString().q() + (char) 8230);
    }

    public static final long commonResizeBuffer(Buffer.a aVar, long j) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Buffer buffer = aVar.a;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!aVar.b) {
            throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
        }
        long jI = buffer.I();
        int i = 1;
        if (j <= jI) {
            if (!(j >= 0)) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("newSize < 0: ", Long.valueOf(j)).toString());
            }
            long j2 = jI - j;
            while (true) {
                if (j2 <= 0) {
                    break;
                }
                u uVar = buffer.a;
                Intrinsics.checkNotNull(uVar);
                u uVar2 = uVar.h;
                Intrinsics.checkNotNull(uVar2);
                int i2 = uVar2.f10898d;
                long j3 = i2 - uVar2.c;
                if (j3 > j2) {
                    uVar2.f10898d = i2 - ((int) j2);
                    break;
                }
                buffer.a = uVar2.b();
                SegmentPool.recycle(uVar2);
                j2 -= j3;
            }
            aVar.f(null);
            aVar.f10843d = j;
            aVar.f10844e = null;
            aVar.f10845f = -1;
            aVar.f10846g = -1;
        } else if (j > jI) {
            long j4 = j - jI;
            boolean z = true;
            while (j4 > 0) {
                u uVarL = buffer.L(i);
                int iMin = (int) Math.min(j4, 8192 - uVarL.f10898d);
                uVarL.f10898d += iMin;
                j4 -= (long) iMin;
                if (z) {
                    aVar.f(uVarL);
                    aVar.f10843d = jI;
                    aVar.f10844e = uVarL.b;
                    int i3 = uVarL.f10898d;
                    aVar.f10845f = i3 - iMin;
                    aVar.f10846g = i3;
                    i = 1;
                    z = false;
                } else {
                    i = 1;
                }
            }
        }
        buffer.x(j);
        return jI;
    }

    public static final int commonSeek(Buffer.a aVar, long j) {
        u uVarC;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Buffer buffer = aVar.a;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (j < -1 || j > buffer.I()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j + " > size=" + buffer.I());
        }
        if (j == -1 || j == buffer.I()) {
            aVar.f(null);
            aVar.f10843d = j;
            aVar.f10844e = null;
            aVar.f10845f = -1;
            aVar.f10846g = -1;
            return -1;
        }
        long j2 = 0;
        long jI = buffer.I();
        u uVarD = buffer.a;
        if (aVar.d() != null) {
            long j3 = aVar.f10843d;
            int i = aVar.f10845f;
            u uVarD2 = aVar.d();
            Intrinsics.checkNotNull(uVarD2);
            long j4 = j3 - ((long) (i - uVarD2.c));
            if (j4 > j) {
                uVarD = aVar.d();
                jI = j4;
                uVarC = uVarD;
            } else {
                uVarC = aVar.d();
                j2 = j4;
            }
        } else {
            uVarC = uVarD;
        }
        if (jI - j > j - j2) {
            while (true) {
                Intrinsics.checkNotNull(uVarC);
                int i2 = uVarC.f10898d;
                int i3 = uVarC.c;
                if (j < ((long) (i2 - i3)) + j2) {
                    break;
                }
                j2 += (long) (i2 - i3);
                uVarC = uVarC.f10901g;
            }
        } else {
            while (jI > j) {
                Intrinsics.checkNotNull(uVarD);
                uVarD = uVarD.h;
                Intrinsics.checkNotNull(uVarD);
                jI -= (long) (uVarD.f10898d - uVarD.c);
            }
            j2 = jI;
            uVarC = uVarD;
        }
        if (aVar.b) {
            Intrinsics.checkNotNull(uVarC);
            if (uVarC.f10899e) {
                u uVarF = uVarC.f();
                if (buffer.a == uVarC) {
                    buffer.a = uVarF;
                }
                uVarC = uVarC.c(uVarF);
                u uVar = uVarC.h;
                Intrinsics.checkNotNull(uVar);
                uVar.b();
            }
        }
        aVar.f(uVarC);
        aVar.f10843d = j;
        Intrinsics.checkNotNull(uVarC);
        aVar.f10844e = uVarC.b;
        int i4 = uVarC.c + ((int) (j - j2));
        aVar.f10845f = i4;
        int i5 = uVarC.f10898d;
        aVar.f10846g = i5;
        return i5 - i4;
    }

    public static final int commonSelect(Buffer buffer, Options options) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.i()[iSelectPrefix$default].F());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        while (j > 0) {
            u uVar = buffer.a;
            if (uVar == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            long j2 = iMin;
            buffer.x(buffer.I() - j2);
            j -= j2;
            int i = uVar.c + iMin;
            uVar.c = i;
            if (i == uVar.f10898d) {
                buffer.a = uVar.b();
                SegmentPool.recycle(uVar);
            }
        }
    }

    public static final ByteString commonSnapshot(Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (buffer.I() <= 2147483647L) {
            return buffer.K((int) buffer.I());
        }
        throw new IllegalStateException(Intrinsics.stringPlus("size > Int.MAX_VALUE: ", Long.valueOf(buffer.I())).toString());
    }

    public static final ByteString commonSnapshot(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i == 0) {
            return ByteString.b;
        }
        _UtilKt.checkOffsetAndCount(buffer.I(), 0L, i);
        u uVar = buffer.a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Intrinsics.checkNotNull(uVar);
            int i5 = uVar.f10898d;
            int i6 = uVar.c;
            if (i5 == i6) {
                throw new AssertionError("s.limit == s.pos");
            }
            i3 += i5 - i6;
            i4++;
            uVar = uVar.f10901g;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        u uVar2 = buffer.a;
        int i7 = 0;
        while (i2 < i) {
            Intrinsics.checkNotNull(uVar2);
            bArr[i7] = uVar2.b;
            i2 += uVar2.f10898d - uVar2.c;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = uVar2.c;
            uVar2.f10899e = true;
            i7++;
            uVar2 = uVar2.f10901g;
        }
        return new v(bArr, iArr);
    }

    public static final u commonWritableSegment(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (!(i >= 1 && i <= 8192)) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        u uVar = buffer.a;
        if (uVar != null) {
            Intrinsics.checkNotNull(uVar);
            u uVar2 = uVar.h;
            Intrinsics.checkNotNull(uVar2);
            return (uVar2.f10898d + i > 8192 || !uVar2.f10900f) ? uVar2.c(SegmentPool.take()) : uVar2;
        }
        u uVarTake = SegmentPool.take();
        buffer.a = uVarTake;
        uVarTake.h = uVarTake;
        uVarTake.f10901g = uVarTake;
        return uVarTake;
    }

    public static final Buffer commonWrite(Buffer buffer, ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.L(buffer, i, i2);
        return buffer;
    }

    public static final Buffer commonWrite(Buffer buffer, y source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j > 0) {
            long j2 = source.read(buffer, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
        }
        return buffer;
    }

    public static final Buffer commonWrite(Buffer buffer, byte[] source) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        return buffer.write(source, 0, source.length);
    }

    public static final Buffer commonWrite(Buffer buffer, byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j = i2;
        _UtilKt.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            u uVarL = buffer.L(1);
            int iMin = Math.min(i3 - i, 8192 - uVarL.f10898d);
            int i4 = i + iMin;
            ArraysKt___ArraysJvmKt.copyInto(source, uVarL.b, uVarL.f10898d, i, i4);
            uVarL.f10898d += iMin;
            i = i4;
        }
        buffer.x(buffer.I() + j);
        return buffer;
    }

    public static final void commonWrite(Buffer buffer, Buffer source, long j) {
        u uVar;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(source != buffer)) {
            throw new IllegalArgumentException("source == this".toString());
        }
        _UtilKt.checkOffsetAndCount(source.I(), 0L, j);
        while (j > 0) {
            u uVar2 = source.a;
            Intrinsics.checkNotNull(uVar2);
            int i = uVar2.f10898d;
            Intrinsics.checkNotNull(source.a);
            if (j < i - r2.c) {
                u uVar3 = buffer.a;
                if (uVar3 != null) {
                    Intrinsics.checkNotNull(uVar3);
                    uVar = uVar3.h;
                } else {
                    uVar = null;
                }
                if (uVar != null && uVar.f10900f) {
                    if ((((long) uVar.f10898d) + j) - ((long) (uVar.f10899e ? 0 : uVar.c)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        u uVar4 = source.a;
                        Intrinsics.checkNotNull(uVar4);
                        uVar4.g(uVar, (int) j);
                        source.x(source.I() - j);
                        buffer.x(buffer.I() + j);
                        return;
                    }
                }
                u uVar5 = source.a;
                Intrinsics.checkNotNull(uVar5);
                source.a = uVar5.e((int) j);
            }
            u uVar6 = source.a;
            Intrinsics.checkNotNull(uVar6);
            long j2 = uVar6.f10898d - uVar6.c;
            source.a = uVar6.b();
            u uVar7 = buffer.a;
            if (uVar7 == null) {
                buffer.a = uVar6;
                uVar6.h = uVar6;
                uVar6.f10901g = uVar6;
            } else {
                Intrinsics.checkNotNull(uVar7);
                u uVar8 = uVar7.h;
                Intrinsics.checkNotNull(uVar8);
                uVar8.c(uVar6).a();
            }
            source.x(source.I() - j2);
            buffer.x(buffer.I() + j2);
            j -= j2;
        }
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer buffer, ByteString byteString, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = byteString.F();
        }
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.L(buffer, i, i2);
        return buffer;
    }

    public static final long commonWriteAll(Buffer buffer, y source) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
        }
    }

    public static final Buffer commonWriteByte(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        u uVarL = buffer.L(1);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        uVarL.f10898d = i2 + 1;
        bArr[i2] = (byte) i;
        buffer.x(buffer.I() + 1);
        return buffer;
    }

    public static final Buffer commonWriteDecimalLong(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j == 0) {
            return buffer.writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return buffer.writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < C.NANOS_PER_SECOND ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        u uVarL = buffer.L(i);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d + i;
        while (j != 0) {
            long j2 = 10;
            i2--;
            bArr[i2] = getHEX_DIGIT_BYTES()[(int) (j % j2)];
            j /= j2;
        }
        if (z) {
            bArr[i2 - 1] = (byte) 45;
        }
        uVarL.f10898d += i;
        buffer.x(buffer.I() + ((long) i));
        return buffer;
    }

    public static final Buffer commonWriteHexadecimalUnsignedLong(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j == 0) {
            return buffer.writeByte(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        u uVarL = buffer.L(i);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = getHEX_DIGIT_BYTES()[(int) (15 & j)];
            j >>>= 4;
        }
        uVarL.f10898d += i;
        buffer.x(buffer.I() + ((long) i));
        return buffer;
    }

    public static final Buffer commonWriteInt(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        u uVarL = buffer.L(4);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        uVarL.f10898d = i5 + 1;
        buffer.x(buffer.I() + 4);
        return buffer;
    }

    public static final Buffer commonWriteLong(Buffer buffer, long j) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        u uVarL = buffer.L(8);
        byte[] bArr = uVarL.b;
        int i = uVarL.f10898d;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        uVarL.f10898d = i8 + 1;
        buffer.x(buffer.I() + 8);
        return buffer;
    }

    public static final Buffer commonWriteShort(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        u uVarL = buffer.L(2);
        byte[] bArr = uVarL.b;
        int i2 = uVarL.f10898d;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        uVarL.f10898d = i3 + 1;
        buffer.x(buffer.I() + 2);
        return buffer;
    }

    public static final Buffer commonWriteUtf8(Buffer buffer, String string, int i, int i2) {
        char cCharAt;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("beginIndex < 0: ", Integer.valueOf(i)).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        while (i < i2) {
            char cCharAt2 = string.charAt(i);
            if (cCharAt2 < 128) {
                u uVarL = buffer.L(1);
                byte[] bArr = uVarL.b;
                int i3 = uVarL.f10898d - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = string.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = uVarL.f10898d;
                int i6 = (i3 + i) - i5;
                uVarL.f10898d = i5 + i6;
                buffer.x(buffer.I() + ((long) i6));
            } else {
                if (cCharAt2 < 2048) {
                    u uVarL2 = buffer.L(2);
                    byte[] bArr2 = uVarL2.b;
                    int i7 = uVarL2.f10898d;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    uVarL2.f10898d = i7 + 2;
                    buffer.x(buffer.I() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    u uVarL3 = buffer.L(3);
                    byte[] bArr3 = uVarL3.b;
                    int i8 = uVarL3.f10898d;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    uVarL3.f10898d = i8 + 3;
                    buffer.x(buffer.I() + 3);
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? string.charAt(i9) : (char) 0;
                    if (cCharAt2 <= 56319) {
                        if (56320 <= cCharAt3 && cCharAt3 <= 57343) {
                            int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            u uVarL4 = buffer.L(4);
                            byte[] bArr4 = uVarL4.b;
                            int i11 = uVarL4.f10898d;
                            bArr4[i11] = (byte) ((i10 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                            bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                            bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                            bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                            uVarL4.f10898d = i11 + 4;
                            buffer.x(buffer.I() + 4);
                            i += 2;
                        }
                    }
                    buffer.writeByte(63);
                    i = i9;
                }
                i++;
            }
        }
        return buffer;
    }

    public static final Buffer commonWriteUtf8CodePoint(Buffer buffer, int i) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (i < 128) {
            buffer.writeByte(i);
        } else if (i < 2048) {
            u uVarL = buffer.L(2);
            byte[] bArr = uVarL.b;
            int i2 = uVarL.f10898d;
            bArr[i2] = (byte) ((i >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            uVarL.f10898d = i2 + 2;
            buffer.x(buffer.I() + 2);
        } else {
            boolean z = false;
            if (55296 <= i && i <= 57343) {
                z = true;
            }
            if (z) {
                buffer.writeByte(63);
            } else if (i < 65536) {
                u uVarL2 = buffer.L(3);
                byte[] bArr2 = uVarL2.b;
                int i3 = uVarL2.f10898d;
                bArr2[i3] = (byte) ((i >> 12) | 224);
                bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
                bArr2[i3 + 2] = (byte) ((i & 63) | 128);
                uVarL2.f10898d = i3 + 3;
                buffer.x(buffer.I() + 3);
            } else {
                if (i > 1114111) {
                    throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected code point: 0x", _UtilKt.toHexString(i)));
                }
                u uVarL3 = buffer.L(4);
                byte[] bArr3 = uVarL3.b;
                int i4 = uVarL3.f10898d;
                bArr3[i4] = (byte) ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
                bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
                bArr3[i4 + 3] = (byte) ((i & 63) | 128);
                uVarL3.f10898d = i4 + 4;
                buffer.x(buffer.I() + 4);
            }
        }
        return buffer;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return a;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final boolean rangeEquals(u segment, int i, byte[] bytes, int i2, int i3) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i4 = segment.f10898d;
        byte[] bArr = segment.b;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.f10901g;
                Intrinsics.checkNotNull(segment);
                byte[] bArr2 = segment.b;
                bArr = bArr2;
                i = segment.c;
                i4 = segment.f10898d;
            }
            if (bArr[i] != bytes[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String readUtf8Line(Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.m(j2) == ((byte) 13)) {
                String utf8 = buffer.readUtf8(j2);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf82 = buffer.readUtf8(j);
        buffer.skip(1L);
        return utf82;
    }

    public static final <T> T seek(Buffer buffer, long j, Function2<? super u, ? super Long, ? extends T> lambda) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(lambda, "lambda");
        u uVar = buffer.a;
        if (uVar == null) {
            return lambda.invoke(null, -1L);
        }
        if (buffer.I() - j < j) {
            long jI = buffer.I();
            while (jI > j) {
                uVar = uVar.h;
                Intrinsics.checkNotNull(uVar);
                jI -= (long) (uVar.f10898d - uVar.c);
            }
            return lambda.invoke(uVar, Long.valueOf(jI));
        }
        long j2 = 0;
        while (true) {
            long j3 = ((long) (uVar.f10898d - uVar.c)) + j2;
            if (j3 > j) {
                return lambda.invoke(uVar, Long.valueOf(j2));
            }
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j2 = j3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final int selectPrefix(okio.Buffer r17, okio.Options r18, boolean r19) {
        /*
            r0 = r17
            java.lang.String r1 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            java.lang.String r1 = "options"
            r2 = r18
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r1)
            okio.u r0 = r0.a
            r1 = -2
            r3 = -1
            if (r0 != 0) goto L19
            if (r19 == 0) goto L17
            goto L18
        L17:
            r1 = -1
        L18:
            return r1
        L19:
            byte[] r4 = r0.b
            int r5 = r0.c
            int r6 = r0.f10898d
            int[] r2 = r18.j()
            r7 = 0
            r9 = r0
            r8 = 0
            r10 = -1
        L27:
            int r11 = r8 + 1
            r8 = r2[r8]
            int r12 = r11 + 1
            r11 = r2[r11]
            if (r11 == r3) goto L32
            r10 = r11
        L32:
            if (r9 != 0) goto L35
            goto L62
        L35:
            r11 = 0
            if (r8 >= 0) goto L82
            int r8 = r8 * (-1)
            int r13 = r12 + r8
        L3c:
            int r8 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r14 = r12 + 1
            r12 = r2[r12]
            if (r5 == r12) goto L49
            return r10
        L49:
            if (r14 != r13) goto L4d
            r5 = 1
            goto L4e
        L4d:
            r5 = 0
        L4e:
            if (r8 != r6) goto L6f
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            okio.u r4 = r9.f10901g
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r6 = r4.c
            byte[] r8 = r4.b
            int r9 = r4.f10898d
            if (r4 != r0) goto L69
            if (r5 != 0) goto L66
        L62:
            if (r19 == 0) goto L65
            return r1
        L65:
            return r10
        L66:
            r4 = r8
            r8 = r11
            goto L75
        L69:
            r16 = r8
            r8 = r4
            r4 = r16
            goto L75
        L6f:
            r16 = r9
            r9 = r6
            r6 = r8
            r8 = r16
        L75:
            if (r5 == 0) goto L7d
            r5 = r2[r14]
            r13 = r6
            r6 = r9
            r9 = r8
            goto La7
        L7d:
            r5 = r6
            r6 = r9
            r12 = r14
            r9 = r8
            goto L3c
        L82:
            int r13 = r5 + 1
            r5 = r4[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r14 = r12 + r8
        L8a:
            if (r12 != r14) goto L8d
            return r10
        L8d:
            r15 = r2[r12]
            if (r5 != r15) goto Lae
            int r12 = r12 + r8
            r5 = r2[r12]
            if (r13 != r6) goto La7
            okio.u r9 = r9.f10901g
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            int r4 = r9.c
            byte[] r6 = r9.b
            int r8 = r9.f10898d
            r13 = r4
            r4 = r6
            r6 = r8
            if (r9 != r0) goto La7
            r9 = r11
        La7:
            if (r5 < 0) goto Laa
            return r5
        Laa:
            int r8 = -r5
            r5 = r13
            goto L27
        Lae:
            int r12 = r12 + 1
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._BufferKt.selectPrefix(okio.Buffer, okio.Options, boolean):int");
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return selectPrefix(buffer, options, z);
    }
}
