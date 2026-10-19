package com.applovin.exoplayer2.e.i;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class g implements ad.c {
    private final int jF;
    private final List<com.applovin.exoplayer2.v> zN;

    public g() {
        this(0);
    }

    public g(int i) {
        this(i, com.applovin.exoplayer2.common.a.s.ga());
    }

    public g(int i, List<com.applovin.exoplayer2.v> list) {
        this.jF = i;
        this.zN = list;
    }

    private z a(ad.b bVar) {
        return new z(c(bVar));
    }

    private af b(ad.b bVar) {
        return new af(c(bVar));
    }

    private List<com.applovin.exoplayer2.v> c(ad.b bVar) {
        String str;
        int i;
        if (cv(32)) {
            return this.zN;
        }
        com.applovin.exoplayer2.l.y yVar = new com.applovin.exoplayer2.l.y(bVar.FT);
        List<com.applovin.exoplayer2.v> arrayList = this.zN;
        while (yVar.pj() > 0) {
            int iPo = yVar.po();
            int iIl = yVar.il() + yVar.po();
            if (iPo == 134) {
                arrayList = new ArrayList<>();
                int iPo2 = yVar.po() & 31;
                for (int i2 = 0; i2 < iPo2; i2++) {
                    String strFB = yVar.fB(3);
                    int iPo3 = yVar.po();
                    boolean z = (iPo3 & 128) != 0;
                    if (z) {
                        i = iPo3 & 63;
                        str = MimeTypes.APPLICATION_CEA708;
                    } else {
                        str = MimeTypes.APPLICATION_CEA608;
                        i = 1;
                    }
                    byte bPo = (byte) yVar.po();
                    yVar.fz(1);
                    List<byte[]> listAs = null;
                    if (z) {
                        listAs = com.applovin.exoplayer2.l.e.as((bPo & 64) != 0);
                    }
                    arrayList.add(new v.a().m(str).j(strFB).S(i).c(listAs).bT());
                }
            }
            yVar.fx(iIl);
        }
        return arrayList;
    }

    private boolean cv(int i) {
        return (i & this.jF) != 0;
    }

    @Override // com.applovin.exoplayer2.e.i.ad.c
    @Nullable
    public ad a(int i, ad.b bVar) {
        if (i == 2) {
            return new t(new k(b(bVar)));
        }
        if (i == 3 || i == 4) {
            return new t(new q(bVar.dq));
        }
        if (i == 21) {
            return new t(new o());
        }
        if (i == 27) {
            if (cv(4)) {
                return null;
            }
            return new t(new m(a(bVar), cv(1), cv(8)));
        }
        if (i == 36) {
            return new t(new n(a(bVar)));
        }
        if (i == 89) {
            return new t(new i(bVar.FR));
        }
        if (i != 138) {
            if (i == 172) {
                return new t(new d(bVar.dq));
            }
            if (i == 257) {
                return new y(new s("application/vnd.dvb.ait"));
            }
            if (i != 129) {
                if (i != 130) {
                    if (i == 134) {
                        if (cv(16)) {
                            return null;
                        }
                        return new y(new s(MimeTypes.APPLICATION_SCTE35));
                    }
                    if (i != 135) {
                        switch (i) {
                            case 15:
                                if (cv(2)) {
                                    return null;
                                }
                                return new t(new f(false, bVar.dq));
                            case 16:
                                return new t(new l(b(bVar)));
                            case 17:
                                if (cv(2)) {
                                    return null;
                                }
                                return new t(new p(bVar.dq));
                            default:
                                return null;
                        }
                    }
                } else if (!cv(64)) {
                    return null;
                }
            }
            return new t(new b(bVar.dq));
        }
        return new t(new h(bVar.dq));
    }

    @Override // com.applovin.exoplayer2.e.i.ad.c
    public SparseArray<ad> jn() {
        return new SparseArray<>();
    }
}
