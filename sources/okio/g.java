package okio;

import java.io.IOException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.ShortBufferException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CipherSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g implements y {
    private final e a;
    private final Cipher b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Buffer f10863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10865f;

    public g(e source, Cipher cipher) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(cipher, "cipher");
        this.a = source;
        this.b = cipher;
        int blockSize = cipher.getBlockSize();
        this.c = blockSize;
        this.f10863d = new Buffer();
        if (!(blockSize > 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("Block cipher required ", e()).toString());
        }
    }

    private final void d() throws BadPaddingException, IllegalBlockSizeException, ShortBufferException {
        int outputSize = this.b.getOutputSize(0);
        if (outputSize == 0) {
            return;
        }
        u uVarL = this.f10863d.L(outputSize);
        int iDoFinal = this.b.doFinal(uVarL.b, uVarL.c);
        uVarL.f10898d += iDoFinal;
        Buffer buffer = this.f10863d;
        buffer.x(buffer.I() + ((long) iDoFinal));
        if (uVarL.c == uVarL.f10898d) {
            this.f10863d.a = uVarL.b();
            SegmentPool.recycle(uVarL);
        }
    }

    private final void f() throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        while (this.f10863d.I() == 0) {
            if (this.a.exhausted()) {
                this.f10864e = true;
                d();
                return;
            }
            g();
        }
    }

    private final void g() throws IOException, ShortBufferException {
        u uVar = this.a.y().a;
        Intrinsics.checkNotNull(uVar);
        int i = uVar.f10898d - uVar.c;
        int outputSize = this.b.getOutputSize(i);
        while (outputSize > 8192) {
            int i2 = this.c;
            if (!(i > i2)) {
                throw new IllegalStateException(("Unexpected output size " + outputSize + " for input size " + i).toString());
            }
            i -= i2;
            outputSize = this.b.getOutputSize(i);
        }
        u uVarL = this.f10863d.L(outputSize);
        int iUpdate = this.b.update(uVar.b, uVar.c, i, uVarL.b, uVarL.c);
        this.a.skip(i);
        uVarL.f10898d += iUpdate;
        Buffer buffer = this.f10863d;
        buffer.x(buffer.I() + ((long) iUpdate));
        if (uVarL.c == uVarL.f10898d) {
            this.f10863d.a = uVarL.b();
            SegmentPool.recycle(uVarL);
        }
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f10865f = true;
        this.a.close();
    }

    public final Cipher e() {
        return this.b;
    }

    @Override // okio.y
    public long read(Buffer sink, long j) throws BadPaddingException, IllegalBlockSizeException, IOException, ShortBufferException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j)).toString());
        }
        if (!(true ^ this.f10865f)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j == 0) {
            return 0L;
        }
        if (this.f10864e) {
            return this.f10863d.read(sink, j);
        }
        f();
        return this.f10863d.read(sink, j);
    }

    @Override // okio.y
    public z timeout() {
        return this.a.timeout();
    }
}
