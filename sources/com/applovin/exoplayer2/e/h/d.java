package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.e.k;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.OggPageHeader;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class d {
    private int BK;
    private boolean BL;
    private final e Br = new e();
    private final y BI = new y(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    private int BJ = -1;

    d() {
    }

    private int ct(int i) {
        int i2;
        int i3 = 0;
        this.BK = 0;
        do {
            int i4 = this.BK;
            int i5 = i + i4;
            e eVar = this.Br;
            if (i5 >= eVar.BR) {
                break;
            }
            int[] iArr = eVar.BV;
            this.BK = i4 + 1;
            i2 = iArr[i4 + i];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public boolean S(com.applovin.exoplayer2.e.i iVar) throws IOException {
        int i;
        com.applovin.exoplayer2.l.a.checkState(iVar != null);
        if (this.BL) {
            this.BL = false;
            this.BI.U(0);
        }
        while (!this.BL) {
            if (this.BJ < 0) {
                if (!this.Br.T(iVar) || !this.Br.f(iVar, true)) {
                    return false;
                }
                e eVar = this.Br;
                int iCt = eVar.BT;
                if ((eVar.bs & 1) == 1 && this.BI.pk() == 0) {
                    iCt += ct(0);
                    i = this.BK + 0;
                } else {
                    i = 0;
                }
                if (!k.a(iVar, iCt)) {
                    return false;
                }
                this.BJ = i;
            }
            int iCt2 = ct(this.BJ);
            int i2 = this.BJ + this.BK;
            if (iCt2 > 0) {
                y yVar = this.BI;
                yVar.bj(yVar.pk() + iCt2);
                if (!k.b(iVar, this.BI.hO(), this.BI.pk(), iCt2)) {
                    return false;
                }
                y yVar2 = this.BI;
                yVar2.fA(yVar2.pk() + iCt2);
                this.BL = this.Br.BV[i2 + (-1)] != 255;
            }
            if (i2 == this.Br.BR) {
                i2 = -1;
            }
            this.BJ = i2;
        }
        return true;
    }

    public void Y() {
        this.Br.Y();
        this.BI.U(0);
        this.BJ = -1;
        this.BL = false;
    }

    public e iY() {
        return this.Br;
    }

    public y iZ() {
        return this.BI;
    }

    public void ja() {
        if (this.BI.hO().length == 65025) {
            return;
        }
        y yVar = this.BI;
        yVar.l(Arrays.copyOf(yVar.hO(), Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, this.BI.pk())), this.BI.pk());
    }
}
