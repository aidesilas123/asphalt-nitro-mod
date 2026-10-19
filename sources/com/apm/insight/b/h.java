package com.apm.insight.b;

import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import com.apm.insight.runtime.u;
import com.facebook.internal.security.CertificateUtil;
import com.gameloft.adsmanager.JavaUtils;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public static boolean b = false;
    private static int t = 2;
    c a;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile int f196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f199g;
    private b h;
    private long i;
    private long j;
    private int k;
    private long l;
    private String m;
    private String n;
    private com.apm.insight.b.e o;
    private volatile boolean p;
    private boolean q;
    private final u r;
    private volatile boolean s;
    private Runnable u;

    private static class a {
        long a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f204d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f205e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        StackTraceElement[] f206f;

        private a() {
        }

        void a() {
            this.a = -1L;
            this.b = -1L;
            this.c = -1L;
            this.f205e = -1;
            this.f206f = null;
        }
    }

    private static class b {
        final int a;
        a b;
        final List<a> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f207d = 0;

        public b(int i) {
            this.a = i;
            this.c = new ArrayList(i);
        }

        a a() {
            a aVar = this.b;
            if (aVar == null) {
                return new a();
            }
            this.b = null;
            return aVar;
        }

        void a(a aVar) {
            int size;
            int size2 = this.c.size();
            int i = this.a;
            if (size2 < i) {
                this.c.add(aVar);
                size = this.c.size();
            } else {
                int i2 = this.f207d % i;
                this.f207d = i2;
                a aVar2 = this.c.set(i2, aVar);
                aVar2.a();
                this.b = aVar2;
                size = this.f207d + 1;
            }
            this.f207d = size;
        }
    }

    public interface c {
    }

    public static class d {
        long a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f208d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f209e;
    }

    public static class e {
        public long a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f210d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f211e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        long f212f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        long f213g;
        String h;
        public String i;
        String j;
        d k;

        private void a(JSONObject jSONObject) throws JSONException {
            jSONObject.put("block_uuid", this.j);
            jSONObject.put("sblock_uuid", this.j);
            jSONObject.put("belong_frame", this.k != null);
            d dVar = this.k;
            if (dVar != null) {
                jSONObject.put("vsyncDelayTime", this.c - (dVar.a / 1000000));
                jSONObject.put("doFrameTime", (this.k.b / 1000000) - this.c);
                d dVar2 = this.k;
                jSONObject.put("inputHandlingTime", (dVar2.c / 1000000) - (dVar2.b / 1000000));
                d dVar3 = this.k;
                jSONObject.put("animationsTime", (dVar3.f208d / 1000000) - (dVar3.c / 1000000));
                d dVar4 = this.k;
                jSONObject.put("performTraversalsTime", (dVar4.f209e / 1000000) - (dVar4.f208d / 1000000));
                jSONObject.put("drawTime", this.b - (this.k.f209e / 1000000));
            }
        }

        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("msg", h.a(this.h));
                jSONObject.put("cpuDuration", this.f213g);
                jSONObject.put("duration", this.f212f);
                jSONObject.put("type", this.f210d);
                jSONObject.put("count", this.f211e);
                jSONObject.put("messageCount", this.f211e);
                jSONObject.put("lastDuration", this.b - this.c);
                jSONObject.put("start", this.a);
                jSONObject.put(TtmlNode.END, this.b);
                a(jSONObject);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
            return jSONObject;
        }

        void b() {
            this.f210d = -1;
            this.f211e = -1;
            this.f212f = -1L;
            this.h = null;
            this.j = null;
            this.k = null;
            this.i = null;
        }
    }

    private static class f {
        int a;
        int b;
        e c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        List<e> f214d = new ArrayList();

        f(int i) {
            this.a = i;
        }

        e a(int i) {
            e eVar = this.c;
            if (eVar != null) {
                eVar.f210d = i;
                this.c = null;
                return eVar;
            }
            e eVar2 = new e();
            eVar2.f210d = i;
            return eVar2;
        }

        List<e> a() {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            if (this.f214d.size() == this.a) {
                for (int i2 = this.b; i2 < this.f214d.size(); i2++) {
                    arrayList.add(this.f214d.get(i2));
                }
                while (i < this.b - 1) {
                    arrayList.add(this.f214d.get(i));
                    i++;
                }
            } else {
                while (i < this.f214d.size()) {
                    arrayList.add(this.f214d.get(i));
                    i++;
                }
            }
            return arrayList;
        }

        void a(e eVar) {
            int size;
            int size2 = this.f214d.size();
            int i = this.a;
            if (size2 < i) {
                this.f214d.add(eVar);
                size = this.f214d.size();
            } else {
                int i2 = this.b % i;
                this.b = i2;
                e eVar2 = this.f214d.set(i2, eVar);
                eVar2.b();
                this.c = eVar2;
                size = this.b + 1;
            }
            this.b = size;
        }
    }

    public h(int i) {
        this(i, false);
    }

    public h(int i, boolean z) {
        this.c = 0;
        this.f196d = 0;
        this.f197e = 100;
        this.f198f = 200;
        this.i = -1L;
        this.j = -1L;
        this.k = -1;
        this.l = -1L;
        this.p = false;
        this.q = false;
        this.s = false;
        this.u = new Runnable() { // from class: com.apm.insight.b.h.2
            private long c;
            private long b = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f200d = -1;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private int f201e = 0;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private int f202f = 0;

            @Override // java.lang.Runnable
            public void run() {
                long jUptimeMillis = SystemClock.uptimeMillis();
                a aVarA = h.this.h.a();
                if (this.f200d == h.this.f196d) {
                    this.f201e++;
                } else {
                    this.f201e = 0;
                    this.f202f = 0;
                    this.c = jUptimeMillis;
                }
                this.f200d = h.this.f196d;
                int i2 = this.f201e;
                if (i2 > 0 && i2 - this.f202f >= h.t && this.b != 0 && jUptimeMillis - this.c > 700 && h.this.s) {
                    aVarA.f206f = Looper.getMainLooper().getThread().getStackTrace();
                    this.f202f = this.f201e;
                }
                aVarA.f204d = h.this.s;
                aVarA.c = (jUptimeMillis - this.b) - 300;
                aVarA.a = jUptimeMillis;
                long jUptimeMillis2 = SystemClock.uptimeMillis();
                this.b = jUptimeMillis2;
                aVarA.b = jUptimeMillis2 - jUptimeMillis;
                aVarA.f205e = h.this.f196d;
                h.this.r.a(h.this.u, 300L);
                h.this.h.a(aVarA);
            }
        };
        this.a = new c() { // from class: com.apm.insight.b.h.1
        };
        if (!z && !b) {
            this.r = null;
            return;
        }
        u uVar = new u("looper_monitor");
        this.r = uVar;
        uVar.b();
        this.h = new b(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);
        uVar.a(this.u, 300L);
    }

    private static long a(int i) {
        if (i < 0) {
            return 0L;
        }
        try {
            return com.apm.insight.runtime.g.a(i);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String a(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "unknown message";
        }
        try {
            String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
            String str3 = strArrSplit.length == 2 ? strArrSplit[1] : "";
            if (str.contains("{") && str.contains("}")) {
                str2 = str.split("\\{")[0];
                try {
                    str = str2 + str.split("\\}")[1];
                } catch (Throwable unused) {
                    return str2;
                }
            } else {
                str2 = str;
            }
            if (str.contains("@")) {
                String[] strArrSplit2 = str.split("@");
                if (strArrSplit2.length > 1) {
                    str = strArrSplit2[0];
                }
            }
            if (str.contains("(") && str.contains(")") && !str.endsWith(" null")) {
                String[] strArrSplit3 = str.split("\\(");
                if (strArrSplit3.length > 1) {
                    str = strArrSplit3[1];
                }
                str = str.replace(")", "");
            }
            if (str.startsWith(" ")) {
                str = str.replace(" ", "");
            }
            return str + str3;
        } catch (Throwable unused2) {
            return str;
        }
    }

    private void a(int i, long j, String str) {
        a(i, j, str, true);
    }

    private void a(int i, long j, String str, boolean z) {
        this.q = true;
        e eVarA = this.f199g.a(i);
        eVarA.f212f = j - this.i;
        if (z) {
            long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            eVarA.f213g = jCurrentThreadTimeMillis - this.l;
            this.l = jCurrentThreadTimeMillis;
        } else {
            eVarA.f213g = -1L;
        }
        eVarA.f211e = this.c;
        eVarA.h = str;
        eVarA.i = this.m;
        eVarA.a = this.i;
        eVarA.b = j;
        eVarA.c = this.j;
        this.f199g.a(eVarA);
        this.c = 0;
        this.i = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, long j) {
        h hVar;
        int i;
        String str;
        boolean z2;
        int i2 = this.f196d + 1;
        this.f196d = i2;
        this.f196d = i2 & 65535;
        this.q = false;
        if (this.i < 0) {
            this.i = j;
        }
        if (this.j < 0) {
            this.j = j;
        }
        if (this.k < 0) {
            this.k = Process.myTid();
            this.l = SystemClock.currentThreadTimeMillis();
        }
        long j2 = j - this.i;
        int i3 = this.f198f;
        if (j2 > i3) {
            long j3 = this.j;
            if (j - j3 > i3) {
                if (z) {
                    if (this.c == 0) {
                        a(1, j, "no message running");
                    } else {
                        a(9, j3, this.m);
                        i = 1;
                        z2 = false;
                        str = "no message running";
                    }
                } else if (this.c == 0) {
                    i = 8;
                    str = this.n;
                    z2 = true;
                } else {
                    hVar = this;
                    hVar.a(9, j3, this.m, false);
                    i = 8;
                    str = this.n;
                    z2 = true;
                    hVar.a(i, j, str, z2);
                }
                hVar = this;
                hVar.a(i, j, str, z2);
            } else {
                a(9, j, this.n);
            }
        }
        this.j = j;
    }

    private void e() {
        this.f197e = 100;
        this.f198f = JavaUtils.Constants.NATIVE_HEIGHT_DP_300;
    }

    static /* synthetic */ int f(h hVar) {
        int i = hVar.c;
        hVar.c = i + 1;
        return i;
    }

    public e a(long j) {
        e eVar = new e();
        eVar.h = this.n;
        eVar.i = this.m;
        eVar.f212f = j - this.j;
        eVar.f213g = a(this.k) - this.l;
        eVar.f211e = this.c;
        return eVar;
    }

    public void a() {
        if (this.p) {
            return;
        }
        this.p = true;
        e();
        this.f199g = new f(this.f197e);
        this.o = new com.apm.insight.b.e() { // from class: com.apm.insight.b.h.3
            @Override // com.apm.insight.b.e
            public void a(String str) {
                h.this.s = true;
                h.this.n = str;
                super.a(str);
                h.this.a(true, com.apm.insight.b.e.a);
            }

            @Override // com.apm.insight.b.e
            public boolean a() {
                return true;
            }

            @Override // com.apm.insight.b.e
            public void b(String str) {
                super.b(str);
                h.f(h.this);
                h.this.a(false, com.apm.insight.b.e.a);
                h hVar = h.this;
                hVar.m = hVar.n;
                h.this.n = "no message running";
                h.this.s = false;
            }
        };
        i.a();
        i.a(this.o);
        k.a(k.a());
    }

    void b() {
        a();
    }

    public JSONArray c() {
        JSONArray jSONArray = new JSONArray();
        try {
            List<e> listA = this.f199g.a();
            if (listA == null) {
                return jSONArray;
            }
            int i = 0;
            for (e eVar : listA) {
                if (eVar != null) {
                    i++;
                    jSONArray.put(eVar.a().put("id", i));
                }
            }
        } catch (Throwable unused) {
        }
        return jSONArray;
    }
}
