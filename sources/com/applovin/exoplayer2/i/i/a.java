package com.applovin.exoplayer2.i.i;

import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a extends com.applovin.exoplayer2.i.d {
    private final y Cp;

    public a() {
        super("Mp4WebvttDecoder");
        this.Cp = new y();
    }

    private static com.applovin.exoplayer2.i.a D(y yVar, int i) throws com.applovin.exoplayer2.i.h {
        CharSequence charSequenceA = null;
        a.C0041a c0041aAA = null;
        while (i > 0) {
            if (i < 8) {
                throw new com.applovin.exoplayer2.i.h("Incomplete vtt cue box header found.");
            }
            int iPx = yVar.px();
            int iPx2 = yVar.px();
            int i2 = iPx - 8;
            String strT = ai.t(yVar.hO(), yVar.il(), i2);
            yVar.fz(i2);
            i = (i - 8) - i2;
            if (iPx2 == 1937011815) {
                c0041aAA = f.aA(strT);
            } else if (iPx2 == 1885436268) {
                charSequenceA = f.a((String) null, strT.trim(), (List<d>) Collections.emptyList());
            }
        }
        if (charSequenceA == null) {
            charSequenceA = "";
        }
        return c0041aAA != null ? c0041aAA.m(charSequenceA).lU() : f.n(charSequenceA);
    }

    @Override // com.applovin.exoplayer2.i.d
    protected com.applovin.exoplayer2.i.f c(byte[] bArr, int i, boolean z) throws com.applovin.exoplayer2.i.h {
        this.Cp.l(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.Cp.pj() > 0) {
            if (this.Cp.pj() < 8) {
                throw new com.applovin.exoplayer2.i.h("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iPx = this.Cp.px();
            if (this.Cp.px() == 1987343459) {
                arrayList.add(D(this.Cp, iPx - 8));
            } else {
                this.Cp.fz(iPx - 8);
            }
        }
        return new b(arrayList);
    }
}
