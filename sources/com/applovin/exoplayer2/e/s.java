package com.applovin.exoplayer2.e;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g.e.g;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    private final com.applovin.exoplayer2.l.y uO = new com.applovin.exoplayer2.l.y(10);

    @Nullable
    public com.applovin.exoplayer2.g.a a(i iVar, @Nullable g.a aVar) throws IOException {
        com.applovin.exoplayer2.g.a aVarF = null;
        int i = 0;
        while (true) {
            try {
                iVar.c(this.uO.hO(), 0, 10);
                this.uO.fx(0);
                if (this.uO.pt() != 4801587) {
                    break;
                }
                this.uO.fz(3);
                int iPC = this.uO.pC();
                int i2 = iPC + 10;
                if (aVarF == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.uO.hO(), 0, bArr, 0, 10);
                    iVar.c(bArr, 10, iPC);
                    aVarF = new com.applovin.exoplayer2.g.e.g(aVar).f(bArr, i2);
                } else {
                    iVar.bI(iPC);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        iVar.ic();
        iVar.bI(i);
        return aVarF;
    }
}
