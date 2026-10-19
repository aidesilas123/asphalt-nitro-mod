package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.RealBufferedSink;
import okio.d;
import okio.w;
import okio.y;
import okio.z;

/* JADX INFO: compiled from: -RealBufferedSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class _RealBufferedSinkKt {
    public static final void commonClose(RealBufferedSink realBufferedSink) throws Throwable {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (realBufferedSink.c) {
            return;
        }
        Throwable th = null;
        try {
            if (realBufferedSink.b.I() > 0) {
                w wVar = realBufferedSink.a;
                Buffer buffer = realBufferedSink.b;
                wVar.n(buffer, buffer.I());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            realBufferedSink.a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        realBufferedSink.c = true;
        if (th != null) {
            throw th;
        }
    }

    public static final d commonEmit(RealBufferedSink realBufferedSink) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jI = realBufferedSink.b.I();
        if (jI > 0) {
            realBufferedSink.a.n(realBufferedSink.b, jI);
        }
        return realBufferedSink;
    }

    public static final d commonEmitCompleteSegments(RealBufferedSink realBufferedSink) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jF = realBufferedSink.b.f();
        if (jF > 0) {
            realBufferedSink.a.n(realBufferedSink.b, jF);
        }
        return realBufferedSink;
    }

    public static final void commonFlush(RealBufferedSink realBufferedSink) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (realBufferedSink.b.I() > 0) {
            w wVar = realBufferedSink.a;
            Buffer buffer = realBufferedSink.b;
            wVar.n(buffer, buffer.I());
        }
        realBufferedSink.a.flush();
    }

    public static final z commonTimeout(RealBufferedSink realBufferedSink) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        return realBufferedSink.a.timeout();
    }

    public static final String commonToString(RealBufferedSink realBufferedSink) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        return "buffer(" + realBufferedSink.a + ')';
    }

    public static final d commonWrite(RealBufferedSink realBufferedSink, ByteString byteString) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.P(byteString);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWrite(RealBufferedSink realBufferedSink, ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.N(byteString, i, i2);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWrite(RealBufferedSink realBufferedSink, y source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        while (j > 0) {
            long j2 = source.read(realBufferedSink.b, j);
            if (j2 == -1) {
                throw new EOFException();
            }
            j -= j2;
            realBufferedSink.emitCompleteSegments();
        }
        return realBufferedSink;
    }

    public static final d commonWrite(RealBufferedSink realBufferedSink, byte[] source) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.write(source);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWrite(RealBufferedSink realBufferedSink, byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.write(source, i, i2);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final void commonWrite(RealBufferedSink realBufferedSink, Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.n(source, j);
        realBufferedSink.emitCompleteSegments();
    }

    public static final long commonWriteAll(RealBufferedSink realBufferedSink, y source) throws IOException {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(realBufferedSink.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            realBufferedSink.emitCompleteSegments();
        }
    }

    public static final d commonWriteByte(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeByte(i);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteDecimalLong(RealBufferedSink realBufferedSink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeDecimalLong(j);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteHexadecimalUnsignedLong(RealBufferedSink realBufferedSink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeHexadecimalUnsignedLong(j);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteInt(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeInt(i);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteIntLe(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.Y(i);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteLong(RealBufferedSink realBufferedSink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.Z(j);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteLongLe(RealBufferedSink realBufferedSink, long j) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.a0(j);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteShort(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeShort(i);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteShortLe(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.c0(i);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteUtf8(RealBufferedSink realBufferedSink, String string) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.writeUtf8(string);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteUtf8(RealBufferedSink realBufferedSink, String string, int i, int i2) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.h0(string, i, i2);
        return realBufferedSink.emitCompleteSegments();
    }

    public static final d commonWriteUtf8CodePoint(RealBufferedSink realBufferedSink, int i) {
        Intrinsics.checkNotNullParameter(realBufferedSink, "<this>");
        if (!(!realBufferedSink.c)) {
            throw new IllegalStateException("closed".toString());
        }
        realBufferedSink.b.i0(i);
        return realBufferedSink.emitCompleteSegments();
    }
}
