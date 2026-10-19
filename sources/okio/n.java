package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InflaterSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class n implements y {
    private final e a;
    private final Inflater b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f10893d;

    public n(e source, Inflater inflater) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.a = source;
        this.b = inflater;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n(y source, Inflater inflater) {
        this(Okio.buffer(source), inflater);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(inflater, "inflater");
    }

    private final void e() throws IOException {
        int i = this.c;
        if (i == 0) {
            return;
        }
        int remaining = i - this.b.getRemaining();
        this.c -= remaining;
        this.a.skip(remaining);
    }

    public final long a(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(!this.f10893d)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j == 0) {
            return 0L;
        }
        try {
            u uVarL = sink.L(1);
            int iMin = (int) Math.min(j, 8192 - uVarL.f10898d);
            d();
            int iInflate = this.b.inflate(uVarL.b, uVarL.f10898d, iMin);
            e();
            if (iInflate > 0) {
                uVarL.f10898d += iInflate;
                long j2 = iInflate;
                sink.x(sink.I() + j2);
                return j2;
            }
            if (uVarL.c == uVarL.f10898d) {
                sink.a = uVarL.b();
                SegmentPool.recycle(uVarL);
            }
            return 0L;
        } catch (DataFormatException e2) {
            throw new IOException(e2);
        }
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f10893d) {
            return;
        }
        this.b.end();
        this.f10893d = true;
        this.a.close();
    }

    public final boolean d() throws IOException {
        if (!this.b.needsInput()) {
            return false;
        }
        if (this.a.exhausted()) {
            return true;
        }
        u uVar = this.a.y().a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.f10898d;
        int i2 = uVar.c;
        int i3 = i - i2;
        this.c = i3;
        this.b.setInput(uVar.b, i2, i3);
        return false;
    }

    @Override // okio.y
    public long read(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        do {
            long jA = a(sink, j);
            if (jA > 0) {
                return jA;
            }
            if (this.b.finished() || this.b.needsDictionary()) {
                return -1L;
            }
        } while (!this.a.exhausted());
        throw new EOFException("source exhausted prematurely");
    }

    @Override // okio.y
    public z timeout() {
        return this.a.timeout();
    }
}
