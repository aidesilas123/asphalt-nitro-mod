package com.applovin.exoplayer2.i.c;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.i.d;
import com.applovin.exoplayer2.i.f;
import com.applovin.exoplayer2.i.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
public final class a extends d {
    private final y Rd;
    private final C0046a Re;

    @Nullable
    private Inflater Rf;
    private final y vN;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.c.a$a, reason: collision with other inner class name */
    private static final class C0046a {
        private final y Rg = new y();
        private final int[] Rh = new int[256];
        private boolean Ri;
        private int Rj;
        private int Rk;
        private int Rl;
        private int Rm;
        private int Rn;
        private int Ro;

        /* JADX INFO: Access modifiers changed from: private */
        public void A(y yVar, int i) {
            if (i % 5 != 2) {
                return;
            }
            yVar.fz(2);
            Arrays.fill(this.Rh, 0);
            int i2 = i / 5;
            int i3 = 0;
            while (i3 < i2) {
                int iPo = yVar.po();
                int iPo2 = yVar.po();
                int iPo3 = yVar.po();
                int iPo4 = yVar.po();
                int iPo5 = yVar.po();
                double d2 = iPo2;
                double d3 = iPo3 - 128;
                int i4 = (int) ((1.402d * d3) + d2);
                int i5 = i3;
                double d4 = iPo4 - 128;
                this.Rh[iPo] = ai.k((int) (d2 + (d4 * 1.772d)), 0, 255) | (ai.k((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255) << 8) | (iPo5 << 24) | (ai.k(i4, 0, 255) << 16);
                i3 = i5 + 1;
            }
            this.Ri = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(y yVar, int i) {
            int iPt;
            if (i < 4) {
                return;
            }
            yVar.fz(3);
            int i2 = i - 4;
            if ((yVar.po() & 128) != 0) {
                if (i2 < 7 || (iPt = yVar.pt()) < 4) {
                    return;
                }
                this.Rn = yVar.pp();
                this.Ro = yVar.pp();
                this.Rg.U(iPt - 4);
                i2 -= 7;
            }
            int iIl = this.Rg.il();
            int iPk = this.Rg.pk();
            if (iIl >= iPk || i2 <= 0) {
                return;
            }
            int iMin = Math.min(i2, iPk - iIl);
            yVar.r(this.Rg.hO(), iIl, iMin);
            this.Rg.fx(iIl + iMin);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void C(y yVar, int i) {
            if (i < 19) {
                return;
            }
            this.Rj = yVar.pp();
            this.Rk = yVar.pp();
            yVar.fz(11);
            this.Rl = yVar.pp();
            this.Rm = yVar.pp();
        }

        public void Y() {
            this.Rj = 0;
            this.Rk = 0;
            this.Rl = 0;
            this.Rm = 0;
            this.Rn = 0;
            this.Ro = 0;
            this.Rg.U(0);
            this.Ri = false;
        }

        @Nullable
        public com.applovin.exoplayer2.i.a lU() {
            int iPo;
            if (this.Rj == 0 || this.Rk == 0 || this.Rn == 0 || this.Ro == 0 || this.Rg.pk() == 0 || this.Rg.il() != this.Rg.pk() || !this.Ri) {
                return null;
            }
            this.Rg.fx(0);
            int i = this.Rn * this.Ro;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int iPo2 = this.Rg.po();
                if (iPo2 != 0) {
                    iPo = i2 + 1;
                    iArr[i2] = this.Rh[iPo2];
                } else {
                    int iPo3 = this.Rg.po();
                    if (iPo3 != 0) {
                        iPo = ((iPo3 & 64) == 0 ? iPo3 & 63 : ((iPo3 & 63) << 8) | this.Rg.po()) + i2;
                        Arrays.fill(iArr, i2, iPo, (iPo3 & 128) == 0 ? 0 : this.Rh[this.Rg.po()]);
                    }
                }
                i2 = iPo;
            }
            return new a.C0041a().a(Bitmap.createBitmap(iArr, this.Rn, this.Ro, Bitmap.Config.ARGB_8888)).o(this.Rl / this.Rj).eg(0).b(this.Rm / this.Rk, 0).ef(0).p(this.Rn / this.Rj).q(this.Ro / this.Rk).lU();
        }
    }

    public a() {
        super("PgsDecoder");
        this.vN = new y();
        this.Rd = new y();
        this.Re = new C0046a();
    }

    @Nullable
    private static com.applovin.exoplayer2.i.a a(y yVar, C0046a c0046a) {
        int iPk = yVar.pk();
        int iPo = yVar.po();
        int iPp = yVar.pp();
        int iIl = yVar.il() + iPp;
        com.applovin.exoplayer2.i.a aVarLU = null;
        if (iIl > iPk) {
            yVar.fx(iPk);
            return null;
        }
        if (iPo != 128) {
            switch (iPo) {
                case 20:
                    c0046a.A(yVar, iPp);
                    break;
                case 21:
                    c0046a.B(yVar, iPp);
                    break;
                case 22:
                    c0046a.C(yVar, iPp);
                    break;
            }
        } else {
            aVarLU = c0046a.lU();
            c0046a.Y();
        }
        yVar.fx(iIl);
        return aVarLU;
    }

    private void ac(y yVar) {
        if (yVar.pj() <= 0 || yVar.pm() != 120) {
            return;
        }
        if (this.Rf == null) {
            this.Rf = new Inflater();
        }
        if (ai.a(yVar, this.Rd, this.Rf)) {
            yVar.l(this.Rd.hO(), this.Rd.pk());
        }
    }

    @Override // com.applovin.exoplayer2.i.d
    protected f c(byte[] bArr, int i, boolean z) throws h {
        this.vN.l(bArr, i);
        ac(this.vN);
        this.Re.Y();
        ArrayList arrayList = new ArrayList();
        while (this.vN.pj() >= 3) {
            com.applovin.exoplayer2.i.a aVarA = a(this.vN, this.Re);
            if (aVarA != null) {
                arrayList.add(aVarA);
            }
        }
        return new b(Collections.unmodifiableList(arrayList));
    }
}
