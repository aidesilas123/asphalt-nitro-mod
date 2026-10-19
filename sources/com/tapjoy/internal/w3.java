package com.tapjoy.internal;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class w3 extends q7 {
    public final /* synthetic */ q7 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w3(q7 q7Var, int i) {
        super(i, List.class);
        this.m = q7Var;
    }

    @Override // com.tapjoy.internal.q7
    public final int a(int i, Object obj) {
        List list = (List) obj;
        int size = list.size();
        int iA = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iA += this.m.a(i, list.get(i2));
        }
        return iA;
    }

    @Override // com.tapjoy.internal.q7
    public final int b(Object obj) {
        throw new UnsupportedOperationException("Repeated values can only be sized with a tag.");
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) {
        return Collections.singletonList(this.m.d(z7Var));
    }

    @Override // com.tapjoy.internal.q7
    public final void e(w5 w5Var, int i, Object obj) {
        List list = (List) obj;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.m.e(w5Var, i, list.get(i2));
        }
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        throw new UnsupportedOperationException("Repeated values can only be encoded with a tag.");
    }
}
