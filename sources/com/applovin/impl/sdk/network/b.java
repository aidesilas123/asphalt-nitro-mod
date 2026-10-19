package com.applovin.impl.sdk.network;

import androidx.annotation.Nullable;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.p;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.utils.z;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinErrorCodes;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final List<String> aHn = Arrays.asList("5.0/i", "4.0/ad", "1.0/mediate");
    private final e aHo;

    @Nullable
    private c aHp;
    private final x logger;
    private final n sdk;

    public static class a {
        private long aHq;
        private long akZ;

        /* JADX INFO: Access modifiers changed from: private */
        public void bP(long j) {
            this.akZ = j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void bQ(long j) {
            this.aHq = j;
        }

        public long HL() {
            return this.aHq;
        }

        public long getLatencyMillis() {
            return this.akZ;
        }
    }

    /* JADX INFO: renamed from: com.applovin.impl.sdk.network.b$b, reason: collision with other inner class name */
    private class C0081b<T> implements Consumer<e.c> {
        private final com.applovin.impl.sdk.network.c<T> aHl;
        private final String aHr;
        private final String aHs;
        private final T aHt;
        private final boolean aHu;
        private final a aHv;
        private final d<T> aHw;

        private C0081b(String str, com.applovin.impl.sdk.network.c<T> cVar, String str2, T t, boolean z, a aVar, d<T> dVar) {
            this.aHr = str;
            this.aHl = cVar;
            this.aHs = str2;
            this.aHt = t;
            this.aHu = z;
            this.aHv = aVar;
            this.aHw = dVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // androidx.core.util.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(e.c cVar) {
            int i;
            long jIn = cVar.In();
            Object objC = null;
            int iN = 0;
            try {
                int iIj = cVar.Ij();
                try {
                    if (iIj <= 0) {
                        b.this.a(this.aHs, this.aHr, iIj, jIn, (Throwable) null);
                        this.aHw.a(iIj, null, null);
                        return;
                    }
                    if (iIj < 200 || iIj >= 400) {
                        this.aHw.a(iIj, null, null);
                        return;
                    }
                    a aVar = this.aHv;
                    if (aVar != null) {
                        aVar.bP(jIn);
                    }
                    b.this.a(this.aHs, this.aHr, iIj, jIn);
                    byte[] bArrIl = cVar.Il();
                    if (u.ak(n.getApplicationContext()) && (!this.aHu || p.N(bArrIl) != p.a.V2)) {
                        b.this.sdk.Ch().b(bArrIl != null ? new String(cVar.Il(), Charset.forName(C.UTF8_NAME)) : "", this.aHr, this.aHl.vS() != null ? this.aHl.vS().toString() : "");
                    }
                    if (bArrIl == null) {
                        this.aHw.d(this.aHt, iIj);
                        return;
                    }
                    String str = new String(cVar.Il(), Charset.forName(C.UTF8_NAME));
                    a aVar2 = this.aHv;
                    if (aVar2 != null) {
                        aVar2.bQ(bArrIl.length);
                        if (this.aHl.Ie()) {
                            b.this.aHp = new c(this.aHl.zL(), bArrIl.length, jIn);
                        }
                    }
                    if (this.aHu) {
                        String strA = p.a(bArrIl, b.this.sdk.getSdkKey(), b.this.sdk);
                        if (strA == null) {
                            HashMap map = new HashMap(2);
                            map.put("request", StringUtils.getHostAndPath(this.aHr));
                            map.put(com.json.mediationsdk.utils.c.Y1, str);
                            b.this.sdk.BF().trackEvent("rdf", map);
                        }
                        str = strA;
                    }
                    try {
                        this.aHw.d(b.this.c(str, this.aHt), iIj);
                    } catch (Throwable th) {
                        String str2 = "Unable to parse response from " + StringUtils.getHostAndPath(this.aHr) + " because of " + th.getClass().getName() + " : " + th.getMessage();
                        x unused = b.this.logger;
                        if (x.Fn()) {
                            b.this.logger.c("ConnectionManager", str2, th);
                        }
                        b.this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTc);
                        b.this.sdk.Cs().d("ConnectionManager", "failedToParseResponse:" + StringUtils.getHost(this.aHr), th);
                        this.aHw.a(AppLovinErrorCodes.INVALID_RESPONSE, str2, null);
                    }
                } catch (MalformedURLException e2) {
                    e = e2;
                    i = iIj;
                    if (this.aHt != null) {
                        b.this.a(this.aHs, this.aHr, i, jIn, e);
                        this.aHw.a(-901, e.getMessage(), null);
                    } else {
                        b.this.a(this.aHs, this.aHr, i, jIn);
                        this.aHw.d(this.aHt, -901);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    iN = iIj;
                    if (((Boolean) b.this.sdk.a(com.applovin.impl.sdk.c.b.aKv)).booleanValue()) {
                        iN = cVar.Ik();
                    }
                    if (iN == 0) {
                        iN = b.this.n(th);
                    }
                    int i2 = iN;
                    try {
                        byte[] bArrIm = cVar.Im();
                        String str3 = new String(bArrIm);
                        if (bArrIm != null) {
                            if (this.aHu) {
                                str3 = p.a(bArrIm, b.this.sdk.getSdkKey(), b.this.sdk);
                            }
                            objC = b.this.c(str3, this.aHt);
                        }
                    } catch (Throwable unused2) {
                    }
                    b.this.a(this.aHs, this.aHr, i2, jIn, th);
                    this.aHw.a(i2, th.getMessage(), objC);
                }
            } catch (MalformedURLException e3) {
                e = e3;
                i = 0;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    public static class c {
        private final long aHA;
        private final long aHB;
        private final long aHy = System.currentTimeMillis();
        private final String aHz;

        public c(String str, long j, long j2) {
            this.aHz = str;
            this.aHA = j;
            this.aHB = j2;
        }

        public long HM() {
            return this.aHy;
        }

        public String HN() {
            return this.aHz;
        }

        public long HO() {
            return this.aHA;
        }

        public long HP() {
            return this.aHB;
        }

        protected boolean canEqual(Object obj) {
            return obj instanceof c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.canEqual(this) || HM() != cVar.HM() || HO() != cVar.HO() || HP() != cVar.HP()) {
                return false;
            }
            String strHN = HN();
            String strHN2 = cVar.HN();
            return strHN != null ? strHN.equals(strHN2) : strHN2 == null;
        }

        public int hashCode() {
            long jHM = HM();
            long jHO = HO();
            int i = ((((int) (jHM ^ (jHM >>> 32))) + 59) * 59) + ((int) (jHO ^ (jHO >>> 32)));
            long jHP = HP();
            String strHN = HN();
            return (((i * 59) + ((int) ((jHP >>> 32) ^ jHP))) * 59) + (strHN == null ? 43 : strHN.hashCode());
        }

        public String toString() {
            return "ConnectionManager.RequestMeasurement(timestampMillis=" + HM() + ", urlHostAndPathString=" + HN() + ", responseSizeBytes=" + HO() + ", connectionTimeMillis=" + HP() + ")";
        }
    }

    public interface d<T> {
        void a(int i, String str, T t);

        void d(T t, int i);
    }

    public b(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
        e eVar = new e(nVar);
        this.aHo = eVar;
        eVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j) {
        if (x.Fn()) {
            this.logger.g("ConnectionManager", "Successful " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + com.applovin.impl.sdk.utils.i.G(this.sdk) + " to " + cT(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i, long j, Throwable th) {
        if (x.Fn()) {
            this.logger.c("ConnectionManager", "Failed " + str + " returned " + i + " in " + (j / 1000.0f) + " s over " + com.applovin.impl.sdk.utils.i.G(this.sdk) + " to " + cT(str2), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T c(String str, T t) throws JSONException, SAXException, ClassCastException {
        if (t == null) {
            return str;
        }
        if (str != 0 && str.length() >= 3) {
            if (t instanceof JSONObject) {
                return (T) new JSONObject(str);
            }
            if (t instanceof y) {
                return (T) z.e(str, this.sdk);
            }
            if (t instanceof String) {
                return str;
            }
            if (x.Fn()) {
                this.logger.i("ConnectionManager", "Failed to process response of type '" + t.getClass().getName() + "'");
            }
        }
        return t;
    }

    private String cT(String str) {
        return "#" + str.hashCode() + " \"" + StringUtils.getHostAndPath(str) + "\"";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int n(Throwable th) {
        if (th instanceof UnknownHostException) {
            return -1009;
        }
        if (th instanceof SocketTimeoutException) {
            return -1001;
        }
        if (th instanceof IOException) {
            return -100;
        }
        return th instanceof JSONException ? -104 : -1;
    }

    @Nullable
    public c HK() {
        return this.aHp;
    }

    /* JADX WARN: Removed duplicated region for block: B:80:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0252 A[Catch: all -> 0x02a8, TryCatch #2 {all -> 0x02a8, blocks: (B:44:0x0128, B:46:0x0138, B:50:0x0164, B:49:0x0160, B:51:0x0173, B:54:0x0198, B:56:0x01b4, B:60:0x01d3, B:76:0x0236, B:79:0x0245, B:81:0x0252, B:62:0x01d7, B:65:0x01df, B:71:0x01f7, B:73:0x01fd, B:74:0x0217, B:57:0x01c2, B:82:0x0255, B:84:0x025b, B:85:0x026f, B:67:0x01f0), top: B:107:0x0128, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public <T> void a(com.applovin.impl.sdk.network.c<T> r24, com.applovin.impl.sdk.network.b.a r25, com.applovin.impl.sdk.network.b.d<T> r26) {
        /*
            Method dump skipped, instruction units count: 741
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.network.b.a(com.applovin.impl.sdk.network.c, com.applovin.impl.sdk.network.b$a, com.applovin.impl.sdk.network.b$d):void");
    }
}
