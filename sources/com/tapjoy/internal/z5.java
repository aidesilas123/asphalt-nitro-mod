package com.tapjoy.internal;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z5 implements Serializable {
    public final transient c1 a;
    public transient int b = 0;

    public z5(q7 q7Var, c1 c1Var) {
        Objects.requireNonNull(c1Var, "unknownFields == null");
        this.a = c1Var;
    }

    public final c1 c() {
        c1 c1Var = this.a;
        return c1Var != null ? c1Var : c1.b;
    }
}
