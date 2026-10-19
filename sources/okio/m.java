package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GzipSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class m implements y {
    private byte a;
    private final RealBufferedSource b;
    private final Inflater c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f10891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f10892e;

    public m(y source) {
        Intrinsics.checkNotNullParameter(source, "source");
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.b = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.c = inflater;
        this.f10891d = new n((e) realBufferedSource, inflater);
        this.f10892e = new CRC32();
    }

    private final void a(String str, int i, int i2) throws IOException {
        if (i2 == i) {
            return;
        }
        String str2 = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i2), Integer.valueOf(i)}, 3));
        Intrinsics.checkNotNullExpressionValue(str2, "java.lang.String.format(this, *args)");
        throw new IOException(str2);
    }

    private final void d() throws IOException {
        this.b.require(10L);
        byte bM = this.b.b.m(3L);
        boolean z = ((bM >> 1) & 1) == 1;
        if (z) {
            f(this.b.b, 0L, 10L);
        }
        a("ID1ID2", 8075, this.b.readShort());
        this.b.skip(8L);
        if (((bM >> 2) & 1) == 1) {
            this.b.require(2L);
            if (z) {
                f(this.b.b, 0L, 2L);
            }
            long shortLe = this.b.b.readShortLe();
            this.b.require(shortLe);
            if (z) {
                f(this.b.b, 0L, shortLe);
            }
            this.b.skip(shortLe);
        }
        if (((bM >> 3) & 1) == 1) {
            long jIndexOf = this.b.indexOf((byte) 0);
            if (jIndexOf == -1) {
                throw new EOFException();
            }
            if (z) {
                f(this.b.b, 0L, jIndexOf + 1);
            }
            this.b.skip(jIndexOf + 1);
        }
        if (((bM >> 4) & 1) == 1) {
            long jIndexOf2 = this.b.indexOf((byte) 0);
            if (jIndexOf2 == -1) {
                throw new EOFException();
            }
            if (z) {
                f(this.b.b, 0L, jIndexOf2 + 1);
            }
            this.b.skip(jIndexOf2 + 1);
        }
        if (z) {
            a("FHCRC", this.b.readShortLe(), (short) this.f10892e.getValue());
            this.f10892e.reset();
        }
    }

    private final void e() throws IOException {
        a("CRC", this.b.readIntLe(), (int) this.f10892e.getValue());
        a("ISIZE", this.b.readIntLe(), (int) this.c.getBytesWritten());
    }

    private final void f(Buffer buffer, long j, long j2) {
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        while (true) {
            int i = uVar.f10898d;
            int i2 = uVar.c;
            if (j < i - i2) {
                break;
            }
            j -= (long) (i - i2);
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
        }
        while (j2 > 0) {
            int i3 = (int) (((long) uVar.c) + j);
            int iMin = (int) Math.min(uVar.f10898d - i3, j2);
            this.f10892e.update(uVar.b, i3, iMin);
            j2 -= (long) iMin;
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
            j = 0;
        }
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10891d.close();
    }

    @Override // okio.y
    public long read(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (this.a == 0) {
            d();
            this.a = (byte) 1;
        }
        if (this.a == 1) {
            long jI = sink.I();
            long j2 = this.f10891d.read(sink, j);
            if (j2 != -1) {
                f(sink, jI, j2);
                return j2;
            }
            this.a = (byte) 2;
        }
        if (this.a == 2) {
            e();
            this.a = (byte) 3;
            if (!this.b.exhausted()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // okio.y
    public z timeout() {
        return this.b.timeout();
    }
}
