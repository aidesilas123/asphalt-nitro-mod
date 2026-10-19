package okio;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PeekSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class t implements y {
    private final e a;
    private final Buffer b;
    private u c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f10897f;

    public t(e upstream) {
        Intrinsics.checkNotNullParameter(upstream, "upstream");
        this.a = upstream;
        Buffer bufferY = upstream.y();
        this.b = bufferY;
        u uVar = bufferY.a;
        this.c = uVar;
        this.f10895d = uVar == null ? -1 : uVar.c;
    }

    @Override // okio.y, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10896e = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    @Override // okio.y
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long read(okio.Buffer r9, long r10) {
        /*
            r8 = this;
            java.lang.String r0 = "sink"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r0 = 0
            r1 = 0
            r3 = 1
            int r4 = (r10 > r1 ? 1 : (r10 == r1 ? 0 : -1))
            if (r4 < 0) goto Lf
            r5 = 1
            goto L10
        Lf:
            r5 = 0
        L10:
            if (r5 == 0) goto L87
            boolean r5 = r8.f10896e
            r5 = r5 ^ r3
            if (r5 == 0) goto L7b
            okio.u r5 = r8.c
            if (r5 == 0) goto L2a
            okio.Buffer r6 = r8.b
            okio.u r6 = r6.a
            if (r5 != r6) goto L2b
            int r5 = r8.f10895d
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            int r6 = r6.c
            if (r5 != r6) goto L2b
        L2a:
            r0 = 1
        L2b:
            if (r0 == 0) goto L6f
            if (r4 != 0) goto L30
            return r1
        L30:
            okio.e r0 = r8.a
            long r1 = r8.f10897f
            r3 = 1
            long r1 = r1 + r3
            boolean r0 = r0.request(r1)
            if (r0 != 0) goto L40
            r9 = -1
            return r9
        L40:
            okio.u r0 = r8.c
            if (r0 != 0) goto L53
            okio.Buffer r0 = r8.b
            okio.u r0 = r0.a
            if (r0 == 0) goto L53
            r8.c = r0
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            int r0 = r0.c
            r8.f10895d = r0
        L53:
            okio.Buffer r0 = r8.b
            long r0 = r0.I()
            long r2 = r8.f10897f
            long r0 = r0 - r2
            long r10 = java.lang.Math.min(r10, r0)
            okio.Buffer r2 = r8.b
            long r4 = r8.f10897f
            r3 = r9
            r6 = r10
            r2.j(r3, r4, r6)
            long r0 = r8.f10897f
            long r0 = r0 + r10
            r8.f10897f = r0
            return r10
        L6f:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "Peek source is invalid because upstream source was used"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L7b:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "closed"
            java.lang.String r10 = r10.toString()
            r9.<init>(r10)
            throw r9
        L87:
            java.lang.Long r9 = java.lang.Long.valueOf(r10)
            java.lang.String r10 = "byteCount < 0: "
            java.lang.String r9 = kotlin.jvm.internal.Intrinsics.stringPlus(r10, r9)
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r9 = r9.toString()
            r10.<init>(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.t.read(okio.Buffer, long):long");
    }

    @Override // okio.y
    public z timeout() {
        return this.a.timeout();
    }
}
