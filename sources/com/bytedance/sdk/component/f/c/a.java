package com.bytedance.sdk.component.f.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.location.Address;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.bytedance.sdk.component.f.a;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.x;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements x.a {
    private static boolean h;
    private static ThreadPoolExecutor i;
    private final boolean b;
    private final Context k;
    private com.bytedance.sdk.component.f.a m;
    private int n;
    private volatile boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1051d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1052e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f1053f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f1054g = 0;
    private AtomicBoolean j = new AtomicBoolean(false);
    private volatile boolean l = false;
    final x a = com.bytedance.sdk.component.g.a.a.a().a(this, "tt-net");

    public a(Context context, int i2) {
        this.k = context;
        this.b = q.a(context);
        this.n = i2;
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return "https://" + str + "/get_domains/v4/";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2) {
        String[] strArrF = f();
        if (strArrF == null || strArrF.length <= i2) {
            b(102);
            return;
        }
        String str = strArrF[i2];
        if (TextUtils.isEmpty(str)) {
            b(102);
            return;
        }
        try {
            String strA = a(str);
            if (TextUtils.isEmpty(strA)) {
                b(102);
                return;
            }
            com.bytedance.sdk.component.f.b.b bVarC = i().c();
            bVarC.a(strA);
            a(bVarC);
            bVarC.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.component.f.c.a.3
                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, com.bytedance.sdk.component.f.b bVar) {
                    JSONObject jSONObject;
                    if (bVar == null || !bVar.f()) {
                        a.this.a(i2 + 1);
                        return;
                    }
                    String string = null;
                    try {
                        jSONObject = new JSONObject(bVar.d());
                    } catch (Exception unused) {
                        jSONObject = null;
                    }
                    if (jSONObject == null) {
                        a.this.a(i2 + 1);
                        return;
                    }
                    try {
                        string = jSONObject.getString("message");
                    } catch (Exception unused2) {
                    }
                    if (!"success".equals(string)) {
                        a.this.a(i2 + 1);
                        return;
                    }
                    try {
                        if (a.this.a(jSONObject)) {
                            a.this.b(101);
                        } else {
                            a.this.a(i2 + 1);
                        }
                    } catch (Exception unused3) {
                    }
                }

                @Override // com.bytedance.sdk.component.f.a.a
                public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                    a.this.a(i2 + 1);
                }
            });
        } catch (Throwable th) {
            com.bytedance.sdk.component.f.d.c.b("AppConfig", "try app config exception: " + th);
        }
    }

    public static void a(Context context, int i2) {
        a aVarA;
        if (h && (aVarA = g.a().a(i2, context)) != null) {
            if (q.a(context)) {
                aVarA.a(true);
            } else {
                aVarA.a();
            }
        }
    }

    private void a(com.bytedance.sdk.component.f.b.b bVar) {
        if (bVar == null) {
            return;
        }
        Address addressA = g.a().a(this.n).d() != null ? g.a().a(this.n).d().a(this.k) : null;
        if (addressA != null && addressA.hasLatitude() && addressA.hasLongitude()) {
            bVar.a("latitude", addressA.getLatitude() + "");
            bVar.a("longitude", addressA.getLongitude() + "");
            String locality = addressA.getLocality();
            if (!TextUtils.isEmpty(locality)) {
                bVar.a("city", Uri.encode(locality));
            }
        }
        if (this.c) {
            bVar.a("force", "1");
        }
        try {
            bVar.a("abi", Build.VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0]);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (g.a().a(this.n).d() != null) {
            bVar.a("aid", g.a().a(this.n).d().a() + "");
            bVar.a("device_platform", g.a().a(this.n).d().c());
            bVar.a("channel", g.a().a(this.n).d().b());
            bVar.a("version_code", g.a().a(this.n).d().d() + "");
            bVar.a("custom_info_1", g.a().a(this.n).d().e());
        }
    }

    public static void a(ThreadPoolExecutor threadPoolExecutor) {
        i = threadPoolExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Object obj) throws Exception {
        JSONObject jSONObject;
        if (obj instanceof String) {
            String str = (String) obj;
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            jSONObject = new JSONObject(str);
            if (!"success".equals(jSONObject.getString("message"))) {
                return false;
            }
        } else {
            jSONObject = obj instanceof JSONObject ? (JSONObject) obj : null;
        }
        if (jSONObject == null) {
            return false;
        }
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        synchronized (this) {
            SharedPreferences.Editor editorEdit = this.k.getSharedPreferences("ss_app_config", 0).edit();
            editorEdit.putLong("last_refresh_time", System.currentTimeMillis());
            editorEdit.apply();
        }
        if (g.a().a(this.n).h() == null) {
            return true;
        }
        g.a().a(this.n).h().a(jSONObject2);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        x xVar = this.a;
        if (xVar != null) {
            xVar.sendEmptyMessage(i2);
        }
    }

    public static void b(boolean z) {
        h = z;
    }

    private void d(boolean z) {
        if (this.f1052e) {
            return;
        }
        if (this.f1051d) {
            this.f1051d = false;
            this.f1053f = 0L;
            this.f1054g = 0L;
        }
        long j = z ? 360000L : 43200000L;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f1053f > j) {
            if (jCurrentTimeMillis - this.f1054g > 120000 || !this.l) {
                c();
            }
        }
    }

    public static ThreadPoolExecutor g() {
        if (i == null) {
            synchronized (a.class) {
                if (i == null) {
                    ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 20L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    i = threadPoolExecutor;
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
            }
        }
        return i;
    }

    private boolean h() {
        String[] strArrF = f();
        if (strArrF != null && strArrF.length != 0) {
            a(0);
        }
        return false;
    }

    private com.bytedance.sdk.component.f.a i() {
        if (this.m == null) {
            a.C0118a c0118a = new a.C0118a();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            this.m = c0118a.a(10L, timeUnit).b(10L, timeUnit).c(10L, timeUnit).a();
        }
        return this.m;
    }

    public void a() {
        a(false);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        int i2 = message.what;
        if (i2 == 101) {
            this.f1052e = false;
            this.f1053f = System.currentTimeMillis();
            com.bytedance.sdk.component.f.d.c.b("TNCManager", "doRefresh, succ");
            if (this.f1051d) {
                a();
            }
            this.j.set(false);
            return;
        }
        if (i2 != 102) {
            return;
        }
        this.f1052e = false;
        if (this.f1051d) {
            a();
        }
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "doRefresh, error");
        this.j.set(false);
    }

    public synchronized void a(boolean z) {
        if (this.b) {
            d(z);
        } else if (this.f1053f <= 0) {
            try {
                g().execute(new Runnable() { // from class: com.bytedance.sdk.component.f.c.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.b();
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    synchronized void b() {
        if (System.currentTimeMillis() - this.f1053f > 3600000) {
            this.f1053f = System.currentTimeMillis();
            try {
                if (g.a().a(this.n).h() != null) {
                    g.a().a(this.n).h().b();
                }
            } catch (Exception unused) {
            }
        }
    }

    void c(boolean z) {
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "doRefresh, actual request");
        d();
        this.f1052e = true;
        if (!z) {
            this.a.sendEmptyMessage(102);
            return;
        }
        try {
            h();
        } catch (Exception unused) {
            this.j.set(false);
        }
    }

    public boolean c() {
        com.bytedance.sdk.component.f.d.c.b("TNCManager", "doRefresh: updating state " + this.j.get());
        g().execute(new Runnable() { // from class: com.bytedance.sdk.component.f.c.a.2
            @Override // java.lang.Runnable
            public void run() {
                boolean zA = com.bytedance.sdk.component.f.d.f.a(a.this.k);
                if (zA) {
                    a.this.f1054g = System.currentTimeMillis();
                    if (a.this.j.compareAndSet(false, true)) {
                        a.this.c(zA);
                    } else {
                        com.bytedance.sdk.component.f.d.c.b("TNCManager", "doRefresh, already running");
                    }
                }
            }
        });
        return true;
    }

    public synchronized void d() {
        if (this.l) {
            return;
        }
        this.l = true;
        long j = this.k.getSharedPreferences("ss_app_config", 0).getLong("last_refresh_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (j > jCurrentTimeMillis) {
            j = jCurrentTimeMillis;
        }
        this.f1053f = j;
        try {
            if (g.a().a(this.n).h() != null) {
                g.a().a(this.n).h().a();
            }
        } catch (Exception unused) {
        }
    }

    public void e() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            if (this.b) {
                d();
            } else {
                b();
            }
        } catch (Throwable unused) {
        }
    }

    public String[] f() {
        String[] strArrF = g.a().a(this.n).d() != null ? g.a().a(this.n).d().f() : null;
        return (strArrF == null || strArrF.length <= 0) ? new String[0] : strArrF;
    }
}
