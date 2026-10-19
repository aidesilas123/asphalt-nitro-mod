package com.facebook.ads.redexgen.X;

import android.util.SparseArray;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ck, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0944Ck {
    public static String[] A0I = {"F0jWKjQTCy62z5RMZ8LXaJxAHVXVw03", "jefijzmMiLSAGWVfBYlCHQnNu7WiK65", "5NKy3uod9nHosUme2DvPYxtYVEy", "OBCuuRHFU9olC8zTnYpCIYDmocSOdWsL", "GchpYIdYbHeAJ5Ou", "h9yGOulo4c92iX", "0WO8HWLEfGPVrZyS", "YTVxkuYMC8IrkJuZM8HCcFhUbHlAsN8p"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public byte[] A0B;
    public final InterfaceC0930Bm A0E;
    public final C1063Hi A0F;
    public final boolean A0G;
    public final boolean A0H;
    public final SparseArray<C1057Hc> A0D = new SparseArray<>();
    public final SparseArray<C1056Hb> A0C = new SparseArray<>();
    public C0943Cj A06 = new C0943Cj();
    public C0943Cj A07 = new C0943Cj();

    public C0944Ck(InterfaceC0930Bm interfaceC0930Bm, boolean z, boolean z2) {
        this.A0E = interfaceC0930Bm;
        this.A0G = z;
        this.A0H = z2;
        byte[] bArr = new byte[128];
        this.A0B = bArr;
        this.A0F = new C1063Hi(bArr, 0, 0);
        A01();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void A00(int i) {
        boolean z = this.A0A;
        this.A0E.AEs(this.A05, z ? 1 : 0, (int) (this.A02 - this.A04), i, null);
    }

    public final void A01() {
        this.A08 = false;
        this.A09 = false;
        this.A07.A02();
    }

    public final void A02(long j, int i) {
        boolean z = false;
        if (this.A01 == 9 || (this.A0H && this.A07.A00(this.A06))) {
            boolean z2 = this.A09;
            String[] strArr = A0I;
            if (strArr[0].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0I[2] = "rg9RD6QhDdRr";
            if (z2) {
                A00(i + ((int) (j - this.A02)));
            }
            this.A04 = this.A02;
            this.A05 = this.A03;
            this.A0A = false;
            this.A09 = true;
        }
        boolean z3 = this.A0A;
        int i2 = this.A01;
        if (i2 == 5 || (this.A0G && i2 == 1 && this.A07.A05())) {
            z = true;
        }
        this.A0A = z3 | z;
    }

    public final void A03(long j, int i, long j2) {
        this.A01 = i;
        this.A03 = j2;
        this.A02 = j;
        if (!this.A0G || i != 1) {
            if (!this.A0H) {
                return;
            }
            if (i != 5 && i != 1 && i != 2) {
                return;
            }
        }
        C0943Cj c0943Cj = this.A06;
        this.A06 = this.A07;
        this.A07 = c0943Cj;
        c0943Cj.A02();
        this.A00 = 0;
        this.A08 = true;
    }

    public final void A04(C1056Hb c1056Hb) {
        this.A0C.append(c1056Hb.A00, c1056Hb);
    }

    public final void A05(C1057Hc c1057Hc) {
        this.A0D.append(c1057Hc.A05, c1057Hc);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A06(byte[] r23, int r24, int r25) {
        /*
            Method dump skipped, instruction units count: 467
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0944Ck.A06(byte[], int, int):void");
    }

    public final boolean A07() {
        return this.A0H;
    }
}
