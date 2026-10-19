package com.bytedance.sdk.component.f.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.b.a.m;
import com.bytedance.sdk.component.b.a.o;
import java.net.InetAddress;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: compiled from: TNCManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1061d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f1062e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f1064g;
    private d h;
    private int s;
    private long b = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1063f = false;
    private int i = 0;
    private long j = 19700101000L;
    private int k = 0;
    private HashMap<String, Integer> l = new HashMap<>();
    private HashMap<String, Integer> m = new HashMap<>();
    private int n = 0;
    private HashMap<String, Integer> o = new HashMap<>();
    private HashMap<String, Integer> p = new HashMap<>();
    private boolean q = true;
    private Map<String, Integer> r = new HashMap();
    Handler a = new Handler(Looper.getMainLooper()) { // from class: com.bytedance.sdk.component.f.c.e.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 10000) {
                return;
            }
            e.this.b(message.arg1 != 0);
        }
    };

    private e() {
    }

    public e(int i) {
        this.s = i;
    }

    private String a(m mVar) {
        if (mVar == null || mVar.b() == null || mVar.b().a() == null) {
            return "";
        }
        try {
            return InetAddress.getByName(mVar.b().a().getHost()).getHostAddress();
        } catch (Exception unused) {
            return "";
        }
    }

    private void a(o oVar, String str) {
        int i;
        long j;
        c cVarF;
        if (oVar != null && this.q) {
            String strA = oVar.a("tnc-cmd", null);
            if (TextUtils.isEmpty(strA)) {
                com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleTncProbe, no probeProto, " + str);
                return;
            }
            String[] strArrSplit = strA.split("@");
            if (strArrSplit == null || strArrSplit.length != 2) {
                com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleTncProbe, probeProto err, " + str);
                return;
            }
            try {
                i = Integer.parseInt(strArrSplit[0]);
                try {
                    j = Long.parseLong(strArrSplit[1]);
                } catch (Throwable th) {
                    th = th;
                    th.printStackTrace();
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleTncProbe, probeProto except, " + str);
                    j = 0L;
                }
            } catch (Throwable th2) {
                th = th2;
                i = 0;
            }
            com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleTncProbe, local: " + this.i + "@" + this.j + " svr: " + i + "@" + j + " " + str);
            if (j <= this.j) {
                return;
            }
            this.i = i;
            this.j = j;
            this.f1064g.getSharedPreferences(a(), 0).edit().putInt("tnc_probe_cmd", i).putLong("tnc_probe_version", j).apply();
            if (this.i != 10000 || (cVarF = f()) == null) {
                return;
            }
            Random random = new Random(System.currentTimeMillis());
            int i2 = cVarF.l;
            long jNextInt = i2 > 0 ? ((long) random.nextInt(i2)) * 1000 : 0L;
            com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleTncProbe, updateConfig delay: " + jNextInt + " " + str);
            a(true, jNextInt);
        }
    }

    private void a(boolean z, long j) {
        if (this.a.hasMessages(10000)) {
            return;
        }
        Message messageObtainMessage = this.a.obtainMessage();
        messageObtainMessage.what = 10000;
        messageObtainMessage.arg1 = z ? 1 : 0;
        if (j > 0) {
            this.a.sendMessageDelayed(messageObtainMessage, j);
        } else {
            this.a.sendMessage(messageObtainMessage);
        }
    }

    private boolean a(int i) {
        return i >= 200 && i < 400;
    }

    private void b(String str) {
        Map<String, String> mapG;
        if (TextUtils.isEmpty(str) || (mapG = g()) == null || !mapG.containsValue(str)) {
            return;
        }
        if (this.r.get(str) == null) {
            this.r.put(str, 1);
        } else {
            this.r.put(str, Integer.valueOf(this.r.get(str).intValue() + 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        c cVarF = f();
        if (cVarF == null) {
            return;
        }
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "doUpdateRemote, " + z);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (!z && this.b + (((long) cVarF.k) * 1000) > jElapsedRealtime) {
            com.bytedance.sdk.component.f.d.c.b("TNCManager", "doUpdateRemote, time limit");
        } else {
            this.b = jElapsedRealtime;
            g.a().a(this.s, this.f1064g).c();
        }
    }

    private boolean b(int i) {
        if (i < 100 || i >= 1000) {
            return true;
        }
        c cVarF = f();
        if (cVarF == null || TextUtils.isEmpty(cVarF.m)) {
            return false;
        }
        String str = cVarF.m;
        StringBuilder sb = new StringBuilder();
        sb.append("");
        sb.append(i);
        return str.contains(sb.toString());
    }

    private void c(String str) {
        if (!TextUtils.isEmpty(str) && this.r.containsKey(str)) {
            this.r.put(str, 0);
        }
    }

    private boolean d(String str) {
        Map<String, String> mapG = g();
        if (mapG == null) {
            return false;
        }
        String str2 = mapG.get(str);
        if (TextUtils.isEmpty(str2) || this.r.get(str2) == null || this.r.get(str2).intValue() < 3) {
            return false;
        }
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleHostMapping, TNC host faild num over limit: " + str);
        return true;
    }

    private void i() {
        SharedPreferences sharedPreferences = this.f1064g.getSharedPreferences(a(), 0);
        this.i = sharedPreferences.getInt("tnc_probe_cmd", 0);
        this.j = sharedPreferences.getLong("tnc_probe_version", 19700101000L);
    }

    private void j() {
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "resetTNCControlState");
        this.k = 0;
        this.l.clear();
        this.m.clear();
        this.n = 0;
        this.o.clear();
        this.p.clear();
    }

    public String a() {
        return "ttnet_tnc_config" + this.s;
    }

    public String a(String str) {
        String protocol;
        URL url;
        if (!TextUtils.isEmpty(str) && !str.contains("/network/get_network") && !str.contains("/get_domains/v4") && !str.contains("/ies/speed")) {
            String host = null;
            try {
                url = new URL(str);
                protocol = url.getProtocol();
            } catch (Throwable th) {
                th = th;
                protocol = null;
            }
            try {
                host = url.getHost();
            } catch (Throwable th2) {
                th = th2;
                th.printStackTrace();
            }
            if (!TextUtils.isEmpty(protocol) && ((ProxyConfig.MATCH_HTTP.equals(protocol) || "https".equals(protocol)) && !TextUtils.isEmpty(host))) {
                if (d(host)) {
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleHostMapping, TNC host faild num over limit: " + host);
                    return str;
                }
                Map<String, String> mapG = g();
                if (mapG != null && mapG.containsKey(host)) {
                    String str2 = mapG.get(host);
                    if (TextUtils.isEmpty(str2)) {
                        return str;
                    }
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleHostMapping, match, origin: " + str);
                    String str3 = protocol + "://" + host;
                    String str4 = protocol + "://" + str2;
                    if (str.startsWith(str3)) {
                        str = str.replaceFirst(str3, str4);
                    }
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleHostMapping, target: " + str);
                    return str;
                }
                com.bytedance.sdk.component.f.d.c.b("TNCManager", "handleHostMapping, nomatch: " + host);
            }
        }
        return str;
    }

    public synchronized void a(Context context, boolean z) {
        if (!this.f1063f) {
            this.f1064g = context;
            this.q = z;
            this.h = new d(context, z, this.s);
            if (z) {
                i();
            }
            com.bytedance.sdk.component.f.d.c.b("TNCManager", "initTnc, isMainProc: " + z + " probeCmd: " + this.i + " probeVersion: " + this.j);
            this.c = g.a().a(this.s, this.f1064g);
            this.f1063f = true;
        }
    }

    public synchronized void a(m mVar, o oVar) {
        if (mVar == null || oVar == null) {
            return;
        }
        if (this.q) {
            if (com.bytedance.sdk.component.f.d.f.a(this.f1064g)) {
                URL urlA = null;
                try {
                    urlA = mVar.b().a();
                } catch (Exception unused) {
                }
                if (urlA == null) {
                    return;
                }
                String protocol = urlA.getProtocol();
                String host = urlA.getHost();
                String path = urlA.getPath();
                String strA = a(mVar);
                int iC = oVar.c();
                if (ProxyConfig.MATCH_HTTP.equals(protocol) || "https".equals(protocol)) {
                    if (TextUtils.isEmpty(strA)) {
                        return;
                    }
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "onResponse, url: " + protocol + "://" + host + "#" + strA + "#" + iC);
                    c cVarF = f();
                    if (cVarF != null && cVarF.b) {
                        a(oVar, host);
                    }
                    if (cVarF == null) {
                        return;
                    }
                    com.bytedance.sdk.component.f.d.c.b("TNCManager", "onResponse, url matched: " + protocol + "://" + host + "#" + strA + "#" + iC + " " + this.k + "#" + this.l.size() + "#" + this.m.size() + " " + this.n + "#" + this.o.size() + "#" + this.p.size());
                    if (iC > 0) {
                        if (a(iC)) {
                            if (this.k > 0 || this.n > 0) {
                                j();
                            }
                            c(host);
                        } else if (!b(iC)) {
                            this.n++;
                            this.o.put(path, 0);
                            this.p.put(strA, 0);
                            if (this.n >= cVarF.h && this.o.size() >= cVarF.i && this.p.size() >= cVarF.j) {
                                com.bytedance.sdk.component.f.d.c.b("TNCManager", "onResponse, url doUpdate: " + protocol + "://" + host + "#" + strA + "#" + iC);
                                a(false, 0L);
                                j();
                            }
                            b(host);
                        }
                    }
                }
            }
        }
    }

    public synchronized void a(m mVar, Exception exc) {
        if (mVar != null) {
            if (mVar.b() != null && exc != null) {
                if (this.q) {
                    if (com.bytedance.sdk.component.f.d.f.a(this.f1064g)) {
                        URL urlA = null;
                        try {
                            urlA = mVar.b().a();
                        } catch (Exception unused) {
                        }
                        if (urlA == null) {
                            return;
                        }
                        String protocol = urlA.getProtocol();
                        String host = urlA.getHost();
                        String path = urlA.getPath();
                        String strA = a(mVar);
                        if (ProxyConfig.MATCH_HTTP.equals(protocol) || "https".equals(protocol)) {
                            c cVarF = f();
                            if (cVarF == null) {
                                return;
                            }
                            com.bytedance.sdk.component.f.d.c.b("TNCManager", "onError, url matched: " + protocol + "://" + host + "#" + strA + "# " + this.k + "#" + this.l.size() + "#" + this.m.size() + " " + this.n + "#" + this.o.size() + "#" + this.p.size());
                            this.k = this.k + 1;
                            this.l.put(path, 0);
                            this.m.put(strA, 0);
                            if (this.k >= cVarF.f1056e && this.l.size() >= cVarF.f1057f && this.m.size() >= cVarF.f1058g) {
                                com.bytedance.sdk.component.f.d.c.b("TNCManager", "onError, url doUpate: " + protocol + "://" + host + "#" + strA);
                                a(false, 0L);
                                j();
                            }
                            b(host);
                        }
                    }
                }
            }
        }
    }

    public void a(b bVar) {
        this.f1062e = bVar;
    }

    public void a(boolean z) {
        this.f1061d = z;
    }

    public a b() {
        return this.c;
    }

    public boolean c() {
        return this.f1061d;
    }

    public b d() {
        return this.f1062e;
    }

    public void e() {
        this.r.clear();
    }

    public c f() {
        d dVar = this.h;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    public Map<String, String> g() {
        c cVarF = f();
        if (cVarF != null) {
            return cVarF.f1055d;
        }
        return null;
    }

    public d h() {
        return this.h;
    }
}
