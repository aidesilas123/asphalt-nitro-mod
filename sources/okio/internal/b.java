package okio.internal;

import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.j;
import okio.y;

/* JADX INFO: compiled from: FixedLengthSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends j {
    private final long a;
    private final boolean b;
    private long c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(y delegate, long j, boolean z) {
        super(delegate);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.a = j;
        this.b = z;
    }

    private final void a(Buffer buffer, long j) throws IOException {
        Buffer buffer2 = new Buffer();
        buffer2.D(buffer);
        buffer.n(buffer2, j);
        buffer2.d();
    }

    @Override // okio.j, okio.y
    public long read(Buffer sink, long j) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j2 = this.c;
        long j3 = this.a;
        if (j2 > j3) {
            j = 0;
        } else if (this.b) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long j5 = super.read(sink, j);
        if (j5 != -1) {
            this.c += j5;
        }
        long j6 = this.c;
        long j7 = this.a;
        if ((j6 >= j7 || j5 != -1) && j6 <= j7) {
            return j5;
        }
        if (j5 > 0 && j6 > j7) {
            a(sink, sink.I() - (this.c - this.a));
        }
        throw new IOException("expected " + this.a + " bytes but got " + this.c);
    }
}
