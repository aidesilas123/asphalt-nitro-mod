package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.iab.omid.library.mmadbridge.Omid;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.MBridgeSDK;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.c.g;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.same.net.o;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.ad;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.out.MBridgeSDKFactory;
import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SDKController.java */
/* JADX INFO: loaded from: classes4.dex */
public class c {
    private static volatile c h;
    private Context i;
    private String j;
    private String k;
    private String l;
    private String m;
    private com.mbridge.msdk.b.a o;
    private String p;
    private Map<String, Object> t;
    private int u;
    private boolean n = false;
    public final int a = 1;
    public final int b = 2;
    public final int c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7031d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7032e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f7033f = 6;
    private boolean q = false;
    private AtomicBoolean r = null;
    private FastKV s = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Handler f7034g = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.foundation.controller.c.5
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            List list;
            try {
                int i = message.what;
                if (i == 2) {
                    Object obj = message.obj;
                    if (!(obj instanceof List) || (list = (List) obj) == null || list.size() <= 0) {
                        return;
                    }
                    p pVar = new p(c.this.i, 0);
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        l lVar = (l) list.get(i2);
                        Boolean bool = Boolean.FALSE;
                        if (i2 == list.size() - 1) {
                            bool = Boolean.TRUE;
                        }
                        pVar.a(lVar, bool);
                    }
                    return;
                }
                if (i == 3) {
                    File file = (File) message.obj;
                    if (file != null) {
                        String strA = y.a(file);
                        if (TextUtils.isEmpty(strA)) {
                            return;
                        }
                        String[] strArrSplit = strA.split("====");
                        if (strArrSplit.length > 0) {
                            new p(c.this.i).a(strArrSplit[0], file);
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (i == 4) {
                    String str = (String) message.obj;
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    if (k.a().c()) {
                        k.a().a(str);
                        return;
                    } else {
                        new p(c.this.i, 0).a("click_duration", str, null, null);
                        return;
                    }
                }
                if (i == 5) {
                    String str2 = (String) message.obj;
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    if (k.a().c()) {
                        k.a().a(str2);
                        return;
                    } else {
                        new p(c.this.i, 0).a("load_duration", str2, null, null);
                        return;
                    }
                }
                if (i == 6) {
                    Object obj2 = message.obj;
                    if (obj2 == null || !(obj2 instanceof String)) {
                        return;
                    }
                    String str3 = (String) obj2;
                    if (TextUtils.isEmpty(str3)) {
                        return;
                    }
                    if (k.a().c()) {
                        k.a().a(str3);
                        return;
                    } else {
                        new p(c.this.i, 0).a("device_data", str3, null, null);
                        return;
                    }
                }
                if (i != 9) {
                    return;
                }
                e eVar = (e) message.obj;
                com.mbridge.msdk.foundation.tools.d dVarF = b.d().f();
                if (dVarF != null && dVarF.a() && eVar != null && eVar.M() == 1) {
                    com.mbridge.msdk.foundation.same.report.b.d.a(c.this.i).a();
                }
                if (dVarF == null || !dVarF.b()) {
                    return;
                }
                com.mbridge.msdk.foundation.same.report.b.c.a();
            } catch (Exception e2) {
                aa.d("SDKController", e2.getMessage());
            }
        }
    };

    private c() {
    }

    public static c a() {
        if (h == null) {
            synchronized (c.class) {
                if (h == null) {
                    h = new c();
                }
            }
        }
        return h;
    }

    static /* synthetic */ void a(c cVar, String str) {
        if (f.a() == null) {
            return;
        }
        f fVarA = f.a();
        if (fVarA != null) {
            e eVarB = fVarA.b(str);
            if (eVarB != null) {
                MBridgeConstans.OMID_JS_SERVICE_URL = eVarB.ax();
                MBridgeConstans.OMID_JS_H5_URL = eVarB.aw();
                if (!TextUtils.isEmpty(eVarB.E())) {
                    com.mbridge.msdk.foundation.same.net.g.d.a().f7148e = eVarB.E();
                    com.mbridge.msdk.foundation.same.net.g.d.a().e();
                }
                if (!TextUtils.isEmpty(eVarB.F())) {
                    com.mbridge.msdk.foundation.same.net.g.d.a().f7149f = eVarB.F();
                    com.mbridge.msdk.foundation.same.net.g.d.a().f();
                }
            } else {
                MBridgeConstans.OMID_JS_SERVICE_URL = com.mbridge.msdk.c.a.b.a;
                MBridgeConstans.OMID_JS_H5_URL = com.mbridge.msdk.c.a.b.b;
            }
        }
        if (f.a().a(str) && f.a().a(str, 1, (String) null)) {
            new g().a(cVar.i, str, cVar.l);
        } else {
            new p(cVar.i).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            Class<?> cls = Class.forName("com.mbridge.msdk.d.b");
            cls.getDeclaredMethod("start", new Class[0]).invoke(cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable th) {
            aa.b("SDKController", th.getMessage(), th);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007c -> B:27:0x007f). Please report as a decompilation issue!!! */
    public final void a(Map<String, Object> map, int i) {
        if (MBridgeSDKFactory.getMBridgeSDK().getStatus() != MBridgeSDK.PLUGIN_LOAD_STATUS.COMPLETED) {
            return;
        }
        this.t = map;
        this.u = i;
        b.d().h();
        if (map != null) {
            if (this.o == null) {
                this.o = new com.mbridge.msdk.b.a();
            }
            try {
                Map<String, Object> map2 = this.t;
                if (map2 != null && map2.size() > 0 && this.t.containsKey(MBridgeConstans.PROPERTIES_LAYOUT_TYPE) && ((Integer) this.t.get(MBridgeConstans.PROPERTIES_LAYOUT_TYPE)).intValue() == 0) {
                    Map<String, Object> map3 = this.t;
                    int i2 = this.u;
                    try {
                        Class<?> cls = Class.forName("com.mbridge.msdk.mbnative.e.a");
                        cls.getMethod("preload", Map.class, Integer.TYPE).invoke(cls.newInstance(), map3, Integer.valueOf(i2));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public final void a(Map map, final Context context) {
        String string;
        String string2;
        List<com.mbridge.msdk.foundation.entity.a> listB;
        Object objNewInstance;
        String string3 = "";
        if (context != null) {
            if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPID)) {
                this.k = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
            }
            this.i = context.getApplicationContext();
            b.d().b(this.i);
            try {
                String str = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
                if (!TextUtils.isEmpty(str)) {
                    com.mbridge.msdk.foundation.a.a.a.a().a(MBridgeConstans.SDK_APP_ID, str);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            try {
                o.a(this.i);
            } catch (Exception unused) {
            }
            if (this.n) {
                new p(context).a();
                return;
            }
            w.q(context);
            if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPID)) {
                this.k = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPID);
            }
            if (map.containsKey(MBridgeConstans.ID_MBRIDGE_APPKEY)) {
                this.l = (String) map.get(MBridgeConstans.ID_MBRIDGE_APPKEY);
            }
            if (map.containsKey(MBridgeConstans.ID_MBRIDGE_WX_APPID)) {
                this.m = (String) map.get(MBridgeConstans.ID_MBRIDGE_WX_APPID);
            }
            if (map.containsKey(MBridgeConstans.PACKAGE_NAME_MANIFEST)) {
                this.p = (String) map.get(MBridgeConstans.PACKAGE_NAME_MANIFEST);
            }
            if (map.containsKey(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH)) {
                this.j = (String) map.get(MBridgeConstans.ID_MBRIDGE_STARTUPCRASH);
            }
            try {
                e eVarB = f.a().b(b.d().h());
                if (eVarB != null && (listB = eVarB.b()) != null && listB.size() > 0) {
                    for (com.mbridge.msdk.foundation.entity.a aVar : listB) {
                        if (aVar.a() == 287) {
                            Class<?> cls = Class.forName("com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler");
                            if (this.i != null && (objNewInstance = cls.getConstructor(String.class, String.class).newInstance("", aVar.b())) != null) {
                                cls.getMethod("loadFormSelfFilling", new Class[0]).invoke(objNewInstance, new Object[0]);
                            }
                        } else if (aVar.a() == 94) {
                            Class<?> cls2 = Class.forName("com.mbridge.msdk.out.MBRewardVideoHandler");
                            Object objNewInstance2 = cls2.getConstructor(String.class, String.class).newInstance("", aVar.b());
                            if (objNewInstance2 != null) {
                                cls2.getMethod("loadFormSelfFilling", new Class[0]).invoke(objNewInstance2, new Object[0]);
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
            b.d().c(this.k);
            b.d().e(this.l);
            b.d().d(this.m);
            b.d().b(this.p);
            b.d().a(new b.a() { // from class: com.mbridge.msdk.foundation.controller.c.6
            }, this.f7034g);
            Context applicationContext = this.i.getApplicationContext();
            try {
                Omid.activate(applicationContext);
                if (!Omid.isActive()) {
                    new p(applicationContext, 0).a("", "", "", "", "activate om failed");
                }
            } catch (IllegalArgumentException e3) {
                aa.b("SDKController", e3.getMessage(), e3);
            }
            Context applicationContext2 = this.i.getApplicationContext();
            try {
                if (this.s == null) {
                    try {
                        this.s = new FastKV.Builder(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_CONFIG), u.b("H+tU+FeXHM==")).build();
                    } catch (Exception unused2) {
                        this.s = null;
                    }
                }
                FastKV fastKV = this.s;
                if (fastKV != null) {
                    try {
                        string = fastKV.getString(u.b("H+tU+bfPhM=="), "");
                        try {
                            string3 = this.s.getString(u.b("H+tU+Fz8"), "");
                        } catch (Exception unused3) {
                        }
                    } catch (Exception unused4) {
                        string = "";
                    }
                    if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                        com.mbridge.msdk.foundation.same.a.l = com.mbridge.msdk.foundation.a.a.a.a().b(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                        com.mbridge.msdk.foundation.same.a.m = com.mbridge.msdk.foundation.a.a.a.a().b("c");
                    }
                    if (!TextUtils.isEmpty(string) || !TextUtils.isEmpty(string3)) {
                        com.mbridge.msdk.foundation.same.a.l = string;
                        com.mbridge.msdk.foundation.same.a.m = string3;
                        com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                        com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
                    } else if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l) || !TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                        try {
                            this.s.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                            this.s.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                        } catch (Exception unused5) {
                        }
                    }
                } else {
                    SharedPreferences sharedPreferences = applicationContext2.getSharedPreferences(u.b("H+tU+FeXHM=="), 0);
                    if (sharedPreferences != null) {
                        string3 = sharedPreferences.getString(u.b("H+tU+bfPhM=="), "");
                        string2 = sharedPreferences.getString(u.b("H+tU+Fz8"), "");
                    } else {
                        string2 = "";
                    }
                    if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l) && TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                        com.mbridge.msdk.foundation.same.a.l = com.mbridge.msdk.foundation.a.a.a.a().b(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
                        com.mbridge.msdk.foundation.same.a.m = com.mbridge.msdk.foundation.a.a.a.a().b("c");
                    }
                    if (!TextUtils.isEmpty(string3) || !TextUtils.isEmpty(string2)) {
                        com.mbridge.msdk.foundation.same.a.l = string3;
                        com.mbridge.msdk.foundation.same.a.m = string2;
                        com.mbridge.msdk.foundation.a.a.a.a().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
                        com.mbridge.msdk.foundation.a.a.a.a().a("c", com.mbridge.msdk.foundation.same.a.m);
                    } else if ((!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l) || !TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) && sharedPreferences != null) {
                        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                        editorEdit.putString(u.b("H+tU+bfPhM=="), com.mbridge.msdk.foundation.same.a.l);
                        editorEdit.putString(u.b("H+tU+Fz8"), com.mbridge.msdk.foundation.same.a.m);
                        editorEdit.apply();
                    }
                }
            } catch (Throwable th3) {
                aa.b("SDKController", th3.getMessage(), th3);
            }
            try {
                if (MBridgeConstans.INIT_UA_IN) {
                    com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.c.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            Looper.prepare();
                            c.this.d();
                            c cVar = c.this;
                            c.a(cVar, cVar.k);
                            Looper.loop();
                        }
                    });
                } else if (Looper.myLooper() == Looper.getMainLooper()) {
                    com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.c.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            Looper.prepare();
                            c.this.d();
                            Looper.loop();
                        }
                    });
                } else {
                    d();
                }
            } catch (Exception e4) {
                aa.d("SDKController", e4.getMessage());
            }
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.c.4
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.c();
                }
            });
            ad.a(this.i);
            this.n = true;
            long jM = f.a().g(this.k).m();
            if (jM != 1300) {
                this.f7034g.postDelayed(new Runnable() { // from class: com.mbridge.msdk.foundation.controller.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        w.p(context);
                    }
                }, jM);
            }
        }
    }

    public final void b() {
        Handler handler = this.f7034g;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final void c() {
        if (this.i == null || this.f7034g == null) {
            return;
        }
        try {
            int i = ac.a().a("e_r_r_c_t_r_l", false) ? 5 : 1;
            com.mbridge.msdk.foundation.same.report.c.a.a();
            Context context = this.i;
            String string = null;
            List<l> listA = (context != null && n.a(h.a(context)).a() > 0) ? n.a(h.a(context)).a(i) : null;
            if (listA != null && listA.size() > 0) {
                Message messageObtainMessage = this.f7034g.obtainMessage();
                messageObtainMessage.what = 2;
                messageObtainMessage.obj = listA;
                this.f7034g.sendMessage(messageObtainMessage);
            }
            h hVarA = h.a(this.i);
            com.mbridge.msdk.foundation.db.e eVarA = com.mbridge.msdk.foundation.db.e.a(hVarA);
            if (eVarA.a() >= 20) {
                String strA = com.mbridge.msdk.foundation.entity.d.a(eVarA.a(20));
                Message messageObtain = Message.obtain();
                messageObtain.obj = strA;
                messageObtain.what = 4;
                this.f7034g.sendMessage(messageObtain);
            }
            com.mbridge.msdk.foundation.db.l lVarA = com.mbridge.msdk.foundation.db.l.a(hVarA);
            if (lVarA.a() > 20) {
                List<com.mbridge.msdk.foundation.entity.h> listA2 = lVarA.a(20);
                if (listA2 != null && listA2.size() > 0) {
                    StringBuffer stringBuffer = new StringBuffer();
                    for (com.mbridge.msdk.foundation.entity.h hVar : listA2) {
                        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                            stringBuffer.append("ad_source_id=" + hVar.b());
                            stringBuffer.append("&time=" + hVar.c());
                            stringBuffer.append("&num=" + hVar.d());
                            stringBuffer.append("&unit_id=" + hVar.e());
                            stringBuffer.append("&key=2000006");
                            stringBuffer.append("&fb=" + hVar.f());
                            stringBuffer.append("&network_str=" + hVar.i());
                            stringBuffer.append("&network_type=" + hVar.h());
                        } else {
                            stringBuffer.append("ad_source_id=" + hVar.b());
                            stringBuffer.append("&time=" + hVar.c());
                            stringBuffer.append("&num=" + hVar.d());
                            stringBuffer.append("&unit_id=" + hVar.e());
                            stringBuffer.append("&key=2000006");
                            stringBuffer.append("&fb=" + hVar.f());
                        }
                        if (hVar.a() == 1) {
                            stringBuffer.append("&hb=1");
                        }
                        stringBuffer.append("&timeout=" + hVar.g() + "\n");
                    }
                    string = stringBuffer.toString();
                }
                Message messageObtain2 = Message.obtain();
                messageObtain2.obj = string;
                messageObtain2.what = 5;
                this.f7034g.sendMessage(messageObtain2);
            }
            String strB = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_CRASH_INFO);
            File file = new File(strB);
            if (file.exists() && file.isDirectory() && file.list().length > 0) {
                for (String str : file.list()) {
                    File file2 = new File(strB + "/" + str);
                    Message messageObtain3 = Message.obtain();
                    messageObtain3.obj = file2;
                    messageObtain3.what = 3;
                    this.f7034g.sendMessage(messageObtain3);
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d("SDKController", e2.getMessage());
            }
        }
    }
}
