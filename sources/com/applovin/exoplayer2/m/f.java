package com.applovin.exoplayer2.m;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ai;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    @Nullable
    public final List<byte[]> dB;

    @Nullable
    public final String dw;
    public final int wo;

    private f(@Nullable List<byte[]> list, int i, @Nullable String str) {
        this.dB = list;
        this.wo = i;
        this.dw = str;
    }

    public static f av(com.applovin.exoplayer2.l.y yVar) throws ai {
        try {
            yVar.fz(21);
            int iPo = yVar.po() & 3;
            int iPo2 = yVar.po();
            int iIl = yVar.il();
            int i = 0;
            for (int i2 = 0; i2 < iPo2; i2++) {
                yVar.fz(1);
                int iPp = yVar.pp();
                for (int i3 = 0; i3 < iPp; i3++) {
                    int iPp2 = yVar.pp();
                    i += iPp2 + 4;
                    yVar.fz(iPp2);
                }
            }
            yVar.fx(iIl);
            byte[] bArr = new byte[i];
            String strC = null;
            int i4 = 0;
            for (int i5 = 0; i5 < iPo2; i5++) {
                int iPo3 = yVar.po() & 127;
                int iPp3 = yVar.pp();
                for (int i6 = 0; i6 < iPp3; i6++) {
                    int iPp4 = yVar.pp();
                    byte[] bArr2 = com.applovin.exoplayer2.l.v.abK;
                    System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                    int length = i4 + bArr2.length;
                    System.arraycopy(yVar.hO(), yVar.il(), bArr, length, iPp4);
                    if (iPo3 == 33 && i6 == 0) {
                        strC = com.applovin.exoplayer2.l.e.c(new com.applovin.exoplayer2.l.z(bArr, length, length + iPp4));
                    }
                    i4 = length + iPp4;
                    yVar.fz(iPp4);
                }
            }
            return new f(i == 0 ? null : Collections.singletonList(bArr), iPo + 1, strC);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw ai.c("Error parsing HEVC config", e2);
        }
    }
}
