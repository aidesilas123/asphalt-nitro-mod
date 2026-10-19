package com.applovin.exoplayer2.k;

import android.content.Context;
import android.os.Handler;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.k.d;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.w;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.qc;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class n implements aa, d {
    public static final com.applovin.exoplayer2.common.a.t<String, Integer> ZL = ol();
    public static final com.applovin.exoplayer2.common.a.s<Long> ZM = com.applovin.exoplayer2.common.a.s.a(6200000L, 3900000L, 2300000L, 1300000L, 620000L);
    public static final com.applovin.exoplayer2.common.a.s<Long> ZN = com.applovin.exoplayer2.common.a.s.a(248000L, 160000L, 142000L, 127000L, 113000L);
    public static final com.applovin.exoplayer2.common.a.s<Long> ZO = com.applovin.exoplayer2.common.a.s.a(2200000L, 1300000L, 950000L, 760000L, 520000L);
    public static final com.applovin.exoplayer2.common.a.s<Long> ZP = com.applovin.exoplayer2.common.a.s.a(4400000L, 2300000L, 1500000L, 1100000L, 640000L);
    public static final com.applovin.exoplayer2.common.a.s<Long> ZQ = com.applovin.exoplayer2.common.a.s.a(10000000L, 7200000L, 5000000L, 2700000L, 1600000L);
    public static final com.applovin.exoplayer2.common.a.s<Long> ZR = com.applovin.exoplayer2.common.a.s.a(2600000L, 2200000L, 2000000L, 1500000L, 470000L);

    @Nullable
    private static n ZS;
    private final com.applovin.exoplayer2.common.a.u<Integer, Long> ZT;
    private final d.a.C0050a ZU;
    private final y ZV;
    private final boolean ZW;
    private int ZX;
    private long ZY;
    private long ZZ;
    private int aaa;
    private long aab;
    private long aac;
    private long aad;
    private long aae;
    private boolean aaf;
    private int aag;
    private final com.applovin.exoplayer2.l.d bR;

    public static final class a {

        @Nullable
        private final Context E;
        private boolean ZW;
        private Map<Integer, Long> aah;
        private int aai;
        private com.applovin.exoplayer2.l.d bR;

        public a(Context context) {
            this.E = context == null ? null : context.getApplicationContext();
            this.aah = aM(ai.n(context));
            this.aai = 2000;
            this.bR = com.applovin.exoplayer2.l.d.abJ;
            this.ZW = true;
        }

        private static Map<Integer, Long> aM(String str) {
            com.applovin.exoplayer2.common.a.s<Integer> sVarAN = aN(str);
            HashMap map = new HashMap(8);
            map.put(0, 1000000L);
            com.applovin.exoplayer2.common.a.s<Long> sVar = n.ZM;
            map.put(2, sVar.get(sVarAN.get(0).intValue()));
            map.put(3, n.ZN.get(sVarAN.get(1).intValue()));
            map.put(4, n.ZO.get(sVarAN.get(2).intValue()));
            map.put(5, n.ZP.get(sVarAN.get(3).intValue()));
            map.put(10, n.ZQ.get(sVarAN.get(4).intValue()));
            map.put(9, n.ZR.get(sVarAN.get(5).intValue()));
            map.put(7, sVar.get(sVarAN.get(0).intValue()));
            return map;
        }

        private static com.applovin.exoplayer2.common.a.s<Integer> aN(String str) {
            com.applovin.exoplayer2.common.a.s<Integer> sVarK = n.ZL.k(str);
            return sVarK.isEmpty() ? com.applovin.exoplayer2.common.a.s.a(2, 2, 2, 2, 2, 2) : sVarK;
        }

        public n om() {
            return new n(this.E, this.aah, this.aai, this.bR, this.ZW);
        }
    }

    @Deprecated
    public n() {
        this(null, com.applovin.exoplayer2.common.a.u.gi(), 2000, com.applovin.exoplayer2.l.d.abJ, false);
    }

    private n(@Nullable Context context, Map<Integer, Long> map, int i, com.applovin.exoplayer2.l.d dVar, boolean z) {
        this.ZT = com.applovin.exoplayer2.common.a.u.a(map);
        this.ZU = new d.a.C0050a();
        this.ZV = new y(i);
        this.bR = dVar;
        this.ZW = z;
        if (context == null) {
            this.aaa = 0;
            this.aad = fk(0);
            return;
        }
        com.applovin.exoplayer2.l.w wVarK = com.applovin.exoplayer2.l.w.k(context);
        int iPc = wVarK.pc();
        this.aaa = iPc;
        this.aad = fk(iPc);
        wVarK.a(new w.b() { // from class: com.applovin.exoplayer2.k.b0
            @Override // com.applovin.exoplayer2.l.w.b
            public final void onNetworkTypeChanged(int i2) {
                this.a.onNetworkTypeChanged(i2);
            }
        });
    }

    private static boolean a(l lVar, boolean z) {
        return z && !lVar.fg(8);
    }

    private long fk(int i) {
        Long l = this.ZT.get(Integer.valueOf(i));
        if (l == null) {
            l = this.ZT.get(0);
        }
        if (l == null) {
            l = 1000000L;
        }
        return l.longValue();
    }

    private void h(int i, long j, long j2) {
        if (i == 0 && j == 0 && j2 == this.aae) {
            return;
        }
        this.aae = j2;
        this.ZU.g(i, j, j2);
    }

    public static synchronized n i(Context context) {
        if (ZS == null) {
            ZS = new a(context).om();
        }
        return ZS;
    }

    private static com.applovin.exoplayer2.common.a.t<String, Integer> ol() {
        return com.applovin.exoplayer2.common.a.t.gf().b("AD", 1, 2, 0, 0, 2, 2).b("AE", 1, 4, 4, 4, 2, 2).b("AF", 4, 4, 3, 4, 2, 2).b("AG", 4, 2, 1, 4, 2, 2).b("AI", 1, 2, 2, 2, 2, 2).b("AL", 1, 1, 1, 1, 2, 2).b("AM", 2, 2, 1, 3, 2, 2).b("AO", 3, 4, 3, 1, 2, 2).b("AR", 2, 4, 2, 1, 2, 2).b("AS", 2, 2, 3, 3, 2, 2).b("AT", 0, 1, 0, 0, 0, 2).b("AU", 0, 2, 0, 1, 1, 2).b("AW", 1, 2, 0, 4, 2, 2).b("AX", 0, 2, 2, 2, 2, 2).b("AZ", 3, 3, 3, 4, 4, 2).b("BA", 1, 1, 0, 1, 2, 2).b("BB", 0, 2, 0, 0, 2, 2).b("BD", 2, 0, 3, 3, 2, 2).b("BE", 0, 0, 2, 3, 2, 2).b("BF", 4, 4, 4, 2, 2, 2).b("BG", 0, 1, 0, 0, 2, 2).b("BH", 1, 0, 2, 4, 2, 2).b("BI", 4, 4, 4, 4, 2, 2).b("BJ", 4, 4, 4, 4, 2, 2).b("BL", 1, 2, 2, 2, 2, 2).b("BM", 0, 2, 0, 0, 2, 2).b("BN", 3, 2, 1, 0, 2, 2).b("BO", 1, 2, 4, 2, 2, 2).b("BQ", 1, 2, 1, 2, 2, 2).b("BR", 2, 4, 3, 2, 2, 2).b("BS", 2, 2, 1, 3, 2, 2).b("BT", 3, 0, 3, 2, 2, 2).b("BW", 3, 4, 1, 1, 2, 2).b("BY", 1, 1, 1, 2, 2, 2).b("BZ", 2, 2, 2, 2, 2, 2).b("CA", 0, 3, 1, 2, 4, 2).b("CD", 4, 2, 2, 1, 2, 2).b("CF", 4, 2, 3, 2, 2, 2).b("CG", 3, 4, 2, 2, 2, 2).b("CH", 0, 0, 0, 0, 1, 2).b("CI", 3, 3, 3, 3, 2, 2).b("CK", 2, 2, 3, 0, 2, 2).b("CL", 1, 1, 2, 2, 2, 2).b("CM", 3, 4, 3, 2, 2, 2).b("CN", 2, 2, 2, 1, 3, 2).b("CO", 2, 3, 4, 2, 2, 2).b("CR", 2, 3, 4, 4, 2, 2).b("CU", 4, 4, 2, 2, 2, 2).b("CV", 2, 3, 1, 0, 2, 2).b("CW", 1, 2, 0, 0, 2, 2).b("CY", 1, 1, 0, 0, 2, 2).b("CZ", 0, 1, 0, 0, 1, 2).b("DE", 0, 0, 1, 1, 0, 2).b("DJ", 4, 0, 4, 4, 2, 2).b("DK", 0, 0, 1, 0, 0, 2).b("DM", 1, 2, 2, 2, 2, 2).b("DO", 3, 4, 4, 4, 2, 2).b("DZ", 3, 3, 4, 4, 2, 4).b("EC", 2, 4, 3, 1, 2, 2).b("EE", 0, 1, 0, 0, 2, 2).b("EG", 3, 4, 3, 3, 2, 2).b("EH", 2, 2, 2, 2, 2, 2).b("ER", 4, 2, 2, 2, 2, 2).b("ES", 0, 1, 1, 1, 2, 2).b("ET", 4, 4, 4, 1, 2, 2).b("FI", 0, 0, 0, 0, 0, 2).b("FJ", 3, 0, 2, 3, 2, 2).b("FK", 4, 2, 2, 2, 2, 2).b("FM", 3, 2, 4, 4, 2, 2).b("FO", 1, 2, 0, 1, 2, 2).b("FR", 1, 1, 2, 0, 1, 2).b("GA", 3, 4, 1, 1, 2, 2).b("GB", 0, 0, 1, 1, 1, 2).b("GD", 1, 2, 2, 2, 2, 2).b("GE", 1, 1, 1, 2, 2, 2).b("GF", 2, 2, 2, 3, 2, 2).b("GG", 1, 2, 0, 0, 2, 2).b("GH", 3, 1, 3, 2, 2, 2).b("GI", 0, 2, 0, 0, 2, 2).b("GL", 1, 2, 0, 0, 2, 2).b("GM", 4, 3, 2, 4, 2, 2).b("GN", 4, 3, 4, 2, 2, 2).b("GP", 2, 1, 2, 3, 2, 2).b("GQ", 4, 2, 2, 4, 2, 2).b("GR", 1, 2, 0, 0, 2, 2).b("GT", 3, 2, 3, 1, 2, 2).b("GU", 1, 2, 3, 4, 2, 2).b("GW", 4, 4, 4, 4, 2, 2).b("GY", 3, 3, 3, 4, 2, 2).b("HK", 0, 1, 2, 3, 2, 0).b("HN", 3, 1, 3, 3, 2, 2).b("HR", 1, 1, 0, 0, 3, 2).b("HT", 4, 4, 4, 4, 2, 2).b("HU", 0, 0, 0, 0, 0, 2).b("ID", 3, 2, 3, 3, 2, 2).b("IE", 0, 0, 1, 1, 3, 2).b("IL", 1, 0, 2, 3, 4, 2).b("IM", 0, 2, 0, 1, 2, 2).b("IN", 2, 1, 3, 3, 2, 2).b("IO", 4, 2, 2, 4, 2, 2).b("IQ", 3, 3, 4, 4, 2, 2).b("IR", 3, 2, 3, 2, 2, 2).b(IronSourceConstants.INTERSTITIAL_EVENT_TYPE, 0, 2, 0, 0, 2, 2).b("IT", 0, 4, 0, 1, 2, 2).b("JE", 2, 2, 1, 2, 2, 2).b("JM", 3, 3, 4, 4, 2, 2).b("JO", 2, 2, 1, 1, 2, 2).b("JP", 0, 0, 0, 0, 2, 1).b("KE", 3, 4, 2, 2, 2, 2).b("KG", 2, 0, 1, 1, 2, 2).b("KH", 1, 0, 4, 3, 2, 2).b("KI", 4, 2, 4, 3, 2, 2).b("KM", 4, 3, 2, 3, 2, 2).b("KN", 1, 2, 2, 2, 2, 2).b("KP", 4, 2, 2, 2, 2, 2).b("KR", 0, 0, 1, 3, 1, 2).b("KW", 1, 3, 1, 1, 1, 2).b("KY", 1, 2, 0, 2, 2, 2).b("KZ", 2, 2, 2, 3, 2, 2).b("LA", 1, 2, 1, 1, 2, 2).b("LB", 3, 2, 0, 0, 2, 2).b("LC", 1, 2, 0, 0, 2, 2).b("LI", 0, 2, 2, 2, 2, 2).b("LK", 2, 0, 2, 3, 2, 2).b("LR", 3, 4, 4, 3, 2, 2).b("LS", 3, 3, 2, 3, 2, 2).b("LT", 0, 0, 0, 0, 2, 2).b("LU", 1, 0, 1, 1, 2, 2).b("LV", 0, 0, 0, 0, 2, 2).b("LY", 4, 2, 4, 3, 2, 2).b(RequestConfiguration.MAX_AD_CONTENT_RATING_MA, 3, 2, 2, 1, 2, 2).b("MC", 0, 2, 0, 0, 2, 2).b(qc.B, 1, 2, 0, 0, 2, 2).b("ME", 1, 2, 0, 1, 2, 2).b("MF", 2, 2, 1, 1, 2, 2).b("MG", 3, 4, 2, 2, 2, 2).b("MH", 4, 2, 2, 4, 2, 2).b("MK", 1, 1, 0, 0, 2, 2).b("ML", 4, 4, 2, 2, 2, 2).b("MM", 2, 3, 3, 3, 2, 2).b("MN", 2, 4, 2, 2, 2, 2).b("MO", 0, 2, 4, 4, 2, 2).b("MP", 0, 2, 2, 2, 2, 2).b("MQ", 2, 2, 2, 3, 2, 2).b("MR", 3, 0, 4, 3, 2, 2).b("MS", 1, 2, 2, 2, 2, 2).b("MT", 0, 2, 0, 0, 2, 2).b("MU", 2, 1, 1, 2, 2, 2).b("MV", 4, 3, 2, 4, 2, 2).b("MW", 4, 2, 1, 0, 2, 2).b("MX", 2, 4, 4, 4, 4, 2).b("MY", 1, 0, 3, 2, 2, 2).b("MZ", 3, 3, 2, 1, 2, 2).b("NA", 4, 3, 3, 2, 2, 2).b("NC", 3, 0, 4, 4, 2, 2).b("NE", 4, 4, 4, 4, 2, 2).b("NF", 2, 2, 2, 2, 2, 2).b("NG", 3, 3, 2, 3, 2, 2).b("NI", 2, 1, 4, 4, 2, 2).b("NL", 0, 2, 3, 2, 0, 2).b("NO", 0, 1, 2, 0, 0, 2).b("NP", 2, 0, 4, 2, 2, 2).b("NR", 3, 2, 3, 1, 2, 2).b("NU", 4, 2, 2, 2, 2, 2).b("NZ", 0, 2, 1, 2, 4, 2).b("OM", 2, 2, 1, 3, 3, 2).b("PA", 1, 3, 3, 3, 2, 2).b("PE", 2, 3, 4, 4, 2, 2).b("PF", 2, 2, 2, 1, 2, 2).b(RequestConfiguration.MAX_AD_CONTENT_RATING_PG, 4, 4, 3, 2, 2, 2).b("PH", 2, 1, 3, 3, 3, 2).b("PK", 3, 2, 3, 3, 2, 2).b("PL", 1, 0, 1, 2, 3, 2).b("PM", 0, 2, 2, 2, 2, 2).b("PR", 2, 1, 2, 2, 4, 3).b("PS", 3, 3, 2, 2, 2, 2).b("PT", 0, 1, 1, 0, 2, 2).b("PW", 1, 2, 4, 1, 2, 2).b("PY", 2, 0, 3, 2, 2, 2).b("QA", 2, 3, 1, 2, 3, 2).b("RE", 1, 0, 2, 2, 2, 2).b("RO", 0, 1, 0, 1, 0, 2).b("RS", 1, 2, 0, 0, 2, 2).b("RU", 0, 1, 0, 1, 4, 2).b("RW", 3, 3, 3, 1, 2, 2).b("SA", 2, 2, 2, 1, 1, 2).b("SB", 4, 2, 3, 2, 2, 2).b("SC", 4, 2, 1, 3, 2, 2).b("SD", 4, 4, 4, 4, 2, 2).b("SE", 0, 0, 0, 0, 0, 2).b("SG", 1, 0, 1, 2, 3, 2).b("SH", 4, 2, 2, 2, 2, 2).b("SI", 0, 0, 0, 0, 2, 2).b("SJ", 2, 2, 2, 2, 2, 2).b("SK", 0, 1, 0, 0, 2, 2).b("SL", 4, 3, 4, 0, 2, 2).b("SM", 0, 2, 2, 2, 2, 2).b("SN", 4, 4, 4, 4, 2, 2).b("SO", 3, 3, 3, 4, 2, 2).b("SR", 3, 2, 2, 2, 2, 2).b("SS", 4, 4, 3, 3, 2, 2).b("ST", 2, 2, 1, 2, 2, 2).b("SV", 2, 1, 4, 3, 2, 2).b("SX", 2, 2, 1, 0, 2, 2).b("SY", 4, 3, 3, 2, 2, 2).b("SZ", 3, 3, 2, 4, 2, 2).b("TC", 2, 2, 2, 0, 2, 2).b("TD", 4, 3, 4, 4, 2, 2).b("TG", 3, 2, 2, 4, 2, 2).b("TH", 0, 3, 2, 3, 2, 2).b("TJ", 4, 4, 4, 4, 2, 2).b("TL", 4, 0, 4, 4, 2, 2).b("TM", 4, 2, 4, 3, 2, 2).b("TN", 2, 1, 1, 2, 2, 2).b("TO", 3, 3, 4, 3, 2, 2).b("TR", 1, 2, 1, 1, 2, 2).b("TT", 1, 4, 0, 1, 2, 2).b("TV", 3, 2, 2, 4, 2, 2).b("TW", 0, 0, 0, 0, 1, 0).b("TZ", 3, 3, 3, 2, 2, 2).b(qc.G, 0, 3, 1, 1, 2, 2).b("UG", 3, 2, 3, 3, 2, 2).b("US", 1, 1, 2, 2, 4, 2).b("UY", 2, 2, 1, 1, 2, 2).b("UZ", 2, 1, 3, 4, 2, 2).b("VC", 1, 2, 2, 2, 2, 2).b("VE", 4, 4, 4, 4, 2, 2).b("VG", 2, 2, 1, 1, 2, 2).b("VI", 1, 2, 1, 2, 2, 2).b("VN", 0, 1, 3, 4, 2, 2).b("VU", 4, 0, 3, 1, 2, 2).b("WF", 4, 2, 2, 4, 2, 2).b("WS", 3, 1, 3, 1, 2, 2).b("XK", 0, 1, 1, 0, 2, 2).b("YE", 4, 4, 4, 3, 2, 2).b("YT", 4, 2, 2, 3, 2, 2).b("ZA", 3, 3, 2, 1, 2, 2).b("ZM", 3, 2, 3, 3, 2, 2).b("ZW", 3, 2, 4, 3, 2, 2).gh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void onNetworkTypeChanged(int i) {
        int i2 = this.aaa;
        if (i2 == 0 || this.ZW) {
            if (this.aaf) {
                i = this.aag;
            }
            if (i2 == i) {
                return;
            }
            this.aaa = i;
            if (i != 1 && i != 0 && i != 8) {
                this.aad = fk(i);
                long jOK = this.bR.oK();
                h(this.ZX > 0 ? (int) (jOK - this.ZY) : 0, this.ZZ, this.aad);
                this.ZY = jOK;
                this.ZZ = 0L;
                this.aac = 0L;
                this.aab = 0L;
                this.ZV.Y();
            }
        }
    }

    @Override // com.applovin.exoplayer2.k.d
    public void a(Handler handler, d.a aVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(handler);
        com.applovin.exoplayer2.l.a.checkNotNull(aVar);
        this.ZU.b(handler, aVar);
    }

    @Override // com.applovin.exoplayer2.k.d
    public void a(d.a aVar) {
        this.ZU.b(aVar);
    }

    @Override // com.applovin.exoplayer2.k.aa
    public void a(i iVar, l lVar, boolean z) {
    }

    @Override // com.applovin.exoplayer2.k.aa
    public synchronized void a(i iVar, l lVar, boolean z, int i) {
        if (a(lVar, z)) {
            this.ZZ += (long) i;
        }
    }

    @Override // com.applovin.exoplayer2.k.aa
    public synchronized void b(i iVar, l lVar, boolean z) {
        if (a(lVar, z)) {
            if (this.ZX == 0) {
                this.ZY = this.bR.oK();
            }
            this.ZX++;
        }
    }

    @Override // com.applovin.exoplayer2.k.aa
    public synchronized void c(i iVar, l lVar, boolean z) {
        if (a(lVar, z)) {
            com.applovin.exoplayer2.l.a.checkState(this.ZX > 0);
            long jOK = this.bR.oK();
            int i = (int) (jOK - this.ZY);
            this.aab += (long) i;
            long j = this.aac;
            long j2 = this.ZZ;
            this.aac = j + j2;
            if (i > 0) {
                this.ZV.e((int) Math.sqrt(j2), (j2 * 8000.0f) / i);
                if (this.aab >= AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS || this.aac >= PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) {
                    this.aad = (long) this.ZV.x(0.5f);
                }
                h(i, this.ZZ, this.aad);
                this.ZY = jOK;
                this.ZZ = 0L;
            }
            this.ZX--;
        }
    }

    @Override // com.applovin.exoplayer2.k.d
    public aa od() {
        return this;
    }
}
