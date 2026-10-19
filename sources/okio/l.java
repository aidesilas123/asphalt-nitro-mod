package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GzipSink.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l implements w {
    private final RealBufferedSink a;
    private final Deflater b;
    private final h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10889d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CRC32 f10890e;

    public l(w sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        RealBufferedSink realBufferedSink = new RealBufferedSink(sink);
        this.a = realBufferedSink;
        Deflater deflater = new Deflater(-1, true);
        this.b = deflater;
        this.c = new h((d) realBufferedSink, deflater);
        this.f10890e = new CRC32();
        Buffer buffer = realBufferedSink.b;
        buffer.writeShort(8075);
        buffer.writeByte(8);
        buffer.writeByte(0);
        buffer.writeInt(0);
        buffer.writeByte(0);
        buffer.writeByte(0);
    }

    private final void a(Buffer buffer, long j) {
        u uVar = buffer.a;
        Intrinsics.checkNotNull(uVar);
        while (j > 0) {
            int iMin = (int) Math.min(j, uVar.f10898d - uVar.c);
            this.f10890e.update(uVar.b, uVar.c, iMin);
            j -= (long) iMin;
            uVar = uVar.f10901g;
            Intrinsics.checkNotNull(uVar);
        }
    }

    private final void d() {
        this.a.a((int) this.f10890e.getValue());
        this.a.a((int) this.b.getBytesRead());
    }

    @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f10889d) {
            return;
        }
        Throwable th = null;
        try {
            this.c.d();
            d();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.b.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.a.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f10889d = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.w, java.io.Flushable
    public void flush() throws IOException {
        this.c.flush();
    }

    @Override // okio.w
    public void n(Buffer source, long j) throws IOException {
        Intrinsics.checkNotNullParameter(source, "source");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (j == 0) {
            return;
        }
        a(source, j);
        this.c.n(source, j);
    }

    @Override // okio.w
    public z timeout() {
        return this.a.timeout();
    }
}
