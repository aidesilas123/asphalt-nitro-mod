package com.mbridge.msdk.dycreator.bus;

import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
final class SubscriberMethod {
    final Method a;
    final ThreadMode b;
    final Class<?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f6917d;

    SubscriberMethod(Method method, ThreadMode threadMode, Class<?> cls) {
        this.a = method;
        this.b = threadMode;
        this.c = cls;
    }

    private synchronized void a() {
        if (this.f6917d == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#');
            sb.append(this.a.getName());
            sb.append('(');
            sb.append(this.c.getName());
            this.f6917d = sb.toString();
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SubscriberMethod)) {
            return false;
        }
        a();
        return this.f6917d.equals(((SubscriberMethod) obj).f6917d);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
