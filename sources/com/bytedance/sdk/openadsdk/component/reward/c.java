package com.bytedance.sdk.openadsdk.component.reward;

import android.os.CountDownTimer;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import java.util.Map;

/* JADX INFO: compiled from: FakeVideoController.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements com.bykv.vk.openvk.component.video.api.d.c {
    private final a a;
    private boolean b = true;
    private long c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1349d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q f1351f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.bykv.vk.openvk.component.video.api.b.a f1352g;

    /* JADX INFO: compiled from: FakeVideoController.java */
    private static class a implements com.bykv.vk.openvk.component.video.api.a {
        private final long a;
        private long b;
        private int c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private CountDownTimer f1353d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c.a f1354e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f1355f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final com.bykv.vk.openvk.component.video.api.b.a f1356g;
        private final com.bytedance.sdk.openadsdk.b.g h;

        public a(long j, com.bykv.vk.openvk.component.video.api.b.a aVar, com.bytedance.sdk.openadsdk.b.g gVar) {
            this.a = j;
            this.f1356g = aVar;
            this.h = gVar;
        }

        public void a(long j) {
            this.b = j;
        }

        public void a(c.a aVar) {
            this.f1354e = aVar;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean a() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean b() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean c() {
            return false;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public int d() {
            return 0;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public int e() {
            return 0;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean f() {
            return this.c == 1;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean g() {
            return this.c == 2;
        }

        @Override // com.bykv.vk.openvk.component.video.api.a
        public boolean h() {
            return this.c == 0;
        }

        public void i() {
            if (this.c == 1) {
                return;
            }
            this.c = 1;
            final long jN = n();
            final long j = jN - this.b;
            CountDownTimer countDownTimer = new CountDownTimer(j, 200L) { // from class: com.bytedance.sdk.openadsdk.component.reward.c.a.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    a.this.c = 4;
                    if (a.this.f1354e != null) {
                        a.this.f1354e.a(a.this.o(), 100);
                    }
                    o.a aVar = new o.a();
                    aVar.a(jN);
                    aVar.c(jN);
                    aVar.b(a.this.l());
                    aVar.d(a.this.m());
                    com.bytedance.sdk.openadsdk.b.d.a.a.b(a.this.f1356g, aVar, a.this.h);
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j2) {
                    long j3 = (j - j2) + a.this.b;
                    a.this.f1355f = j3;
                    if (a.this.f1354e != null) {
                        a.this.f1354e.a(j3, jN);
                    }
                }
            };
            this.f1353d = countDownTimer;
            countDownTimer.start();
        }

        public void j() {
            this.c = 2;
            this.b = this.f1355f;
            CountDownTimer countDownTimer = this.f1353d;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f1353d = null;
            }
        }

        public void k() {
            this.c = 0;
            CountDownTimer countDownTimer = this.f1353d;
            if (countDownTimer != null) {
                countDownTimer.cancel();
                this.f1353d = null;
            }
            if (this.f1354e != null) {
                this.f1354e = null;
            }
        }

        public long l() {
            return 0L;
        }

        public int m() {
            return 0;
        }

        public long n() {
            return this.a;
        }

        public long o() {
            return this.f1355f;
        }
    }

    public c(q qVar, com.bytedance.sdk.openadsdk.b.g gVar) {
        com.bykv.vk.openvk.component.video.api.b.a aVar = new com.bykv.vk.openvk.component.video.api.b.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.1
        };
        this.f1352g = aVar;
        this.f1351f = qVar;
        com.bykv.vk.openvk.component.video.api.c.b bVarK = qVar.K();
        long j = 10;
        long jF = bVarK != null ? (long) bVarK.f() : 10L;
        if (jF <= 0) {
            bVarK.a(10L);
        } else {
            j = jF;
        }
        this.a = new a(j * 1000, aVar, gVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a() {
        this.a.j();
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h());
        aVar.b(f());
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1352g, aVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(long j) {
        this.a.a(j);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(c.a aVar) {
        this.a.a(aVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(c.b bVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(c.d dVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(Map<String, Object> map) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(boolean z) {
        this.b = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(boolean z, int i) {
        c();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        this.f1349d = cVar.h();
        if (cVar.g() > 0) {
            this.a.a(cVar.g());
        }
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1351f, this.f1352g, cVar);
        this.a.i();
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b() {
        this.a.i();
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h());
        aVar.b(f());
        com.bytedance.sdk.openadsdk.b.d.a.a.b(this.f1352g, aVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b(long j) {
        this.c = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b(com.bykv.vk.openvk.component.video.api.c.c cVar) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b(boolean z) {
        this.f1349d = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c() {
        this.a.k();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c(long j) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c(boolean z) {
        this.f1350e = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void d() {
        c();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void d(boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public long e() {
        return this.a.o();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void e(boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public long f() {
        return 0L;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public int g() {
        return 0;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public long h() {
        return this.a.n();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public long i() {
        return e();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public int j() {
        return com.bykv.vk.openvk.component.video.a.e.a.a(this.a.f1355f, this.a.a);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean k() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public com.bykv.vk.openvk.component.video.api.a l() {
        return this.a;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public com.bykv.vk.openvk.component.video.api.d.b m() {
        return null;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean n() {
        return this.f1349d;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean o() {
        return this.f1350e;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean p() {
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean q() {
        return false;
    }

    public com.bykv.vk.openvk.component.video.api.b.a r() {
        return this.f1352g;
    }
}
