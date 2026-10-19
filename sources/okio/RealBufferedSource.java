package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import okio.internal._BufferKt;

/* JADX INFO: compiled from: RealBufferedSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class RealBufferedSource implements e {
    public final y a;
    public final Buffer b;
    public boolean c;

    /* JADX INFO: compiled from: RealBufferedSource.kt */
    public static final class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            RealBufferedSource realBufferedSource = RealBufferedSource.this;
            if (realBufferedSource.c) {
                throw new IOException("closed");
            }
            return (int) Math.min(realBufferedSource.b.I(), Integer.MAX_VALUE);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            RealBufferedSource.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            RealBufferedSource realBufferedSource = RealBufferedSource.this;
            if (realBufferedSource.c) {
                throw new IOException("closed");
            }
            if (realBufferedSource.b.I() == 0) {
                RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                if (realBufferedSource2.a.read(realBufferedSource2.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
            }
            return RealBufferedSource.this.b.readByte() & 255;
        }

        @Override // java.io.InputStream
        public int read(byte[] data, int i, int i2) throws IOException {
            Intrinsics.checkNotNullParameter(data, "data");
            if (RealBufferedSource.this.c) {
                throw new IOException("closed");
            }
            _UtilKt.checkOffsetAndCount(data.length, i, i2);
            if (RealBufferedSource.this.b.I() == 0) {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.a.read(realBufferedSource.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                    return -1;
                }
            }
            return RealBufferedSource.this.b.read(data, i, i2);
        }

        public String toString() {
            return RealBufferedSource.this + ".inputStream()";
        }
    }

    public RealBufferedSource(y source) {
        Intrinsics.checkNotNullParameter(source, "source");
        this.a = source;
        this.b = new Buffer();
    }

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.e
    public long R(w sink) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = 0;
        while (this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jF = this.b.f();
            if (jF > 0) {
                j += jF;
                sink.n(this.b, jF);
            }
        }
        if (this.b.I() <= 0) {
            return j;
        }
        long jI = j + this.b.I();
        Buffer buffer = this.b;
        sink.n(buffer, buffer.I());
        return jI;
    }

    @Override // okio.e
    public int T(Options options) throws EOFException {
        Intrinsics.checkNotNullParameter(options, "options");
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            int iSelectPrefix = _BufferKt.selectPrefix(this.b, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix != -1) {
                    this.b.skip(options.i()[iSelectPrefix].F());
                    return iSelectPrefix;
                }
            } else if (this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
        }
        return -1;
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c) {
            return;
        }
        this.c = true;
        this.a.close();
        this.b.d();
    }

    @Override // okio.e
    public boolean exhausted() {
        if (!this.c) {
            return this.b.exhausted() && this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public long indexOf(byte b) {
        return indexOf(b, 0L, Long.MAX_VALUE);
    }

    public long indexOf(byte b, long j, long j2) {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (!(0 <= j && j <= j2)) {
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        while (j < j2) {
            long jIndexOf = this.b.indexOf(b, j, j2);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long jI = this.b.I();
            if (jI >= j2 || this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j = Math.max(j, jI);
        }
        return -1L;
    }

    @Override // okio.e
    public InputStream inputStream() {
        return new a();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.c;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (this.b.I() == 0 && this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.b.read(sink);
    }

    @Override // okio.y
    public long read(Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(true ^ this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.b.I() == 0 && this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.b.read(sink, Math.min(j, this.b.I()));
    }

    @Override // okio.e
    public byte readByte() throws EOFException {
        require(1L);
        return this.b.readByte();
    }

    @Override // okio.e
    public byte[] readByteArray() throws IOException {
        this.b.D(this.a);
        return this.b.readByteArray();
    }

    @Override // okio.e
    public byte[] readByteArray(long j) throws EOFException {
        require(j);
        return this.b.readByteArray(j);
    }

    @Override // okio.e
    public ByteString readByteString() throws IOException {
        this.b.D(this.a);
        return this.b.readByteString();
    }

    @Override // okio.e
    public ByteString readByteString(long j) throws EOFException {
        require(j);
        return this.b.readByteString(j);
    }

    @Override // okio.e
    public long readDecimalLong() throws EOFException {
        byte bM;
        require(1L);
        long j = 0;
        while (true) {
            long j2 = j + 1;
            if (!request(j2)) {
                break;
            }
            bM = this.b.m(j);
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
        return this.b.readDecimalLong();
    }

    @Override // okio.e
    public long readHexadecimalUnsignedLong() throws EOFException {
        byte bM;
        require(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!request(i2)) {
                break;
            }
            bM = this.b.m(i);
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
        return this.b.readHexadecimalUnsignedLong();
    }

    @Override // okio.e
    public int readInt() throws EOFException {
        require(4L);
        return this.b.readInt();
    }

    @Override // okio.e
    public int readIntLe() throws EOFException {
        require(4L);
        return this.b.readIntLe();
    }

    @Override // okio.e
    public long readLongLe() throws EOFException {
        require(8L);
        return this.b.readLongLe();
    }

    @Override // okio.e
    public short readShort() throws EOFException {
        require(2L);
        return this.b.readShort();
    }

    @Override // okio.e
    public short readShortLe() throws EOFException {
        require(2L);
        return this.b.readShortLe();
    }

    @Override // okio.e
    public String readString(Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(charset, "charset");
        this.b.D(this.a);
        return this.b.readString(charset);
    }

    @Override // okio.e
    public String readUtf8(long j) throws EOFException {
        require(j);
        return this.b.readUtf8(j);
    }

    @Override // okio.e
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.e
    public String readUtf8LineStrict(long j) throws EOFException {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("limit < 0: ", Long.valueOf(j)).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        byte b = (byte) 10;
        long jIndexOf = indexOf(b, 0L, j2);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this.b, jIndexOf);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && this.b.m(j2 - 1) == ((byte) 13) && request(1 + j2) && this.b.m(j2) == b) {
            return _BufferKt.readUtf8Line(this.b, j2);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.b;
        buffer2.j(buffer, 0L, Math.min(32, buffer2.I()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.b.I(), j) + " content=" + buffer.readByteString().q() + (char) 8230);
    }

    @Override // okio.e
    public boolean request(long j) {
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (this.b.I() < j) {
            if (this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.e
    public void require(long j) throws EOFException {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // okio.e
    public void skip(long j) throws EOFException {
        if (!(!this.c)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j > 0) {
            if (this.b.I() == 0 && this.a.read(this.b, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j, this.b.I());
            this.b.skip(jMin);
            j -= jMin;
        }
    }

    @Override // okio.y
    public z timeout() {
        return this.a.timeout();
    }

    public String toString() {
        return "buffer(" + this.a + ')';
    }

    @Override // okio.e, okio.d
    public Buffer y() {
        return this.b;
    }
}
