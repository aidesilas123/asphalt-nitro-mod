package com.bytedance.sdk.component.d.c;

import android.content.Context;
import com.bytedance.sdk.component.d.l;
import com.bytedance.sdk.component.d.m;
import com.bytedance.sdk.component.d.p;
import com.bytedance.sdk.component.d.q;
import com.bytedance.sdk.component.d.r;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: LoadConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements m {
    private l a;
    private ExecutorService b;
    private com.bytedance.sdk.component.d.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private q f973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private r f974e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.component.d.c f975f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private p f976g;
    private com.bytedance.sdk.component.d.b h;

    /* JADX INFO: compiled from: LoadConfig.java */
    public static class a {
        private l a;
        private ExecutorService b;
        private com.bytedance.sdk.component.d.d c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private q f977d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private r f978e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.bytedance.sdk.component.d.c f979f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private p f980g;
        private com.bytedance.sdk.component.d.b h;

        public a a(com.bytedance.sdk.component.d.b bVar) {
            this.h = bVar;
            return this;
        }

        public a a(com.bytedance.sdk.component.d.d dVar) {
            this.c = dVar;
            return this;
        }

        public a a(ExecutorService executorService) {
            this.b = executorService;
            return this;
        }

        public e a() {
            return new e(this);
        }
    }

    private e(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f973d = aVar.f977d;
        this.f974e = aVar.f978e;
        this.f975f = aVar.f979f;
        this.h = aVar.h;
        this.f976g = aVar.f980g;
    }

    public static e a(Context context) {
        return new a().a();
    }

    @Override // com.bytedance.sdk.component.d.m
    public l a() {
        return this.a;
    }

    @Override // com.bytedance.sdk.component.d.m
    public ExecutorService b() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.d.m
    public com.bytedance.sdk.component.d.d c() {
        return this.c;
    }

    @Override // com.bytedance.sdk.component.d.m
    public q d() {
        return this.f973d;
    }

    @Override // com.bytedance.sdk.component.d.m
    public r e() {
        return this.f974e;
    }

    @Override // com.bytedance.sdk.component.d.m
    public com.bytedance.sdk.component.d.c f() {
        return this.f975f;
    }

    @Override // com.bytedance.sdk.component.d.m
    public p g() {
        return this.f976g;
    }

    @Override // com.bytedance.sdk.component.d.m
    public com.bytedance.sdk.component.d.b h() {
        return this.h;
    }
}
