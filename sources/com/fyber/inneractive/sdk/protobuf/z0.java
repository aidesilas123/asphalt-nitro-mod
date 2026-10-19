package com.fyber.inneractive.sdk.protobuf;

import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public final class z0 {
    public static final z0 c = new z0();
    public final ConcurrentMap<Class<?>, d1<?>> b = new ConcurrentHashMap();
    public final e1 a = new g0();

    public <T> d1<T> a(Class<T> cls) {
        r0 r0VarA;
        d1<T> d1Var;
        s0 s0Var;
        Charset charset = y.a;
        Objects.requireNonNull(cls, "messageType");
        d1<T> d1Var2 = (d1) this.b.get(cls);
        if (d1Var2 != null) {
            return d1Var2;
        }
        g0 g0Var = (g0) this.a;
        g0Var.getClass();
        Class<?> cls2 = f1.a;
        if (!GeneratedMessageLite.class.isAssignableFrom(cls) && cls2 != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
        m0 m0VarB = g0Var.a.b(cls);
        if (m0VarB.c()) {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                s0Var = new s0(f1.f2664d, t.a, m0VarB.b());
            } else {
                k1<?, ?> k1Var = f1.b;
                r<?> rVar = t.b;
                if (rVar == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                s0Var = new s0(k1Var, rVar, m0VarB.b());
            }
            d1Var = s0Var;
        } else {
            if (GeneratedMessageLite.class.isAssignableFrom(cls)) {
                r0VarA = m0VarB.a() == y0.PROTO2 ? r0.a(m0VarB, v0.b, e0.b, f1.f2664d, t.a, l0.b) : r0.a(m0VarB, v0.b, e0.b, f1.f2664d, (r) null, l0.b);
            } else {
                if (m0VarB.a() == y0.PROTO2) {
                    t0 t0Var = v0.a;
                    e0 e0Var = e0.a;
                    k1<?, ?> k1Var2 = f1.b;
                    r<?> rVar2 = t.b;
                    if (rVar2 == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    r0VarA = r0.a(m0VarB, t0Var, e0Var, k1Var2, rVar2, l0.a);
                } else {
                    r0VarA = r0.a(m0VarB, v0.a, e0.a, f1.c, (r) null, l0.a);
                }
            }
            d1Var = r0VarA;
        }
        d1<T> d1Var3 = (d1) this.b.putIfAbsent(cls, d1Var);
        return d1Var3 != null ? d1Var3 : d1Var;
    }
}
