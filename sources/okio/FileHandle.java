package okio;

import java.io.Closeable;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FileHandle.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class FileHandle implements Closeable {
    private final boolean a;
    private boolean b;
    private int c;

    /* JADX INFO: compiled from: FileHandle.kt */
    private static final class a implements w {
        private final FileHandle a;
        private long b;
        private boolean c;

        public a(FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.a = fileHandle;
            this.b = j;
        }

        @Override // okio.w, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.c) {
                return;
            }
            this.c = true;
            synchronized (this.a) {
                FileHandle fileHandleD = d();
                fileHandleD.c--;
                if (d().c == 0 && d().b) {
                    kotlin.v vVar = kotlin.v.a;
                    this.a.d();
                }
            }
        }

        public final FileHandle d() {
            return this.a;
        }

        @Override // okio.w, java.io.Flushable
        public void flush() throws IOException {
            if (!(!this.c)) {
                throw new IllegalStateException("closed".toString());
            }
            this.a.e();
        }

        @Override // okio.w
        public void n(Buffer source, long j) throws IOException {
            Intrinsics.checkNotNullParameter(source, "source");
            if (!(!this.c)) {
                throw new IllegalStateException("closed".toString());
            }
            this.a.m(this.b, source, j);
            this.b += j;
        }

        @Override // okio.w
        public z timeout() {
            return z.b;
        }
    }

    /* JADX INFO: compiled from: FileHandle.kt */
    private static final class b implements y {
        private final FileHandle a;
        private long b;
        private boolean c;

        public b(FileHandle fileHandle, long j) {
            Intrinsics.checkNotNullParameter(fileHandle, "fileHandle");
            this.a = fileHandle;
            this.b = j;
        }

        @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.c) {
                return;
            }
            this.c = true;
            synchronized (this.a) {
                FileHandle fileHandleD = d();
                fileHandleD.c--;
                if (d().c == 0 && d().b) {
                    kotlin.v vVar = kotlin.v.a;
                    this.a.d();
                }
            }
        }

        public final FileHandle d() {
            return this.a;
        }

        @Override // okio.y
        public long read(Buffer sink, long j) throws IOException {
            Intrinsics.checkNotNullParameter(sink, "sink");
            if (!(!this.c)) {
                throw new IllegalStateException("closed".toString());
            }
            long jI = this.a.i(this.b, sink, j);
            if (jI != -1) {
                this.b += jI;
            }
            return jI;
        }

        @Override // okio.y
        public z timeout() {
            return z.b;
        }
    }

    public FileHandle(boolean z) {
        this.a = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long i(long j, Buffer buffer, long j2) throws IOException {
        if (!(j2 >= 0)) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Long.valueOf(j2)).toString());
        }
        long j3 = j + j2;
        long j4 = j;
        while (true) {
            if (j4 >= j3) {
                break;
            }
            u uVarL = buffer.L(1);
            int iF = f(j4, uVarL.b, uVarL.f10898d, (int) Math.min(j3 - j4, 8192 - r8));
            if (iF == -1) {
                if (uVarL.c == uVarL.f10898d) {
                    buffer.a = uVarL.b();
                    SegmentPool.recycle(uVarL);
                }
                if (j == j4) {
                    return -1L;
                }
            } else {
                uVarL.f10898d += iF;
                long j5 = iF;
                j4 += j5;
                buffer.x(buffer.I() + j5);
            }
        }
        return j4 - j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(long j, Buffer buffer, long j2) throws IOException {
        _UtilKt.checkOffsetAndCount(buffer.I(), 0L, j2);
        long j3 = j2 + j;
        while (j < j3) {
            u uVar = buffer.a;
            Intrinsics.checkNotNull(uVar);
            int iMin = (int) Math.min(j3 - j, uVar.f10898d - uVar.c);
            h(j, uVar.b, uVar.c, iMin);
            uVar.c += iMin;
            long j4 = iMin;
            j += j4;
            buffer.x(buffer.I() - j4);
            if (uVar.c == uVar.f10898d) {
                buffer.a = uVar.b();
                SegmentPool.recycle(uVar);
            }
        }
    }

    public static /* synthetic */ w sink$default(FileHandle fileHandle, long j, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        return fileHandle.j(j);
    }

    public static /* synthetic */ y source$default(FileHandle fileHandle, long j, int i, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
        }
        if ((i & 1) != 0) {
            j = 0;
        }
        return fileHandle.l(j);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.b) {
                return;
            }
            this.b = true;
            if (this.c != 0) {
                return;
            }
            kotlin.v vVar = kotlin.v.a;
            d();
        }
    }

    protected abstract void d() throws IOException;

    protected abstract void e() throws IOException;

    protected abstract int f(long j, byte[] bArr, int i, int i2) throws IOException;

    protected abstract long g() throws IOException;

    protected abstract void h(long j, byte[] bArr, int i, int i2) throws IOException;

    public final w j(long j) throws IOException {
        if (!this.a) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        synchronized (this) {
            if (!(!this.b)) {
                throw new IllegalStateException("closed".toString());
            }
            this.c++;
        }
        return new a(this, j);
    }

    public final long k() throws IOException {
        synchronized (this) {
            if (!(!this.b)) {
                throw new IllegalStateException("closed".toString());
            }
            kotlin.v vVar = kotlin.v.a;
        }
        return g();
    }

    public final y l(long j) throws IOException {
        synchronized (this) {
            if (!(!this.b)) {
                throw new IllegalStateException("closed".toString());
            }
            this.c++;
        }
        return new b(this, j);
    }
}
