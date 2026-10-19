package com.applovin.exoplayer2.e.h;

import com.applovin.exoplayer2.b.s;
import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class g extends h {
    private static final byte[] BW = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean BX;

    g() {
    }

    private long B(byte[] bArr) {
        int i = bArr[0] & 255;
        int i2 = i & 3;
        int i3 = 2;
        if (i2 == 0) {
            i3 = 1;
        } else if (i2 != 1 && i2 != 2) {
            i3 = bArr[1] & 63;
        }
        int i4 = i >> 3;
        int i5 = i4 & 3;
        return ((long) i3) * ((long) (i4 >= 16 ? 2500 << i5 : i4 >= 12 ? 10000 << (i5 & 1) : i5 == 3 ? 60000 : 10000 << i5));
    }

    public static boolean F(y yVar) {
        int iPj = yVar.pj();
        byte[] bArr = BW;
        if (iPj < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        yVar.r(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long G(y yVar) {
        return aF(B(yVar.hO()));
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) {
        if (this.BX) {
            com.applovin.exoplayer2.l.a.checkNotNull(aVar.dU);
            boolean z = yVar.px() == 1332770163;
            yVar.fx(0);
            return z;
        }
        byte[] bArrCopyOf = Arrays.copyOf(yVar.hO(), yVar.pk());
        aVar.dU = new v.a().m(MimeTypes.AUDIO_OPUS).N(s.i(bArrCopyOf)).O(48000).c(s.j(bArrCopyOf)).bT();
        this.BX = true;
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected void e(boolean z) {
        super.e(z);
        if (z) {
            this.BX = false;
        }
    }
}
