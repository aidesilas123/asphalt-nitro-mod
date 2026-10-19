package com.bytedance.sdk.component.f;

import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.component.b.a.h;
import com.bytedance.sdk.component.b.a.k;
import com.bytedance.sdk.component.f.b.d;
import com.bytedance.sdk.component.f.c.f;
import com.bytedance.sdk.component.f.c.g;
import com.bytedance.sdk.component.f.d.c;
import com.bytedance.sdk.component.utils.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: NetClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private k a;
    private f b;
    private int c;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.f.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: NetClient.java */
    public static final class C0118a {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Set<String> f1041f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Bundle f1042g;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f1039d = true;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final List<h> f1040e = new ArrayList();
        int a = 10000;
        int b = 10000;
        int c = 10000;

        private static int a(String str, long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            Objects.requireNonNull(timeUnit, "unit == null");
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(str + " too large.");
            }
            if (millis != 0 || j <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(str + " too small.");
        }

        public C0118a a(long j, TimeUnit timeUnit) {
            this.a = a("timeout", j, timeUnit);
            return this;
        }

        public C0118a a(boolean z) {
            this.f1039d = z;
            return this;
        }

        public a a() {
            return new a(this);
        }

        public C0118a b(long j, TimeUnit timeUnit) {
            this.b = a("timeout", j, timeUnit);
            return this;
        }

        public C0118a c(long j, TimeUnit timeUnit) {
            this.c = a("timeout", j, timeUnit);
            return this;
        }
    }

    private a(C0118a c0118a) {
        k.a aVar = new k.a();
        long j = c0118a.a;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        k.a aVarB = aVar.a(j, timeUnit).c(c0118a.c, timeUnit).b(c0118a.b, timeUnit);
        if (c0118a.f1039d) {
            f fVar = new f();
            this.b = fVar;
            aVarB.a(fVar);
        }
        List<h> list = c0118a.f1040e;
        if (list != null && list.size() > 0) {
            Iterator<h> it = c0118a.f1040e.iterator();
            while (it.hasNext()) {
                aVarB.a(it.next());
            }
        }
        if (c0118a.f1042g != null) {
            aVarB.a(c0118a.f1042g);
        }
        aVarB.a(c0118a.f1041f);
        this.a = aVarB.a();
    }

    public static void a() {
        c.a(c.a.DEBUG);
    }

    private static boolean a(Context context) {
        String strB = q.b(context);
        return strB != null && (strB.endsWith(":push") || strB.endsWith(":pushservice"));
    }

    public void a(Context context, boolean z) {
        com.bytedance.sdk.component.f.c.a.b(true);
        if (a(context) || (!q.a(context) && z)) {
            g.a().a(this.c, context).d();
            g.a().a(this.c, context).a();
        }
        if (q.a(context)) {
            g.a().a(this.c, context).d();
            g.a().a(this.c, context).a();
        }
    }

    public void a(Context context, boolean z, com.bytedance.sdk.component.f.c.b bVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
        }
        int iA = bVar.a();
        this.c = iA;
        f fVar = this.b;
        if (fVar != null) {
            fVar.a(iA);
        }
        g.a().a(this.c).a(z);
        g.a().a(this.c).a(bVar);
        g.a().a(this.c).a(context, q.a(context));
    }

    public d b() {
        return new d(this.a);
    }

    public com.bytedance.sdk.component.f.b.b c() {
        return new com.bytedance.sdk.component.f.b.b(this.a);
    }

    public com.bytedance.sdk.component.f.b.a d() {
        return new com.bytedance.sdk.component.f.b.a(this.a);
    }

    public k e() {
        return this.a;
    }
}
