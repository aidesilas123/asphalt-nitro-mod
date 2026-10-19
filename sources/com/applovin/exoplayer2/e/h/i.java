package com.applovin.exoplayer2.e.h;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.h.h;
import com.applovin.exoplayer2.e.z;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
final class i extends h {

    @Nullable
    private a Cf;
    private int Cg;
    private boolean Ch;

    @Nullable
    private z.d Ci;

    @Nullable
    private z.b Cj;

    static final class a {
        public final z.b Cj;
        public final z.d Ck;
        public final byte[] Cl;
        public final z.c[] Cm;
        public final int Cn;

        public a(z.d dVar, z.b bVar, byte[] bArr, z.c[] cVarArr, int i) {
            this.Ck = dVar;
            this.Cj = bVar;
            this.Cl = bArr;
            this.Cm = cVarArr;
            this.Cn = i;
        }
    }

    i() {
    }

    public static boolean F(y yVar) {
        try {
            return z.a(1, yVar, true);
        } catch (ai unused) {
            return false;
        }
    }

    @VisibleForTesting
    static int a(byte b, int i, int i2) {
        return (b >> i2) & (255 >>> (8 - i));
    }

    private static int a(byte b, a aVar) {
        return !aVar.Cm[a(b, aVar.Cn, 1)].vg ? aVar.Ck.vn : aVar.Ck.vo;
    }

    @VisibleForTesting
    static void d(y yVar, long j) {
        if (yVar.pl() < yVar.pk() + 4) {
            yVar.I(Arrays.copyOf(yVar.hO(), yVar.pk() + 4));
        } else {
            yVar.fA(yVar.pk() + 4);
        }
        byte[] bArrHO = yVar.hO();
        bArrHO[yVar.pk() - 4] = (byte) (j & 255);
        bArrHO[yVar.pk() - 3] = (byte) ((j >>> 8) & 255);
        bArrHO[yVar.pk() - 2] = (byte) ((j >>> 16) & 255);
        bArrHO[yVar.pk() - 1] = (byte) ((j >>> 24) & 255);
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected long G(y yVar) {
        if ((yVar.hO()[0] & 1) == 1) {
            return -1L;
        }
        int iA = a(yVar.hO()[0], (a) com.applovin.exoplayer2.l.a.N(this.Cf));
        long j = this.Ch ? (this.Cg + iA) / 4 : 0;
        d(yVar, j);
        this.Ch = true;
        this.Cg = iA;
        return j;
    }

    @Nullable
    @VisibleForTesting
    a J(y yVar) throws IOException {
        z.d dVar = this.Ci;
        if (dVar == null) {
            this.Ci = z.c(yVar);
            return null;
        }
        z.b bVar = this.Cj;
        if (bVar == null) {
            this.Cj = z.d(yVar);
            return null;
        }
        byte[] bArr = new byte[yVar.pk()];
        System.arraycopy(yVar.hO(), 0, bArr, 0, yVar.pk());
        return new a(dVar, bVar, bArr, z.d(yVar, dVar.mI), z.bS(r4.length - 1));
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected boolean a(y yVar, long j, h.a aVar) throws IOException {
        if (this.Cf != null) {
            com.applovin.exoplayer2.l.a.checkNotNull(aVar.dU);
            return false;
        }
        a aVarJ = J(yVar);
        this.Cf = aVarJ;
        if (aVarJ == null) {
            return true;
        }
        z.d dVar = aVarJ.Ck;
        ArrayList arrayList = new ArrayList();
        arrayList.add(dVar.tf);
        arrayList.add(aVarJ.Cl);
        aVar.dU = new v.a().m(MimeTypes.AUDIO_VORBIS).G(dVar.vl).H(dVar.vk).N(dVar.mI).O(dVar.dM).c(arrayList).bT();
        return true;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected void aG(long j) {
        super.aG(j);
        this.Ch = j != 0;
        z.d dVar = this.Ci;
        this.Cg = dVar != null ? dVar.vn : 0;
    }

    @Override // com.applovin.exoplayer2.e.h.h
    protected void e(boolean z) {
        super.e(z);
        if (z) {
            this.Cf = null;
            this.Ci = null;
            this.Cj = null;
        }
        this.Cg = 0;
        this.Ch = false;
    }
}
