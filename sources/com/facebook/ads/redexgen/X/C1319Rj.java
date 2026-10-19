package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1319Rj extends AbstractC07714u implements InterfaceC1176Lw {
    public static String[] A0B = {"av2tITPhYKbVn20ukUfJR25ELbcgjHbj", "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ", "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC", "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b", "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8", "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4", "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi", "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"};
    public C1R A00;
    public AbstractC1284Qa A01;
    public C1285Qb A02;
    public C1285Qb A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final SparseBooleanArray A08;
    public final YA A09;
    public final AnonymousClass97 A0A;

    public C1319Rj(AnonymousClass97 anonymousClass97, SparseBooleanArray sparseBooleanArray, C1285Qb c1285Qb, int i, int i2, int i3, int i4, YA ya, C1R c1r) {
        super(anonymousClass97);
        this.A09 = ya;
        this.A0A = anonymousClass97;
        this.A08 = sparseBooleanArray;
        this.A02 = c1285Qb;
        this.A04 = i;
        this.A05 = i2;
        this.A06 = i3;
        this.A07 = i4;
        this.A00 = c1r;
    }

    private void A0A(InterfaceC1086If interfaceC1086If, LN ln, String str, PC pc) {
        if (this.A08.get(pc.A02())) {
            return;
        }
        C1285Qb c1285Qb = this.A03;
        if (c1285Qb != null) {
            c1285Qb.A0V();
            if (A0B[4].charAt(16) != 'E') {
                throw new RuntimeException();
            }
            A0B[4] = "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy";
            this.A03 = null;
        }
        this.A01 = new C1321Rl(this, str, pc, interfaceC1086If, pc.A04(), ln);
        C1285Qb c1285Qb2 = new C1285Qb(this.A0A, 10, new WeakReference(this.A01), this.A09);
        this.A03 = c1285Qb2;
        c1285Qb2.A0Y(false);
        this.A03.A0W(100);
        this.A03.A0X(100);
        this.A0A.setOnAssetsLoadedListener(new C1320Rk(this, pc));
    }

    public final void A0l(PC pc, InterfaceC1086If interfaceC1086If, C6Q c6q, LN ln, String str) {
        int iA02 = pc.A02();
        this.A0A.setTag(-1593835536, Integer.valueOf(iA02));
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(this.A04, -2);
        marginLayoutParams.setMargins(iA02 == 0 ? this.A05 : this.A06, 0, iA02 >= this.A07 + (-1) ? this.A05 : this.A06, 0);
        String strA07 = pc.A03().A0D().A07();
        String strA08 = pc.A03().A0D().A08();
        this.A0A.setIsVideo(!TextUtils.isEmpty(strA08));
        if (this.A0A.A17()) {
            this.A0A.setVideoPlaceholderUrl(strA07);
            this.A0A.setVideoUrl(c6q.A0S(strA08));
        } else {
            this.A0A.setImageUrl(strA07);
        }
        this.A0A.setLayoutParams(marginLayoutParams);
        this.A0A.setAdTitleAndDescription(pc.A03().A0E().A06(), pc.A03().A0E().A01());
        this.A0A.setCTAInfo(pc.A03().A0F(), pc.A04());
        this.A0A.A19(pc.A04());
        A0A(interfaceC1086If, ln, str, pc);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1176Lw
    public final void AF5(NR nr) {
        this.A0A.setAdDetailsClickListener(nr);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1176Lw
    public final void AF7() {
        this.A0A.A12();
    }
}
