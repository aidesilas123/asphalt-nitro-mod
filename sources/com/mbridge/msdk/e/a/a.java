package com.mbridge.msdk.e.a;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: Cache.java */
/* JADX INFO: loaded from: classes4.dex */
public interface a {

    /* JADX INFO: renamed from: com.mbridge.msdk.e.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Cache.java */
    public static class C0396a {
        public byte[] a;
        public String b;
        public long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f6936d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f6937e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f6938f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Map<String, String> f6939g = Collections.emptyMap();
        public List<g> h;

        final boolean a(long j) {
            return this.f6937e < j;
        }
    }

    C0396a a(String str);

    void a();

    void a(String str, C0396a c0396a);

    void a(String str, boolean z);
}
