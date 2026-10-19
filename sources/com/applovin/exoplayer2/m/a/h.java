package com.applovin.exoplayer2.m.a;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.af;
import com.applovin.exoplayer2.m.l;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class h implements a, l {
    private final AtomicBoolean afL;
    private final c afM;
    private final af<Long> afN;
    private final af<e> afO;
    private volatile int afP;
    private int afQ;

    @Nullable
    private byte[] afR;

    private void a(@Nullable byte[] bArr, int i, long j) {
        byte[] bArr2 = this.afR;
        int i2 = this.afQ;
        this.afR = bArr;
        if (i == -1) {
            i = this.afP;
        }
        this.afQ = i;
        if (i2 == i && Arrays.equals(bArr2, this.afR)) {
            return;
        }
        byte[] bArr3 = this.afR;
        e eVarM = bArr3 != null ? f.m(bArr3, this.afQ) : null;
        if (eVarM == null || !g.a(eVarM)) {
            eVarM = e.fT(this.afQ);
        }
        this.afO.a(j, eVarM);
    }

    @Override // com.applovin.exoplayer2.m.l
    public void a(long j, long j2, v vVar, @Nullable MediaFormat mediaFormat) {
        this.afN.a(j2, Long.valueOf(j));
        a(vVar.dI, vVar.dJ, j2);
    }

    @Override // com.applovin.exoplayer2.m.a.a
    public void a(long j, float[] fArr) {
        this.afM.b(j, fArr);
    }

    @Override // com.applovin.exoplayer2.m.a.a
    public void cZ() {
        this.afN.clear();
        this.afM.Y();
        this.afL.set(true);
    }

    public void setDefaultStereoMode(int i) {
        this.afP = i;
    }
}
