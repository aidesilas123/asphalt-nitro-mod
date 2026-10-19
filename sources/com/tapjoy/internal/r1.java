package com.tapjoy.internal;

/* JADX INFO: loaded from: classes4.dex */
public enum r1 implements xa {
    APP(0),
    CAMPAIGN(1),
    CUSTOM(2),
    USAGES(3);


    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7975f;

    static {
        new q7() { // from class: com.tapjoy.internal.u5
            @Override // com.tapjoy.internal.q7
            public final int b(Object obj) {
                return w5.a(((r1) ((xa) obj)).f7975f);
            }

            @Override // com.tapjoy.internal.q7
            public final Object d(z7 z7Var) {
                int iJ = z7Var.j();
                r1 r1Var = iJ != 0 ? iJ != 1 ? iJ != 2 ? iJ != 3 ? null : r1.USAGES : r1.CUSTOM : r1.CAMPAIGN : r1.APP;
                if (r1Var != null) {
                    return r1Var;
                }
                throw new h7(iJ, this.k);
            }

            @Override // com.tapjoy.internal.q7
            public final void f(w5 w5Var, Object obj) {
                w5Var.e(((r1) ((xa) obj)).f7975f);
            }
        };
    }

    r1(int i) {
        this.f7975f = i;
    }
}
