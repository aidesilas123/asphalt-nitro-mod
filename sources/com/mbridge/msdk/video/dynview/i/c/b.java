package com.mbridge.msdk.video.dynview.i.c;

import android.os.CountDownTimer;

/* JADX INFO: compiled from: MBCountDownTimer.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private long a = 0;
    private long b;
    private com.mbridge.msdk.video.dynview.i.c.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7530d;

    /* JADX INFO: compiled from: MBCountDownTimer.java */
    private static class a extends CountDownTimer {
        private com.mbridge.msdk.video.dynview.i.c.a a;

        public a(long j, long j2) {
            super(j, j2);
        }

        final void a(com.mbridge.msdk.video.dynview.i.c.a aVar) {
            this.a = aVar;
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            com.mbridge.msdk.video.dynview.i.c.a aVar = this.a;
            if (aVar != null) {
                aVar.a();
            }
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
            com.mbridge.msdk.video.dynview.i.c.a aVar = this.a;
            if (aVar != null) {
                aVar.a(j);
            }
        }
    }

    private void c() {
        a aVar = this.f7530d;
        if (aVar != null) {
            aVar.cancel();
            this.f7530d = null;
        }
        if (this.b <= 0) {
            this.b = this.a + 1000;
        }
        a aVar2 = new a(this.a, this.b);
        this.f7530d = aVar2;
        aVar2.a(this.c);
    }

    public final b a(long j) {
        if (j < 0) {
            j = 1000;
        }
        this.b = j;
        return this;
    }

    public final b a(com.mbridge.msdk.video.dynview.i.c.a aVar) {
        this.c = aVar;
        return this;
    }

    public final void a() {
        if (this.f7530d == null) {
            c();
        }
        this.f7530d.start();
    }

    public final void a(long j, com.mbridge.msdk.video.dynview.i.c.a aVar) {
        this.a = j;
        this.c = aVar;
        c();
        a aVar2 = this.f7530d;
        if (aVar2 != null) {
            aVar2.start();
        }
    }

    public final b b(long j) {
        this.a = j;
        return this;
    }

    public final void b() {
        a aVar = this.f7530d;
        if (aVar != null) {
            aVar.cancel();
            this.f7530d = null;
        }
    }
}
