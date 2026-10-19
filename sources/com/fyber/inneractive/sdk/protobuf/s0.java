package com.fyber.inneractive.sdk.protobuf;

import com.fyber.inneractive.sdk.protobuf.GeneratedMessageLite;
import com.fyber.inneractive.sdk.protobuf.a0;
import com.fyber.inneractive.sdk.protobuf.r1;
import com.fyber.inneractive.sdk.protobuf.u;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class s0<T> implements d1<T> {
    public final o0 a;
    public final k1<?, ?> b;
    public final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final r<?> f2705d;

    public s0(k1<?, ?> k1Var, r<?> rVar, o0 o0Var) {
        this.b = k1Var;
        this.c = rVar.a(o0Var);
        this.f2705d = rVar;
        this.a = o0Var;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public T a() {
        return (T) ((GeneratedMessageLite.b) this.a.newBuilderForType()).b();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void a(T t, c1 c1Var, q qVar) throws IOException {
        k1<?, ?> k1Var = this.b;
        r<?> rVar = this.f2705d;
        Object objA = k1Var.a(t);
        u uVarB = rVar.b(t);
        while (c1Var.s() != Integer.MAX_VALUE && a(c1Var, qVar, rVar, uVarB, k1Var, objA)) {
            try {
            } finally {
                k1Var.b(t, (Object) objA);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void a(T t, s1 s1Var) throws IOException {
        Iterator itF = this.f2705d.a(t).f();
        while (itF.hasNext()) {
            Map.Entry entry = (Map.Entry) itF.next();
            u.b bVar = (u.b) entry.getKey();
            if (bVar.d() != r1.c.MESSAGE || bVar.b() || bVar.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof a0.a) {
                ((m) s1Var).a(bVar.a(), ((a0.a) entry).a.getValue().a());
            } else {
                ((m) s1Var).a(bVar.a(), entry.getValue());
            }
        }
        k1<?, ?> k1Var = this.b;
        k1Var.a(k1Var.b(t), s1Var);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void a(T t, T t2) {
        k1<?, ?> k1Var = this.b;
        Class<?> cls = f1.a;
        k1Var.c(t, k1Var.a(k1Var.b(t), k1Var.b(t2)));
        if (this.c) {
            r<?> rVar = this.f2705d;
            u<T> uVarA = rVar.a(t2);
            if (uVarA.a.isEmpty()) {
                return;
            }
            rVar.b(t).a((u) uVarA);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b9 A[EDGE_INSN: B:58:0x00b9->B:34:0x00b9 BREAK  A[LOOP:1: B:18:0x0063->B:61:0x0063], SYNTHETIC] */
    @Override // com.fyber.inneractive.sdk.protobuf.d1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(T r11, byte[] r12, int r13, int r14, com.fyber.inneractive.sdk.protobuf.e.b r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 205
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.protobuf.s0.a(java.lang.Object, byte[], int, int, com.fyber.inneractive.sdk.protobuf.e$b):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <UT, UB, ET extends u.b<ET>> boolean a(c1 c1Var, q qVar, r<ET> rVar, u<ET> uVar, k1<UT, UB> k1Var, UB ub) throws IOException {
        int iE = c1Var.e();
        if (iE != r1.a) {
            if ((iE & 7) != 2) {
                return c1Var.i();
            }
            Object objA = rVar.a(qVar, this.a, iE >>> 3);
            if (objA == null) {
                return k1Var.a(ub, c1Var);
            }
            rVar.a(c1Var, objA, qVar, uVar);
            return true;
        }
        int iC = 0;
        Object objA2 = null;
        i iVarA = null;
        while (c1Var.s() != Integer.MAX_VALUE) {
            int iE2 = c1Var.e();
            if (iE2 == r1.c) {
                iC = c1Var.c();
                objA2 = rVar.a(qVar, this.a, iC);
            } else if (iE2 == r1.f2704d) {
                if (objA2 != null) {
                    rVar.a(c1Var, objA2, qVar, uVar);
                } else {
                    iVarA = c1Var.a();
                }
            } else if (!c1Var.i()) {
                break;
            }
        }
        if (c1Var.e() != r1.b) {
            throw z.a();
        }
        if (iVarA != null) {
            if (objA2 != null) {
                rVar.a(iVarA, objA2, qVar, uVar);
            } else {
                k1Var.a(ub, iC, iVarA);
            }
        }
        return true;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public final boolean a(T t) {
        return this.f2705d.a(t).e();
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public int b(T t) {
        k1<?, ?> k1Var = this.b;
        int iD = k1Var.d(k1Var.b(t)) + 0;
        return this.c ? iD + this.f2705d.a(t).c() : iD;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public boolean b(T t, T t2) {
        if (!this.b.b(t).equals(this.b.b(t2))) {
            return false;
        }
        if (this.c) {
            return this.f2705d.a(t).equals(this.f2705d.a(t2));
        }
        return true;
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public void c(T t) {
        this.b.e(t);
        this.f2705d.c(t);
    }

    @Override // com.fyber.inneractive.sdk.protobuf.d1
    public int d(T t) {
        int iHashCode = this.b.b(t).hashCode();
        return this.c ? (iHashCode * 53) + this.f2705d.a(t).a.hashCode() : iHashCode;
    }
}
