package org.greenrobot.eventbus;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: SubscriberMethod.java */
/* JADX INFO: loaded from: classes5.dex */
public class m {
    final Method a;
    final ThreadMode b;
    final Class<?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f10944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final boolean f10945e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    String f10946f;

    public m(Method method, Class<?> cls, ThreadMode threadMode, int i, boolean z) {
        this.a = method;
        this.b = threadMode;
        this.c = cls;
        this.f10944d = i;
        this.f10945e = z;
    }

    private synchronized void a() {
        if (this.f10946f == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.a.getName());
            sb.append('(');
            sb.append(this.c.getName());
            this.f10946f = sb.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        a();
        m mVar = (m) obj;
        mVar.a();
        return this.f10946f.equals(mVar.f10946f);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
