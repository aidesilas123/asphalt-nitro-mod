package com.bytedance.sdk.component.b.a;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: OkHttpClient.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class k implements Cloneable {
    public List<h> a;
    public long b;
    public TimeUnit c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TimeUnit f915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public TimeUnit f917g;

    /* JADX INFO: compiled from: OkHttpClient.java */
    public static final class a {
        public final List<h> a;
        public long b;
        public TimeUnit c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f918d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TimeUnit f919e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f920f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public TimeUnit f921g;

        public a() {
            this.a = new ArrayList();
            this.b = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.c = timeUnit;
            this.f918d = 10000L;
            this.f919e = timeUnit;
            this.f920f = 10000L;
            this.f921g = timeUnit;
        }

        public a(k kVar) {
            this.a = new ArrayList();
            this.b = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.c = timeUnit;
            this.f918d = 10000L;
            this.f919e = timeUnit;
            this.f920f = 10000L;
            this.f921g = timeUnit;
            this.b = kVar.b;
            this.c = kVar.c;
            this.f918d = kVar.f914d;
            this.f919e = kVar.f915e;
            this.f920f = kVar.f916f;
            this.f921g = kVar.f917g;
        }

        public a(String str) {
            this.a = new ArrayList();
            this.b = 10000L;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.c = timeUnit;
            this.f918d = 10000L;
            this.f919e = timeUnit;
            this.f920f = 10000L;
            this.f921g = timeUnit;
        }

        public a a(long j, TimeUnit timeUnit) {
            this.b = j;
            this.c = timeUnit;
            return this;
        }

        public a a(Bundle bundle) {
            return this;
        }

        public a a(h hVar) {
            this.a.add(hVar);
            return this;
        }

        public a a(Set<String> set) {
            return this;
        }

        public k a() {
            return com.bytedance.sdk.component.b.a.a.a.a(this);
        }

        public a b(long j, TimeUnit timeUnit) {
            this.f918d = j;
            this.f919e = timeUnit;
            return this;
        }

        public a c(long j, TimeUnit timeUnit) {
            this.f920f = j;
            this.f921g = timeUnit;
            return this;
        }
    }

    public k(a aVar) {
        this.b = aVar.b;
        this.f914d = aVar.f918d;
        this.f916f = aVar.f920f;
        List<h> list = aVar.a;
        this.a = list;
        this.c = aVar.c;
        this.f915e = aVar.f919e;
        this.f917g = aVar.f921g;
        this.a = list;
    }

    public abstract b a(m mVar);

    public abstract d a();

    public a b() {
        return new a(this);
    }
}
