package com.applovin.exoplayer2.e.a;

import android.net.Uri;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.d;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.k.g;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a implements h {
    private static final int[] vs;
    private static final int vv;
    private final int jF;
    private int vA;
    private boolean vB;
    private long vC;
    private int vD;
    private int vE;
    private long vF;
    private j vG;
    private x vH;
    private v vI;
    private boolean vJ;
    private final byte[] vw;
    private boolean vx;
    private long vy;
    private int vz;
    public static final l vq = new l() { // from class: com.applovin.exoplayer2.e.a.b
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            return a.ih();
        }
    };
    private static final int[] vr = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final byte[] vt = ai.bk("#!AMR\n");
    private static final byte[] vu = ai.bk("#!AMR-WB\n");

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        vs = iArr;
        vv = iArr[8];
    }

    public a() {
        this(0);
    }

    public a(int i) {
        this.jF = (i & 2) != 0 ? i | 1 : i;
        this.vw = new byte[1];
        this.vD = -1;
    }

    private static boolean a(i iVar, byte[] bArr) throws IOException {
        iVar.ic();
        byte[] bArr2 = new byte[bArr.length];
        iVar.c(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    private v b(long j, boolean z) {
        return new d(j, this.vC, d(this.vD, 20000L), this.vD, z);
    }

    private int bT(int i) throws com.applovin.exoplayer2.ai {
        if (bU(i)) {
            return this.vx ? vs[i] : vr[i];
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Illegal AMR ");
        sb.append(this.vx ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw com.applovin.exoplayer2.ai.c(sb.toString(), null);
    }

    private boolean bU(int i) {
        return i >= 0 && i <= 15 && (bV(i) || bW(i));
    }

    private boolean bV(int i) {
        return this.vx && (i < 10 || i > 13);
    }

    private boolean bW(int i) {
        return !this.vx && (i < 12 || i > 14);
    }

    private static int d(int i, long j) {
        return (int) ((((long) (i * 8)) * 1000000) / j);
    }

    private void d(long j, int i) {
        int i2;
        if (this.vB) {
            return;
        }
        int i3 = this.jF;
        if ((i3 & 1) == 0 || j == -1 || !((i2 = this.vD) == -1 || i2 == this.vz)) {
            v.b bVar = new v.b(C.TIME_UNSET);
            this.vI = bVar;
            this.vG.a(bVar);
            this.vB = true;
            return;
        }
        if (this.vE >= 20 || i == -1) {
            v vVarB = b(j, (i3 & 2) != 0);
            this.vI = vVarB;
            this.vG.a(vVarB);
            this.vB = true;
        }
    }

    private boolean f(i iVar) throws IOException {
        byte[] bArr = vt;
        if (a(iVar, bArr)) {
            this.vx = false;
            iVar.bH(bArr.length);
            return true;
        }
        byte[] bArr2 = vu;
        if (!a(iVar, bArr2)) {
            return false;
        }
        this.vx = true;
        iVar.bH(bArr2.length);
        return true;
    }

    private int g(i iVar) throws IOException {
        if (this.vA == 0) {
            try {
                int iH = h(iVar);
                this.vz = iH;
                this.vA = iH;
                if (this.vD == -1) {
                    this.vC = iVar.ie();
                    this.vD = this.vz;
                }
                if (this.vD == this.vz) {
                    this.vE++;
                }
            } catch (EOFException unused) {
                return -1;
            }
        }
        int iA = this.vH.a((g) iVar, this.vA, true);
        if (iA == -1) {
            return -1;
        }
        int i = this.vA - iA;
        this.vA = i;
        if (i > 0) {
            return 0;
        }
        this.vH.a(this.vF + this.vy, 1, this.vz, 0, null);
        this.vy += 20000;
        return 0;
    }

    private int h(i iVar) throws IOException {
        iVar.ic();
        iVar.c(this.vw, 0, 1);
        byte b = this.vw[0];
        if ((b & 131) <= 0) {
            return bT((b >> 3) & 15);
        }
        throw com.applovin.exoplayer2.ai.c("Invalid padding bits for frame header " + ((int) b), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] ih() {
        return new h[]{new a()};
    }

    private void in() {
        if (this.vJ) {
            return;
        }
        this.vJ = true;
        boolean z = this.vx;
        this.vH.j(new v.a().m(z ? MimeTypes.AUDIO_AMR_WB : MimeTypes.AUDIO_AMR_NB).I(vv).N(1).O(z ? 16000 : 8000).bT());
    }

    private void io() {
        com.applovin.exoplayer2.l.a.N(this.vH);
        ai.R(this.vG);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.vG = jVar;
        this.vH = jVar.y(0, 1);
        jVar.ig();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        return f(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(i iVar, u uVar) throws IOException {
        io();
        if (iVar.ie() == 0 && !f(iVar)) {
            throw com.applovin.exoplayer2.ai.c("Could not find AMR header.", null);
        }
        in();
        int iG = g(iVar);
        d(iVar.mo28if(), iG);
        return iG;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        this.vy = 0L;
        this.vz = 0;
        this.vA = 0;
        if (j != 0) {
            com.applovin.exoplayer2.e.v vVar = this.vI;
            if (vVar instanceof d) {
                this.vF = ((d) vVar).al(j);
                return;
            }
        }
        this.vF = 0L;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
