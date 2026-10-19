package com.applovin.exoplayer2.e.g;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.e.g.a;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private static final byte[] zp = ai.bk("OpusHead");

    private static final class a {
        public int Y;
        public final int fR;
        public int zq;
        public long zr;
        private final boolean zs;
        private final y zt;
        private final y zu;
        private int zv;
        private int zw;

        public a(y yVar, y yVar2, boolean z) throws com.applovin.exoplayer2.ai {
            this.zu = yVar;
            this.zt = yVar2;
            this.zs = z;
            yVar2.fx(12);
            this.fR = yVar2.pD();
            yVar.fx(12);
            this.zw = yVar.pD();
            com.applovin.exoplayer2.e.k.a(yVar.px() == 1, "first_chunk must be 1");
            this.Y = -1;
        }

        public boolean iH() {
            int i = this.Y + 1;
            this.Y = i;
            if (i == this.fR) {
                return false;
            }
            this.zr = this.zs ? this.zt.pF() : this.zt.pv();
            if (this.Y == this.zv) {
                this.zq = this.zu.pD();
                this.zu.fz(4);
                int i2 = this.zw - 1;
                this.zw = i2;
                this.zv = i2 > 0 ? this.zu.pD() - 1 : -1;
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.e.g.b$b, reason: collision with other inner class name */
    private interface InterfaceC0033b {
        int iI();

        int iJ();

        int iK();
    }

    private static final class c {

        @Nullable
        public v dU;
        public int wo;
        public final l[] zx;
        public int zy = 0;

        public c(int i) {
            this.zx = new l[i];
        }
    }

    static final class d implements InterfaceC0033b {
        private final int jA;
        private final y zo;
        private final int zz;

        public d(a.b bVar, v vVar) {
            y yVar = bVar.zo;
            this.zo = yVar;
            yVar.fx(12);
            int iPD = yVar.pD();
            if (MimeTypes.AUDIO_RAW.equals(vVar.dz)) {
                int iP = ai.P(vVar.dN, vVar.dL);
                if (iPD == 0 || iPD % iP != 0) {
                    com.applovin.exoplayer2.l.q.h("AtomParsers", "Audio sample size mismatch. stsd sample size: " + iP + ", stsz sample size: " + iPD);
                    iPD = iP;
                }
            }
            this.zz = iPD == 0 ? -1 : iPD;
            this.jA = yVar.pD();
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iI() {
            return this.jA;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iJ() {
            return this.zz;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iK() {
            int i = this.zz;
            return i == -1 ? this.zo.pD() : i;
        }
    }

    static final class e implements InterfaceC0033b {
        private final int jA;
        private final int zA;
        private int zB;
        private int zC;
        private final y zo;

        public e(a.b bVar) {
            y yVar = bVar.zo;
            this.zo = yVar;
            yVar.fx(12);
            this.zA = yVar.pD() & 255;
            this.jA = yVar.pD();
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iI() {
            return this.jA;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iJ() {
            return -1;
        }

        @Override // com.applovin.exoplayer2.e.g.b.InterfaceC0033b
        public int iK() {
            int i = this.zA;
            if (i == 8) {
                return this.zo.po();
            }
            if (i == 16) {
                return this.zo.pp();
            }
            int i2 = this.zB;
            this.zB = i2 + 1;
            if (i2 % 2 != 0) {
                return this.zC & 15;
            }
            int iPo = this.zo.po();
            this.zC = iPo;
            return (iPo & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        }
    }

    private static final class f {
        private final int dG;
        private final int zD;
        private final long zE;

        public f(int i, long j, int i2) {
            this.zD = i;
            this.zE = j;
            this.dG = i2;
        }
    }

    private static c a(y yVar, int i, int i2, String str, @Nullable com.applovin.exoplayer2.d.e eVar, boolean z) throws com.applovin.exoplayer2.ai {
        int i3;
        yVar.fx(12);
        int iPx = yVar.px();
        c cVar = new c(iPx);
        for (int i4 = 0; i4 < iPx; i4++) {
            int iIl = yVar.il();
            int iPx2 = yVar.px();
            com.applovin.exoplayer2.e.k.a(iPx2 > 0, "childAtomSize must be positive");
            int iPx3 = yVar.px();
            if (iPx3 == 1635148593 || iPx3 == 1635148595 || iPx3 == 1701733238 || iPx3 == 1831958048 || iPx3 == 1836070006 || iPx3 == 1752589105 || iPx3 == 1751479857 || iPx3 == 1932670515 || iPx3 == 1211250227 || iPx3 == 1987063864 || iPx3 == 1987063865 || iPx3 == 1635135537 || iPx3 == 1685479798 || iPx3 == 1685479729 || iPx3 == 1685481573 || iPx3 == 1685481521) {
                i3 = iIl;
                a(yVar, iPx3, i3, iPx2, i, i2, eVar, cVar, i4);
            } else if (iPx3 == 1836069985 || iPx3 == 1701733217 || iPx3 == 1633889587 || iPx3 == 1700998451 || iPx3 == 1633889588 || iPx3 == 1685353315 || iPx3 == 1685353317 || iPx3 == 1685353320 || iPx3 == 1685353324 || iPx3 == 1685353336 || iPx3 == 1935764850 || iPx3 == 1935767394 || iPx3 == 1819304813 || iPx3 == 1936684916 || iPx3 == 1953984371 || iPx3 == 778924082 || iPx3 == 778924083 || iPx3 == 1835557169 || iPx3 == 1835560241 || iPx3 == 1634492771 || iPx3 == 1634492791 || iPx3 == 1970037111 || iPx3 == 1332770163 || iPx3 == 1716281667) {
                i3 = iIl;
                a(yVar, iPx3, iIl, iPx2, i, str, z, eVar, cVar, i4);
            } else {
                if (iPx3 == 1414810956 || iPx3 == 1954034535 || iPx3 == 2004251764 || iPx3 == 1937010800 || iPx3 == 1664495672) {
                    a(yVar, iPx3, iIl, iPx2, i, str, cVar);
                } else if (iPx3 == 1835365492) {
                    a(yVar, iPx3, iIl, i, cVar);
                } else if (iPx3 == 1667329389) {
                    cVar.dU = new v.a().D(i).m(MimeTypes.APPLICATION_CAMERA_MOTION).bT();
                }
                i3 = iIl;
            }
            yVar.fx(i3 + iPx2);
        }
        return cVar;
    }

    @Nullable
    private static k a(a.C0032a c0032a, a.b bVar, long j, @Nullable com.applovin.exoplayer2.d.e eVar, boolean z, boolean z2) throws com.applovin.exoplayer2.ai {
        a.b bVar2;
        long j2;
        long[] jArr;
        long[] jArr2;
        a.C0032a c0032aCj;
        Pair<long[], long[]> pairC;
        a.C0032a c0032a2 = (a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(c0032a.cj(1835297121));
        int iCk = ck(s(((a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a2.ci(1751411826))).zo));
        if (iCk == -1) {
            return null;
        }
        f fVarR = r(((a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a.ci(1953196132))).zo);
        long jE = C.TIME_UNSET;
        if (j == C.TIME_UNSET) {
            bVar2 = bVar;
            j2 = fVarR.zE;
        } else {
            bVar2 = bVar;
            j2 = j;
        }
        long jQ = q(bVar2.zo);
        if (j2 != C.TIME_UNSET) {
            jE = ai.e(j2, 1000000L, jQ);
        }
        long j3 = jE;
        a.C0032a c0032a3 = (a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(((a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(c0032a2.cj(1835626086))).cj(1937007212));
        Pair<Long, String> pairT = t(((a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a2.ci(1835296868))).zo);
        c cVarA = a(((a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a3.ci(1937011556))).zo, fVarR.zD, fVarR.dG, (String) pairT.second, eVar, z2);
        if (z || (c0032aCj = c0032a.cj(1701082227)) == null || (pairC = c(c0032aCj)) == null) {
            jArr = null;
            jArr2 = null;
        } else {
            long[] jArr3 = (long[]) pairC.first;
            jArr2 = (long[]) pairC.second;
            jArr = jArr3;
        }
        if (cVarA.dU == null) {
            return null;
        }
        return new k(fVarR.zD, iCk, ((Long) pairT.first).longValue(), jQ, j3, cVarA.dU, cVarA.zy, cVarA.zx, cVarA.wo, jArr, jArr2);
    }

    @Nullable
    private static l a(y yVar, int i, int i2, String str) {
        int i3;
        int i4;
        int i5 = i + 8;
        while (true) {
            byte[] bArr = null;
            if (i5 - i >= i2) {
                return null;
            }
            yVar.fx(i5);
            int iPx = yVar.px();
            if (yVar.px() == 1952804451) {
                int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
                yVar.fz(1);
                if (iCf == 0) {
                    yVar.fz(1);
                    i4 = 0;
                    i3 = 0;
                } else {
                    int iPo = yVar.po();
                    i3 = iPo & 15;
                    i4 = (iPo & PsExtractor.VIDEO_STREAM_MASK) >> 4;
                }
                boolean z = yVar.po() == 1;
                int iPo2 = yVar.po();
                byte[] bArr2 = new byte[16];
                yVar.r(bArr2, 0, 16);
                if (z && iPo2 == 0) {
                    int iPo3 = yVar.po();
                    bArr = new byte[iPo3];
                    yVar.r(bArr, 0, iPo3);
                }
                return new l(z, str, iPo2, bArr2, i4, i3, bArr);
            }
            i5 += iPx;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0453  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0431 A[EDGE_INSN: B:211:0x0431->B:170:0x0431 BREAK  A[LOOP:2: B:153:0x03c7->B:169:0x042a], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.e.g.n a(com.applovin.exoplayer2.e.g.k r38, com.applovin.exoplayer2.e.g.a.C0032a r39, com.applovin.exoplayer2.e.r r40) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instruction units count: 1319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.b.a(com.applovin.exoplayer2.e.g.k, com.applovin.exoplayer2.e.g.a$a, com.applovin.exoplayer2.e.r):com.applovin.exoplayer2.e.g.n");
    }

    public static List<n> a(a.C0032a c0032a, com.applovin.exoplayer2.e.r rVar, long j, @Nullable com.applovin.exoplayer2.d.e eVar, boolean z, boolean z2, Function<k, k> function) throws com.applovin.exoplayer2.ai {
        k kVarApply;
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < c0032a.zn.size(); i++) {
            a.C0032a c0032a2 = c0032a.zn.get(i);
            if (c0032a2.bs == 1953653099 && (kVarApply = function.apply(a(c0032a2, (a.b) com.applovin.exoplayer2.l.a.checkNotNull(c0032a.ci(1836476516)), j, eVar, z, z2))) != null) {
                arrayList.add(a(kVarApply, (a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(((a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(((a.C0032a) com.applovin.exoplayer2.l.a.checkNotNull(c0032a2.cj(1835297121))).cj(1835626086))).cj(1937007212)), rVar));
            }
        }
        return arrayList;
    }

    private static void a(y yVar, int i, int i2, int i3, int i4, int i5, @Nullable com.applovin.exoplayer2.d.e eVar, c cVar, int i6) throws com.applovin.exoplayer2.ai {
        com.applovin.exoplayer2.d.e eVar2;
        String str;
        y yVar2 = yVar;
        int i7 = i2;
        int i8 = i3;
        com.applovin.exoplayer2.d.e eVarB = eVar;
        yVar2.fx(i7 + 8 + 8);
        yVar2.fz(16);
        int iPp = yVar.pp();
        int iPp2 = yVar.pp();
        yVar2.fz(50);
        int iIl = yVar.il();
        int iIntValue = i;
        if (iIntValue == 1701733238) {
            Pair<Integer, l> pairC = c(yVar2, i7, i8);
            if (pairC != null) {
                iIntValue = ((Integer) pairC.first).intValue();
                eVarB = eVarB == null ? null : eVarB.B(((l) pairC.second).tc);
                cVar.zx[i6] = (l) pairC.second;
            }
            yVar2.fx(iIl);
        }
        String str2 = MimeTypes.VIDEO_H263;
        String str3 = iIntValue == 1831958048 ? MimeTypes.VIDEO_MPEG : iIntValue == 1211250227 ? MimeTypes.VIDEO_H263 : null;
        int i9 = -1;
        float fJ = 1.0f;
        String str4 = null;
        List<byte[]> listU = null;
        byte[] bArrE = null;
        com.applovin.exoplayer2.m.b bVar = null;
        boolean z = false;
        while (true) {
            if (iIl - i7 >= i8) {
                eVar2 = eVarB;
                break;
            }
            yVar2.fx(iIl);
            int iIl2 = yVar.il();
            String str5 = str2;
            int iPx = yVar.px();
            if (iPx == 0) {
                eVar2 = eVarB;
                if (yVar.il() - i7 == i8) {
                    break;
                }
            } else {
                eVar2 = eVarB;
            }
            com.applovin.exoplayer2.e.k.a(iPx > 0, "childAtomSize must be positive");
            int iPx2 = yVar.px();
            if (iPx2 == 1635148611) {
                com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                yVar2.fx(iIl2 + 8);
                com.applovin.exoplayer2.m.a aVarAs = com.applovin.exoplayer2.m.a.as(yVar);
                listU = aVarAs.dB;
                cVar.wo = aVarAs.wo;
                if (!z) {
                    fJ = aVarAs.acy;
                }
                str4 = aVarAs.dw;
                str = "video/avc";
            } else if (iPx2 == 1752589123) {
                com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                yVar2.fx(iIl2 + 8);
                com.applovin.exoplayer2.m.f fVarAv = com.applovin.exoplayer2.m.f.av(yVar);
                listU = fVarAv.dB;
                cVar.wo = fVarAv.wo;
                str4 = fVarAv.dw;
                str = "video/hevc";
            } else {
                if (iPx2 == 1685480259 || iPx2 == 1685485123) {
                    com.applovin.exoplayer2.m.c cVarAu = com.applovin.exoplayer2.m.c.au(yVar);
                    if (cVarAu != null) {
                        str4 = cVarAu.dw;
                        str3 = "video/dolby-vision";
                    }
                } else if (iPx2 == 1987076931) {
                    com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                    str = iIntValue == 1987063864 ? MimeTypes.VIDEO_VP8 : MimeTypes.VIDEO_VP9;
                } else if (iPx2 == 1635135811) {
                    com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                    str3 = com.unity3d.services.core.device.MimeTypes.VIDEO_AV1;
                } else if (iPx2 == 1681012275) {
                    com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                    str3 = str5;
                } else if (iPx2 == 1702061171) {
                    com.applovin.exoplayer2.e.k.a(str3 == null, (String) null);
                    Pair<String, byte[]> pairK = k(yVar2, iIl2);
                    String str6 = (String) pairK.first;
                    byte[] bArr = (byte[]) pairK.second;
                    if (bArr != null) {
                        listU = s.u(bArr);
                    }
                    str3 = str6;
                } else if (iPx2 == 1885434736) {
                    fJ = j(yVar2, iIl2);
                    z = true;
                } else if (iPx2 == 1937126244) {
                    bArrE = e(yVar2, iIl2, iPx);
                } else if (iPx2 == 1936995172) {
                    int iPo = yVar.po();
                    yVar2.fz(3);
                    if (iPo == 0) {
                        int iPo2 = yVar.po();
                        if (iPo2 == 0) {
                            i9 = 0;
                        } else if (iPo2 == 1) {
                            i9 = 1;
                        } else if (iPo2 == 2) {
                            i9 = 2;
                        } else if (iPo2 == 3) {
                            i9 = 3;
                        }
                    }
                } else if (iPx2 == 1668246642) {
                    int iPx3 = yVar.px();
                    boolean z2 = iPx3 == 1852009592;
                    if (z2 || iPx3 == 1852009571) {
                        int iPp3 = yVar.pp();
                        int iPp4 = yVar.pp();
                        yVar2.fz(2);
                        bVar = new com.applovin.exoplayer2.m.b(com.applovin.exoplayer2.m.b.fN(iPp3), z2 && (yVar.po() & 128) != 0 ? 1 : 2, com.applovin.exoplayer2.m.b.fO(iPp4), null);
                    } else {
                        com.applovin.exoplayer2.l.q.h("AtomParsers", "Unsupported color type: " + com.applovin.exoplayer2.e.g.a.ch(iPx3));
                    }
                }
                iIl += iPx;
                yVar2 = yVar;
                i7 = i2;
                i8 = i3;
                str2 = str5;
                eVarB = eVar2;
            }
            str3 = str;
            iIl += iPx;
            yVar2 = yVar;
            i7 = i2;
            i8 = i3;
            str2 = str5;
            eVarB = eVar2;
        }
        if (str3 == null) {
            return;
        }
        cVar.dU = new v.a().D(i4).m(str3).k(str4).J(iPp).K(iPp2).e(fJ).L(i5).a(bArrE).M(i9).c(listU).a(eVar2).a(bVar).bT();
    }

    private static void a(y yVar, int i, int i2, int i3, int i4, String str, c cVar) {
        yVar.fx(i2 + 8 + 8);
        String str2 = MimeTypes.APPLICATION_TTML;
        s sVarU = null;
        long j = Long.MAX_VALUE;
        if (i != 1414810956) {
            if (i == 1954034535) {
                int i5 = (i3 - 8) - 8;
                byte[] bArr = new byte[i5];
                yVar.r(bArr, 0, i5);
                sVarU = s.u(bArr);
                str2 = MimeTypes.APPLICATION_TX3G;
            } else if (i == 2004251764) {
                str2 = MimeTypes.APPLICATION_MP4VTT;
            } else if (i == 1937010800) {
                j = 0;
            } else {
                if (i != 1664495672) {
                    throw new IllegalStateException();
                }
                cVar.zy = 1;
                str2 = MimeTypes.APPLICATION_MP4CEA608;
            }
        }
        cVar.dU = new v.a().D(i4).m(str2).j(str).p(j).c(sVarU).bT();
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void a(com.applovin.exoplayer2.l.y r20, int r21, int r22, int r23, int r24, java.lang.String r25, boolean r26, @androidx.annotation.Nullable com.applovin.exoplayer2.d.e r27, com.applovin.exoplayer2.e.g.b.c r28, int r29) throws com.applovin.exoplayer2.ai {
        /*
            Method dump skipped, instruction units count: 767
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.g.b.a(com.applovin.exoplayer2.l.y, int, int, int, int, java.lang.String, boolean, com.applovin.exoplayer2.d.e, com.applovin.exoplayer2.e.g.b$c, int):void");
    }

    private static void a(y yVar, int i, int i2, int i3, c cVar) {
        yVar.fx(i2 + 8 + 8);
        if (i == 1835365492) {
            yVar.pI();
            String strPI = yVar.pI();
            if (strPI != null) {
                cVar.dU = new v.a().D(i3).m(strPI).bT();
            }
        }
    }

    private static boolean a(long[] jArr, long j, long j2, long j3) {
        int length = jArr.length - 1;
        return jArr[0] <= j2 && j2 < jArr[ai.k(4, 0, length)] && jArr[ai.k(jArr.length - 4, 0, length)] < j3 && j3 <= j;
    }

    private static int b(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        int iIl = yVar.il();
        while (iIl - i < i2) {
            yVar.fx(iIl);
            int iPx = yVar.px();
            com.applovin.exoplayer2.e.k.a(iPx > 0, "childAtomSize must be positive");
            if (yVar.px() == 1702061171) {
                return iIl;
            }
            iIl += iPx;
        }
        return -1;
    }

    public static Pair<com.applovin.exoplayer2.g.a, com.applovin.exoplayer2.g.a> b(a.b bVar) {
        y yVar = bVar.zo;
        yVar.fx(8);
        com.applovin.exoplayer2.g.a aVarG = null;
        com.applovin.exoplayer2.g.a aVarI = null;
        while (yVar.pj() >= 8) {
            int iIl = yVar.il();
            int iPx = yVar.px();
            int iPx2 = yVar.px();
            if (iPx2 == 1835365473) {
                yVar.fx(iIl);
                aVarG = g(yVar, iIl + iPx);
            } else if (iPx2 == 1936553057) {
                yVar.fx(iIl);
                aVarI = i(yVar, iIl + iPx);
            }
            yVar.fx(iIl + iPx);
        }
        return Pair.create(aVarG, aVarI);
    }

    @Nullable
    public static com.applovin.exoplayer2.g.a b(a.C0032a c0032a) {
        a.b bVarCi = c0032a.ci(1751411826);
        a.b bVarCi2 = c0032a.ci(1801812339);
        a.b bVarCi3 = c0032a.ci(1768715124);
        if (bVarCi == null || bVarCi2 == null || bVarCi3 == null || s(bVarCi.zo) != 1835299937) {
            return null;
        }
        y yVar = bVarCi2.zo;
        yVar.fx(12);
        int iPx = yVar.px();
        String[] strArr = new String[iPx];
        for (int i = 0; i < iPx; i++) {
            int iPx2 = yVar.px();
            yVar.fz(4);
            strArr[i] = yVar.fB(iPx2 - 8);
        }
        y yVar2 = bVarCi3.zo;
        yVar2.fx(8);
        ArrayList arrayList = new ArrayList();
        while (yVar2.pj() > 8) {
            int iIl = yVar2.il();
            int iPx3 = yVar2.px();
            int iPx4 = yVar2.px() - 1;
            if (iPx4 < 0 || iPx4 >= iPx) {
                com.applovin.exoplayer2.l.q.h("AtomParsers", "Skipped metadata with unknown key index: " + iPx4);
            } else {
                com.applovin.exoplayer2.g.f.a aVarA = com.applovin.exoplayer2.e.g.f.a(yVar2, iIl + iPx3, strArr[iPx4]);
                if (aVarA != null) {
                    arrayList.add(aVarA);
                }
            }
            yVar2.fx(iIl + iPx3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    @Nullable
    private static Pair<long[], long[]> c(a.C0032a c0032a) {
        a.b bVarCi = c0032a.ci(1701606260);
        if (bVarCi == null) {
            return null;
        }
        y yVar = bVarCi.zo;
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        int iPD = yVar.pD();
        long[] jArr = new long[iPD];
        long[] jArr2 = new long[iPD];
        for (int i = 0; i < iPD; i++) {
            jArr[i] = iCf == 1 ? yVar.pF() : yVar.pv();
            jArr2[i] = iCf == 1 ? yVar.pz() : yVar.px();
            if (yVar.pr() != 1) {
                throw new IllegalArgumentException("Unsupported media rate.");
            }
            yVar.fz(2);
        }
        return Pair.create(jArr, jArr2);
    }

    @Nullable
    private static Pair<Integer, l> c(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        Pair<Integer, l> pairD;
        int iIl = yVar.il();
        while (iIl - i < i2) {
            yVar.fx(iIl);
            int iPx = yVar.px();
            com.applovin.exoplayer2.e.k.a(iPx > 0, "childAtomSize must be positive");
            if (yVar.px() == 1936289382 && (pairD = d(yVar, iIl, iPx)) != null) {
                return pairD;
            }
            iIl += iPx;
        }
        return null;
    }

    private static int ck(int i) {
        if (i == 1936684398) {
            return 1;
        }
        if (i == 1986618469) {
            return 2;
        }
        if (i == 1952807028 || i == 1935832172 || i == 1937072756 || i == 1668047728) {
            return 3;
        }
        return i == 1835365473 ? 5 : -1;
    }

    @Nullable
    static Pair<Integer, l> d(y yVar, int i, int i2) throws com.applovin.exoplayer2.ai {
        int i3 = i + 8;
        String strFB = null;
        Integer numValueOf = null;
        int i4 = -1;
        int i5 = 0;
        while (i3 - i < i2) {
            yVar.fx(i3);
            int iPx = yVar.px();
            int iPx2 = yVar.px();
            if (iPx2 == 1718775137) {
                numValueOf = Integer.valueOf(yVar.px());
            } else if (iPx2 == 1935894637) {
                yVar.fz(4);
                strFB = yVar.fB(4);
            } else if (iPx2 == 1935894633) {
                i4 = i3;
                i5 = iPx;
            }
            i3 += iPx;
        }
        if (!C.CENC_TYPE_cenc.equals(strFB) && !C.CENC_TYPE_cbc1.equals(strFB) && !C.CENC_TYPE_cens.equals(strFB) && !C.CENC_TYPE_cbcs.equals(strFB)) {
            return null;
        }
        com.applovin.exoplayer2.e.k.a(numValueOf != null, "frma atom is mandatory");
        com.applovin.exoplayer2.e.k.a(i4 != -1, "schi atom is mandatory");
        l lVarA = a(yVar, i4, i5, strFB);
        com.applovin.exoplayer2.e.k.a(lVarA != null, "tenc atom is mandatory");
        return Pair.create(numValueOf, (l) ai.R(lVarA));
    }

    @Nullable
    private static byte[] e(y yVar, int i, int i2) {
        int i3 = i + 8;
        while (i3 - i < i2) {
            yVar.fx(i3);
            int iPx = yVar.px();
            if (yVar.px() == 1886547818) {
                return Arrays.copyOfRange(yVar.hO(), i3, iPx + i3);
            }
            i3 += iPx;
        }
        return null;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.a g(y yVar, int i) {
        yVar.fz(8);
        p(yVar);
        while (yVar.il() < i) {
            int iIl = yVar.il();
            int iPx = yVar.px();
            if (yVar.px() == 1768715124) {
                yVar.fx(iIl);
                return h(yVar, iIl + iPx);
            }
            yVar.fx(iIl + iPx);
        }
        return null;
    }

    @Nullable
    private static com.applovin.exoplayer2.g.a h(y yVar, int i) {
        yVar.fz(8);
        ArrayList arrayList = new ArrayList();
        while (yVar.il() < i) {
            a.InterfaceC0038a interfaceC0038aZ = com.applovin.exoplayer2.e.g.f.z(yVar);
            if (interfaceC0038aZ != null) {
                arrayList.add(interfaceC0038aZ);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }

    @Nullable
    private static com.applovin.exoplayer2.g.a i(y yVar, int i) {
        yVar.fz(12);
        while (yVar.il() < i) {
            int iIl = yVar.il();
            int iPx = yVar.px();
            if (yVar.px() == 1935766900) {
                if (iPx < 14) {
                    return null;
                }
                yVar.fz(5);
                int iPo = yVar.po();
                if (iPo != 12 && iPo != 13) {
                    return null;
                }
                float f2 = iPo == 12 ? 240.0f : 120.0f;
                yVar.fz(1);
                return new com.applovin.exoplayer2.g.a(new com.applovin.exoplayer2.g.f.d(f2, yVar.po()));
            }
            yVar.fx(iIl + iPx);
        }
        return null;
    }

    private static float j(y yVar, int i) {
        yVar.fx(i + 8);
        return yVar.pD() / yVar.pD();
    }

    private static Pair<String, byte[]> k(y yVar, int i) {
        yVar.fx(i + 8 + 4);
        yVar.fz(1);
        u(yVar);
        yVar.fz(2);
        int iPo = yVar.po();
        if ((iPo & 128) != 0) {
            yVar.fz(2);
        }
        if ((iPo & 64) != 0) {
            yVar.fz(yVar.pp());
        }
        if ((iPo & 32) != 0) {
            yVar.fz(2);
        }
        yVar.fz(1);
        u(yVar);
        String strFv = u.fv(yVar.po());
        if (MimeTypes.AUDIO_MPEG.equals(strFv) || MimeTypes.AUDIO_DTS.equals(strFv) || MimeTypes.AUDIO_DTS_HD.equals(strFv)) {
            return Pair.create(strFv, null);
        }
        yVar.fz(12);
        yVar.fz(1);
        int iU = u(yVar);
        byte[] bArr = new byte[iU];
        yVar.r(bArr, 0, iU);
        return Pair.create(strFv, bArr);
    }

    public static void p(y yVar) {
        int iIl = yVar.il();
        yVar.fz(4);
        if (yVar.px() != 1751411826) {
            iIl += 4;
        }
        yVar.fx(iIl);
    }

    private static long q(y yVar) {
        yVar.fx(8);
        yVar.fz(com.applovin.exoplayer2.e.g.a.cf(yVar.px()) != 0 ? 16 : 8);
        return yVar.pv();
    }

    private static f r(y yVar) {
        boolean z;
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        yVar.fz(iCf == 0 ? 8 : 16);
        int iPx = yVar.px();
        yVar.fz(4);
        int iIl = yVar.il();
        int i = iCf == 0 ? 4 : 8;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i3 >= i) {
                z = true;
                break;
            }
            if (yVar.hO()[iIl + i3] != -1) {
                z = false;
                break;
            }
            i3++;
        }
        long j = C.TIME_UNSET;
        if (z) {
            yVar.fz(i);
        } else {
            long jPv = iCf == 0 ? yVar.pv() : yVar.pF();
            if (jPv != 0) {
                j = jPv;
            }
        }
        yVar.fz(16);
        int iPx2 = yVar.px();
        int iPx3 = yVar.px();
        yVar.fz(4);
        int iPx4 = yVar.px();
        int iPx5 = yVar.px();
        if (iPx2 == 0 && iPx3 == 65536 && iPx4 == -65536 && iPx5 == 0) {
            i2 = 90;
        } else if (iPx2 == 0 && iPx3 == -65536 && iPx4 == 65536 && iPx5 == 0) {
            i2 = 270;
        } else if (iPx2 == -65536 && iPx3 == 0 && iPx4 == 0 && iPx5 == -65536) {
            i2 = 180;
        }
        return new f(iPx, j, i2);
    }

    private static int s(y yVar) {
        yVar.fx(16);
        return yVar.px();
    }

    private static Pair<Long, String> t(y yVar) {
        yVar.fx(8);
        int iCf = com.applovin.exoplayer2.e.g.a.cf(yVar.px());
        yVar.fz(iCf == 0 ? 8 : 16);
        long jPv = yVar.pv();
        yVar.fz(iCf == 0 ? 4 : 8);
        int iPp = yVar.pp();
        return Pair.create(Long.valueOf(jPv), "" + ((char) (((iPp >> 10) & 31) + 96)) + ((char) (((iPp >> 5) & 31) + 96)) + ((char) ((iPp & 31) + 96)));
    }

    private static int u(y yVar) {
        int iPo = yVar.po();
        int i = iPo & 127;
        while ((iPo & 128) == 128) {
            iPo = yVar.po();
            i = (i << 7) | (iPo & 127);
        }
        return i;
    }
}
