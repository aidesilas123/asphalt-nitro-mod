package com.applovin.exoplayer2.e.i;

import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.l.ag;
import com.applovin.exoplayer2.l.ai;

/* JADX INFO: loaded from: classes.dex */
public final class y implements ad {
    private int Cu;
    private final x Fj;
    private final com.applovin.exoplayer2.l.y Fk = new com.applovin.exoplayer2.l.y(32);
    private int Fl;
    private boolean Fm;
    private boolean Fn;

    public y(x xVar) {
        this.Fj = xVar;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void a(ag agVar, com.applovin.exoplayer2.e.j jVar, ad.d dVar) {
        this.Fj.a(agVar, jVar, dVar);
        this.Fn = true;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void jb() {
        this.Fn = true;
    }

    @Override // com.applovin.exoplayer2.e.i.ad
    public void p(com.applovin.exoplayer2.l.y yVar, int i) {
        boolean z = (i & 1) != 0;
        int iIl = z ? yVar.il() + yVar.po() : -1;
        if (this.Fn) {
            if (!z) {
                return;
            }
            this.Fn = false;
            yVar.fx(iIl);
            this.Cu = 0;
        }
        while (yVar.pj() > 0) {
            int i2 = this.Cu;
            if (i2 < 3) {
                if (i2 == 0) {
                    int iPo = yVar.po();
                    yVar.fx(yVar.il() - 1);
                    if (iPo == 255) {
                        this.Fn = true;
                        return;
                    }
                }
                int iMin = Math.min(yVar.pj(), 3 - this.Cu);
                yVar.r(this.Fk.hO(), this.Cu, iMin);
                int i3 = this.Cu + iMin;
                this.Cu = i3;
                if (i3 == 3) {
                    this.Fk.fx(0);
                    this.Fk.fA(3);
                    this.Fk.fz(1);
                    int iPo2 = this.Fk.po();
                    int iPo3 = this.Fk.po();
                    this.Fm = (iPo2 & 128) != 0;
                    this.Fl = (((iPo2 & 15) << 8) | iPo3) + 3;
                    int iPl = this.Fk.pl();
                    int i4 = this.Fl;
                    if (iPl < i4) {
                        this.Fk.bj(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i4, this.Fk.pl() * 2)));
                    }
                }
            } else {
                int iMin2 = Math.min(yVar.pj(), this.Fl - this.Cu);
                yVar.r(this.Fk.hO(), this.Cu, iMin2);
                int i5 = this.Cu + iMin2;
                this.Cu = i5;
                int i6 = this.Fl;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.Fm) {
                        this.Fk.fA(i6);
                    } else {
                        if (ai.b(this.Fk.hO(), 0, this.Fl, -1) != 0) {
                            this.Fn = true;
                            return;
                        }
                        this.Fk.fA(this.Fl - 4);
                    }
                    this.Fk.fx(0);
                    this.Fj.K(this.Fk);
                    this.Cu = 0;
                }
            }
        }
    }
}
