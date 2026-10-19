package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RealBufferedSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class RealBufferedSink implements d {
    public final w a;
    public final Buffer b;
    public boolean c;

    public RealBufferedSink(w sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        this.a = sink;
        this.b = new Buffer();
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.d
    public long D(y source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        long j = 0;
        while (true) {
            long j2 = source.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j2 == -1) {
                return j;
            }
            j += j2;
            emitCompleteSegments();
        }
    }

    @Override // okio.d
    public d P(ByteString byteString) {
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.P(byteString);
        return emitCompleteSegments();
    }

    public d a(int i) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.Y(i);
        return emitCompleteSegments();
    }

    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.c) {
            return;
        }
        Throwable th = null;
        try {
            if (this.b.I() > 0) {
                w wVar = this.a;
                Buffer buffer = this.b;
                wVar.n(buffer, buffer.I());
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.c = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.d
    public d emit() throws IOException {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jI = this.b.I();
        if (jI > 0) {
            this.a.n(this.b, jI);
        }
        return this;
    }

    @Override // okio.d
    public d emitCompleteSegments() throws IOException {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        long jF = this.b.f();
        if (jF > 0) {
            this.a.n(this.b, jF);
        }
        return this;
    }

    @Override // okio.d, okio.w, java.io.Flushable
    public void flush() throws IOException {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.b.I() > 0) {
            w wVar = this.a;
            Buffer buffer = this.b;
            wVar.n(buffer, buffer.I());
        }
        this.a.flush();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.c;
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.n(source, j);
        emitCompleteSegments();
    }

    @Override // okio.w
    public z timeout() {
        return this.a.timeout();
    }

    public String toString() {
        return "buffer(" + this.a + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.b.write(source);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // okio.d
    public d write(byte[] source) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.write(source);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d write(byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.write(source, i, i2);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeByte(int i) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeByte(i);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeDecimalLong(long j) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeDecimalLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeHexadecimalUnsignedLong(long j) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeHexadecimalUnsignedLong(j);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeInt(int i) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeInt(i);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeShort(int i) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeShort(i);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public d writeUtf8(String string) {
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        this.b.writeUtf8(string);
        return emitCompleteSegments();
    }

    @Override // okio.d
    public Buffer y() {
        return this.b;
    }
}
