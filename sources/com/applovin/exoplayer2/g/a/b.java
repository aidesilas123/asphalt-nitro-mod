package com.applovin.exoplayer2.g.a;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Charsets;
import com.applovin.exoplayer2.g.d;
import com.applovin.exoplayer2.g.g;
import com.applovin.exoplayer2.l.x;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class b extends g {
    @Nullable
    private static com.applovin.exoplayer2.g.a k(x xVar) {
        xVar.bR(12);
        int iPg = (xVar.pg() + xVar.bQ(12)) - 4;
        xVar.bR(44);
        xVar.fz(xVar.bQ(12));
        xVar.bR(16);
        ArrayList arrayList = new ArrayList();
        while (true) {
            String strA = null;
            if (xVar.pg() >= iPg) {
                break;
            }
            xVar.bR(48);
            int iBQ = xVar.bQ(8);
            xVar.bR(4);
            int iPg2 = xVar.pg() + xVar.bQ(12);
            String strA2 = null;
            while (xVar.pg() < iPg2) {
                int iBQ2 = xVar.bQ(8);
                int iBQ3 = xVar.bQ(8);
                int iPg3 = xVar.pg() + iBQ3;
                if (iBQ2 == 2) {
                    int iBQ4 = xVar.bQ(16);
                    xVar.bR(8);
                    if (iBQ4 == 3) {
                        while (xVar.pg() < iPg3) {
                            strA = xVar.a(xVar.bQ(8), Charsets.US_ASCII);
                            int iBQ5 = xVar.bQ(8);
                            for (int i = 0; i < iBQ5; i++) {
                                xVar.fz(xVar.bQ(8));
                            }
                        }
                    }
                } else if (iBQ2 == 21) {
                    strA2 = xVar.a(iBQ3, Charsets.US_ASCII);
                }
                xVar.fx(iPg3 * 8);
            }
            xVar.fx(iPg2 * 8);
            if (strA != null && strA2 != null) {
                arrayList.add(new a(iBQ, strA + strA2));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    @Override // com.applovin.exoplayer2.g.g
    @Nullable
    protected com.applovin.exoplayer2.g.a a(d dVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() == 116) {
            return k(new x(byteBuffer.array(), byteBuffer.limit()));
        }
        return null;
    }
}
