package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.Buffer;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.RealBufferedSource;
import okio._UtilKt;
import okio.e;
import okio.t;
import okio.w;
import okio.z;

/* JADX INFO: compiled from: -RealBufferedSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _RealBufferedSourceKt {
    public static final void commonClose(RealBufferedSource realBufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (realBufferedSource.c) {
            return;
        }
        realBufferedSource.c = true;
        realBufferedSource.a.close();
        realBufferedSource.b.d();
    }

    public static final boolean commonExhausted(RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.c) {
            return realBufferedSource.b.exhausted() && realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOf(RealBufferedSource realBufferedSource, byte b, long j, long j2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (!(0 <= j && j <= j2)) {
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        while (j < j2) {
            long jIndexOf = realBufferedSource.b.indexOf(b, j, j2);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long jI = realBufferedSource.b.I();
            if (jI >= j2 || realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j = Math.max(j, jI);
        }
        return -1L;
    }

    public static final long commonIndexOf(RealBufferedSource realBufferedSource, ByteString bytes, long j) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jP = realBufferedSource.b.p(bytes, j);
            if (jP != -1) {
                return jP;
            }
            long jI = realBufferedSource.b.I();
            if (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, (jI - ((long) bytes.F())) + 1);
        }
    }

    public static final long commonIndexOfElement(RealBufferedSource realBufferedSource, ByteString targetBytes, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jR = realBufferedSource.b.r(targetBytes, j);
            if (jR != -1) {
                return jR;
            }
            long jI = realBufferedSource.b.I();
            if (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, jI);
        }
    }

    public static final e commonPeek(RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return Okio.buffer(new t(realBufferedSource));
    }

    public static final boolean commonRangeEquals(RealBufferedSource realBufferedSource, long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j < 0 || i < 0 || i2 < 0 || bytes.F() - i < i2) {
            return false;
        }
        if (i2 > 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                long j2 = ((long) i3) + j;
                if (!realBufferedSource.request(1 + j2) || realBufferedSource.b.m(j2) != bytes.j(i3 + i)) {
                    return false;
                }
                if (i4 >= i2) {
                    break;
                }
                i3 = i4;
            }
        }
        return true;
    }

    public static final int commonRead(RealBufferedSource realBufferedSource, byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = i2;
        _UtilKt.checkOffsetAndCount(sink.length, i, j);
        if (realBufferedSource.b.I() == 0 && realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return realBufferedSource.b.read(sink, i, (int) Math.min(j, realBufferedSource.b.I()));
    }

    public static final long commonRead(RealBufferedSource realBufferedSource, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(true ^ realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (realBufferedSource.b.I() == 0 && realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return realBufferedSource.b.read(sink, Math.min(j, realBufferedSource.b.I()));
    }

    public static final long commonReadAll(RealBufferedSource realBufferedSource, w sink) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jF = realBufferedSource.b.f();
            if (jF > 0) {
                j += jF;
                sink.n(realBufferedSource.b, jF);
            }
        }
        if (realBufferedSource.b.I() <= 0) {
            return j;
        }
        long jI = j + realBufferedSource.b.I();
        Buffer buffer = realBufferedSource.b;
        sink.n(buffer, buffer.I());
        return jI;
    }

    public static final byte commonReadByte(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        return realBufferedSource.b.readByte();
    }

    public static final byte[] commonReadByteArray(RealBufferedSource realBufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.b.D(realBufferedSource.a);
        return realBufferedSource.b.readByteArray();
    }

    public static final byte[] commonReadByteArray(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.b.readByteArray(j);
    }

    public static final ByteString commonReadByteString(RealBufferedSource realBufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.b.D(realBufferedSource.a);
        return realBufferedSource.b.readByteString();
    }

    public static final ByteString commonReadByteString(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.b.readByteString(j);
    }

    public static final long commonReadDecimalLong(RealBufferedSource realBufferedSource) throws EOFException {
        byte bM;
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!realBufferedSource.request(j2)) {
                break;
            }
            bM = realBufferedSource.b.m(j);
            if ((bM < ((byte) 48) || bM > ((byte) 57)) && !(j == 0 && bM == ((byte) 45))) {
                break;
            }
            j = j2;
        }
        if (j == 0) {
            String string = Integer.toString(bM, CharsKt__CharJVMKt.checkRadix(CharsKt__CharJVMKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            throw new NumberFormatException(Intrinsics.stringPlus("Expected a digit or '-' but was 0x", string));
        }
        return realBufferedSource.b.readDecimalLong();
    }

    public static final void commonReadFully(RealBufferedSource realBufferedSource, Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(j);
            realBufferedSource.b.v(sink, j);
        } catch (EOFException e2) {
            sink.D(realBufferedSource.b);
            throw e2;
        }
    }

    public static final void commonReadFully(RealBufferedSource realBufferedSource, byte[] sink) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            realBufferedSource.require(sink.length);
            realBufferedSource.b.readFully(sink);
        } catch (EOFException e2) {
            int i = 0;
            while (realBufferedSource.b.I() > 0) {
                Buffer buffer = realBufferedSource.b;
                int i2 = buffer.read(sink, i, (int) buffer.I());
                if (i2 == -1) {
                    throw new AssertionError();
                }
                i += i2;
            }
            throw e2;
        }
    }

    public static final long commonReadHexadecimalUnsignedLong(RealBufferedSource realBufferedSource) throws EOFException {
        byte bM;
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!realBufferedSource.request(i2)) {
                break;
            }
            bM = realBufferedSource.b.m(i);
            if ((bM < ((byte) 48) || bM > ((byte) 57)) && ((bM < ((byte) 97) || bM > ((byte) 102)) && (bM < ((byte) 65) || bM > ((byte) 70)))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            String string = Integer.toString(bM, CharsKt__CharJVMKt.checkRadix(CharsKt__CharJVMKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(string, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            throw new NumberFormatException(Intrinsics.stringPlus("Expected leading [0-9a-fA-F] character but was 0x", string));
        }
        return realBufferedSource.b.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.b.readInt();
    }

    public static final int commonReadIntLe(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.b.readIntLe();
    }

    public static final long commonReadLong(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.b.readLong();
    }

    public static final long commonReadLongLe(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.b.readLongLe();
    }

    public static final short commonReadShort(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.b.readShort();
    }

    public static final short commonReadShortLe(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.b.readShortLe();
    }

    public static final String commonReadUtf8(RealBufferedSource realBufferedSource) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.b.D(realBufferedSource.a);
        return realBufferedSource.b.readUtf8();
    }

    public static final String commonReadUtf8(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(j);
        return realBufferedSource.b.readUtf8(j);
    }

    public static final int commonReadUtf8CodePoint(RealBufferedSource realBufferedSource) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        byte bM = realBufferedSource.b.m(0L);
        if ((bM & 224) == 192) {
            realBufferedSource.require(2L);
        } else if ((bM & 240) == 224) {
            realBufferedSource.require(3L);
        } else if ((bM & 248) == 240) {
            realBufferedSource.require(4L);
        }
        return realBufferedSource.b.readUtf8CodePoint();
    }

    public static final String commonReadUtf8Line(RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        long jIndexOf = realBufferedSource.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(realBufferedSource.b, jIndexOf);
        }
        if (realBufferedSource.b.I() != 0) {
            return realBufferedSource.readUtf8(realBufferedSource.b.I());
        }
        return null;
    }

    public static final String commonReadUtf8LineStrict(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        byte b = (byte) 10;
        long jIndexOf = realBufferedSource.indexOf(b, 0L, j2);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(realBufferedSource.b, jIndexOf);
        }
        if (j2 < Long.MAX_VALUE && realBufferedSource.request(j2) && realBufferedSource.b.m(j2 - 1) == ((byte) 13) && realBufferedSource.request(1 + j2) && realBufferedSource.b.m(j2) == b) {
            return _BufferKt.readUtf8Line(realBufferedSource.b, j2);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = realBufferedSource.b;
        buffer2.j(buffer, 0L, Math.min(32, buffer2.I()));
        throw new EOFException("\\n not found: limit=" + Math.min(realBufferedSource.b.I(), j) + " content=" + buffer.readByteString().q() + (char) 8230);
    }

    public static final boolean commonRequest(RealBufferedSource realBufferedSource, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (realBufferedSource.b.I() < j) {
            if (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    public static final void commonRequire(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!realBufferedSource.request(j)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(RealBufferedSource realBufferedSource, Options options) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            int iSelectPrefix = _BufferKt.selectPrefix(realBufferedSource.b, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                realBufferedSource.b.skip(options.i()[iSelectPrefix].F());
                return iSelectPrefix;
            }
        } while (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    public static final void commonSkip(RealBufferedSource realBufferedSource, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        if (!(!realBufferedSource.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            if (realBufferedSource.b.I() == 0 && realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, realBufferedSource.b.I());
            realBufferedSource.b.skip(jMin);
            j -= jMin;
        }
    }

    public static final z commonTimeout(RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return realBufferedSource.a.timeout();
    }

    public static final String commonToString(RealBufferedSource realBufferedSource) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        return "buffer(" + realBufferedSource.a + ')';
    }
}
