package com.tapjoy.internal;

import android.os.Handler;

/* JADX INFO: loaded from: classes4.dex */
public class g2 implements a2 {
    public static final p a = new p();
    public final a2 b;
    public final u3 c;

    public g2() {
        this.b = null;
        this.c = null;
    }

    public g2(k9 k9Var) {
        this.b = k9Var;
        Handler handlerA = w2.a();
        if (handlerA != null) {
            this.c = w2.a(handlerA);
            handlerA.getLooper();
        } else if (Thread.currentThread() == h.a()) {
            this.c = h.c;
        } else {
            this.c = w2.a(w2.b());
        }
    }

    public static g2 a(k9 k9Var) {
        if (!(k9Var instanceof g2)) {
            return k9Var != null ? new g2(k9Var) : a;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.tapjoy.internal.a2
    public void a(String str) {
        this.c.a(new i0(this, str));
    }

    @Override // com.tapjoy.internal.a2
    public void a(String str, a aVar) {
        this.c.a(new q0(this, str, aVar));
    }

    @Override // com.tapjoy.internal.a2
    public void a(String str, String str2, a aVar) {
        this.c.a(new v0(this, str, str2, aVar));
    }

    @Override // com.tapjoy.internal.a2
    public void b(String str) {
        this.c.a(new x(this, str));
    }
}
