package com.bytedance.sdk.openadsdk.b.d.b;

import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: VideoLogHelperModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {
    private long a;
    private String b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bykv.vk.openvk.component.video.api.c.c f1223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private q f1224e;

    /* JADX INFO: compiled from: VideoLogHelperModel.java */
    public static class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1226e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1227f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f1228g;
        private int h;
        private int i;
        private com.bykv.vk.openvk.component.video.api.c.a k;
        private long a = 0;
        private long b = 0;
        private long c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1225d = false;
        private boolean j = false;

        private void m() {
            long j = this.c;
            if (j > 0) {
                long j2 = this.a;
                if (j2 > j) {
                    this.a = j2 % j;
                }
            }
        }

        public long a() {
            return this.a;
        }

        public void a(int i) {
            this.f1226e = i;
        }

        public void a(long j) {
            this.a = j;
            m();
        }

        public void a(com.bykv.vk.openvk.component.video.api.c.a aVar) {
            this.k = aVar;
        }

        public void a(boolean z) {
            this.f1225d = z;
        }

        public long b() {
            return this.b;
        }

        public void b(int i) {
            this.f1227f = i;
        }

        public void b(long j) {
            this.b = j;
        }

        public long c() {
            return this.c;
        }

        public void c(int i) {
            this.f1228g = i;
        }

        public void c(long j) {
            this.c = j;
            m();
        }

        public int d() {
            return this.f1226e;
        }

        public void d(int i) {
            this.i = i;
        }

        public int e() {
            return this.f1227f;
        }

        public int f() {
            long j = this.c;
            if (j <= 0) {
                return 0;
            }
            return Math.min((int) ((this.a * 100) / j), 100);
        }

        public int g() {
            return this.f1228g;
        }

        public int h() {
            return this.h;
        }

        public int i() {
            return this.i;
        }

        public boolean j() {
            return this.j;
        }

        public boolean k() {
            return this.f1225d;
        }

        public com.bykv.vk.openvk.component.video.api.c.a l() {
            return this.k;
        }
    }

    public o(long j, String str, int i, com.bykv.vk.openvk.component.video.api.c.c cVar, q qVar) {
        this.a = j;
        this.b = str;
        this.c = i;
        this.f1223d = cVar;
        this.f1224e = qVar;
    }

    public long a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public com.bykv.vk.openvk.component.video.api.c.c d() {
        return this.f1223d;
    }

    public q e() {
        return this.f1224e;
    }
}
