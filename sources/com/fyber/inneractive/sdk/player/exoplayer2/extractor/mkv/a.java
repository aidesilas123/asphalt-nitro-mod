package com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.g;
import java.io.IOException;
import java.util.Stack;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements b {
    public final byte[] a = new byte[8];
    public final Stack<C0182a> b = new Stack<>();
    public final f c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f2297d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f2298e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2299f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f2300g;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a$a, reason: collision with other inner class name */
    public static final class C0182a {
        public final int a;
        public final long b;

        public C0182a(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public final double a(g gVar, int i) throws InterruptedException, IOException {
        return i == 4 ? Float.intBitsToFloat((int) r0) : Double.longBitsToDouble(b(gVar, i));
    }

    public void a(c cVar) {
        this.f2297d = cVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0673  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x06b1  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x06b3  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x06bb  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x06e0  */
    /* JADX WARN: Type inference failed for: r3v34, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v28, types: [com.fyber.inneractive.sdk.player.exoplayer2.extractor.b] */
    /* JADX WARN: Type inference failed for: r4v94, types: [int] */
    /* JADX WARN: Type inference failed for: r4v96 */
    /* JADX WARN: Type inference failed for: r4v97 */
    /* JADX WARN: Type inference failed for: r4v98 */
    /* JADX WARN: Type inference failed for: r4v99 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r35) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3102
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.mkv.a.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g):boolean");
    }

    public final long b(g gVar, int i) throws InterruptedException, IOException {
        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(this.a, 0, i, false);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.a[i2] & 255));
        }
        return j;
    }

    public final String c(g gVar, int i) throws InterruptedException, IOException {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).b(bArr, 0, i, false);
        return new String(bArr);
    }
}
