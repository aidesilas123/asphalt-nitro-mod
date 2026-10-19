package com.tapjoy.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class o7 extends ImageView implements Runnable {
    public s3 a;
    public Bitmap b;
    public final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Thread f7952g;
    public long h;
    public final v5 i;
    public final h6 j;

    public o7(Context context) {
        super(context);
        this.c = new Handler(Looper.getMainLooper());
        this.h = -1L;
        this.i = new v5(this);
        this.j = new h6(this);
    }

    public final void a() {
        if ((this.f7949d || this.f7950e) && this.a != null && this.f7952g == null) {
            Thread thread = new Thread(this);
            this.f7952g = thread;
            thread.start();
        }
    }

    public final void b() {
        this.f7949d = false;
        Thread thread = this.f7952g;
        if (thread != null) {
            thread.interrupt();
            this.f7952g = null;
        }
    }

    public long getFramesDisplayDuration() {
        return this.h;
    }

    public int getGifHeight() {
        return this.a.p.f7996g;
    }

    public int getGifWidth() {
        return this.a.p.f7995f;
    }

    public s2 getOnAnimationStop() {
        return null;
    }

    public t2 getOnFrameAvailable() {
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7949d = false;
        this.f7950e = false;
        this.f7951f = true;
        b();
        this.c.post(this.j);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r10 = this;
        L0:
            boolean r0 = r10.f7949d
            if (r0 != 0) goto La
            boolean r0 = r10.f7950e
            if (r0 != 0) goto La
            goto L91
        La:
            com.tapjoy.internal.s3 r0 = r10.a
            com.tapjoy.internal.s4 r1 = r0.p
            int r2 = r1.c
            r3 = -1
            r4 = 0
            r5 = 1
            if (r2 > 0) goto L16
            goto L29
        L16:
            int r6 = r0.n
            int r7 = r2 + (-1)
            if (r6 != r7) goto L21
            int r7 = r0.o
            int r7 = r7 + r5
            r0.o = r7
        L21:
            int r1 = r1.l
            if (r1 == r3) goto L2b
            int r7 = r0.o
            if (r7 <= r1) goto L2b
        L29:
            r5 = 0
            goto L30
        L2b:
            int r6 = r6 + 1
            int r6 = r6 % r2
            r0.n = r6
        L30:
            r0 = 0
            long r6 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L51
            com.tapjoy.internal.s3 r2 = r10.a     // Catch: java.lang.Throwable -> L51
            android.graphics.Bitmap r2 = r2.a()     // Catch: java.lang.Throwable -> L51
            r10.b = r2     // Catch: java.lang.Throwable -> L51
            long r8 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L51
            long r8 = r8 - r6
            r6 = 1000000(0xf4240, double:4.940656E-318)
            long r8 = r8 / r6
            android.os.Handler r2 = r10.c     // Catch: java.lang.Throwable -> L4f
            com.tapjoy.internal.v5 r6 = r10.i     // Catch: java.lang.Throwable -> L4f
            r2.post(r6)     // Catch: java.lang.Throwable -> L4f
            goto L52
        L4f:
            goto L52
        L51:
            r8 = r0
        L52:
            r10.f7950e = r4
            boolean r2 = r10.f7949d
            if (r2 == 0) goto L8f
            if (r5 != 0) goto L5b
            goto L8f
        L5b:
            com.tapjoy.internal.s3 r2 = r10.a     // Catch: java.lang.InterruptedException -> L89
            com.tapjoy.internal.s4 r5 = r2.p     // Catch: java.lang.InterruptedException -> L89
            int r6 = r5.c     // Catch: java.lang.InterruptedException -> L89
            if (r6 <= 0) goto L77
            int r2 = r2.n     // Catch: java.lang.InterruptedException -> L89
            if (r2 >= 0) goto L68
            goto L77
        L68:
            if (r2 < 0) goto L78
            if (r2 >= r6) goto L78
            java.util.ArrayList r3 = r5.f7994e     // Catch: java.lang.InterruptedException -> L89
            java.lang.Object r2 = r3.get(r2)     // Catch: java.lang.InterruptedException -> L89
            com.tapjoy.internal.g4 r2 = (com.tapjoy.internal.g4) r2     // Catch: java.lang.InterruptedException -> L89
            int r3 = r2.i     // Catch: java.lang.InterruptedException -> L89
            goto L78
        L77:
            r3 = 0
        L78:
            long r2 = (long) r3     // Catch: java.lang.InterruptedException -> L89
            long r2 = r2 - r8
            int r3 = (int) r2     // Catch: java.lang.InterruptedException -> L89
            if (r3 <= 0) goto L8a
            long r4 = r10.h     // Catch: java.lang.InterruptedException -> L89
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L84
            goto L85
        L84:
            long r4 = (long) r3     // Catch: java.lang.InterruptedException -> L89
        L85:
            java.lang.Thread.sleep(r4)     // Catch: java.lang.InterruptedException -> L89
            goto L8a
        L89:
        L8a:
            boolean r0 = r10.f7949d
            if (r0 != 0) goto L0
            goto L91
        L8f:
            r10.f7949d = r4
        L91:
            boolean r0 = r10.f7951f
            if (r0 == 0) goto L9c
            android.os.Handler r0 = r10.c
            com.tapjoy.internal.h6 r1 = r10.j
            r0.post(r1)
        L9c:
            r0 = 0
            r10.f7952g = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.o7.run():void");
    }

    public void setBytes(byte[] bArr) {
        boolean z;
        s3 s3Var = new s3(new v());
        this.a = s3Var;
        try {
            synchronized (s3Var) {
                if (s3Var.h == null) {
                    s3Var.h = new j5();
                }
                j5 j5Var = s3Var.h;
                z = false;
                if (bArr != null) {
                    j5Var.getClass();
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    j5Var.b = null;
                    Arrays.fill(j5Var.a, (byte) 0);
                    j5Var.c = new s4();
                    j5Var.f7923d = 0;
                    ByteBuffer byteBufferAsReadOnlyBuffer = byteBufferWrap.asReadOnlyBuffer();
                    j5Var.b = byteBufferAsReadOnlyBuffer;
                    byteBufferAsReadOnlyBuffer.position(0);
                    j5Var.b.order(ByteOrder.LITTLE_ENDIAN);
                } else {
                    j5Var.b = null;
                    j5Var.c.b = 2;
                }
                s4 s4VarC = j5Var.c();
                s3Var.p = s4VarC;
                if (bArr != null) {
                    s3Var.c(s4VarC, bArr);
                }
            }
            boolean z2 = this.f7949d;
            if (z2) {
                a();
                return;
            }
            s3 s3Var2 = this.a;
            if (s3Var2.n == 0) {
                return;
            }
            if (-1 < s3Var2.p.c) {
                s3Var2.n = -1;
                z = true;
            }
            if (!z || z2) {
                return;
            }
            this.f7950e = true;
            a();
        } catch (Exception unused) {
            this.a = null;
        }
    }

    public void setFramesDisplayDuration(long j) {
        this.h = j;
    }

    public void setOnAnimationStop(s2 s2Var) {
    }

    public void setOnFrameAvailable(t2 t2Var) {
    }
}
