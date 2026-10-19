package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: GlobalInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    public static k a;
    public static final Set<String> b = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.h.1
        {
            add("8025677");
            add("5001121");
        }
    };
    private static boolean q;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private String f1539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private String f1540e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1541f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1542g;

    @Nullable
    private String h;

    @Nullable
    private String i;
    private int j;
    private boolean k;
    private boolean l;
    private Bitmap m;
    private Integer n;
    private Integer o;
    private Integer p;
    private int r;
    private boolean s;
    private String t;
    private com.bytedance.sdk.openadsdk.core.video.b.c u;
    private volatile ConcurrentHashMap<String, a.InterfaceC0132a> v;

    /* JADX INFO: compiled from: GlobalInfo.java */
    private static class a {
        private static final h a = new h();
    }

    private h() {
        this.c = false;
        this.j = 0;
        this.k = true;
        this.l = false;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.r = 0;
        this.v = null;
        try {
            com.bykv.vk.openvk.component.video.api.f.a.a(o.a());
        } catch (Throwable unused) {
        }
    }

    private String a(Context context) {
        try {
            PackageManager packageManager = context.getApplicationContext().getPackageManager();
            return (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 128));
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static String a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObjectH = h(str);
            if (jSONObjectH == null) {
                return null;
            }
            if (System.currentTimeMillis() - jSONObjectH.getLong("time") <= j) {
                return jSONObjectH.getString("value");
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.GlobalInfo", e2.getMessage());
        }
        return null;
    }

    public static void a(k kVar) {
        a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "sdk_coppa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(3, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "sdk_coppa", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "sdk_coppa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(3, true);
        }
    }

    public static void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("value", str2);
            jSONObject.put("time", System.currentTimeMillis());
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", str, jSONObject.toString());
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.GlobalInfo", e2.getMessage());
        }
    }

    @NonNull
    public static h b() {
        return a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "tt_gdpr", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(4, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "tt_gdpr", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "tt_gdpr", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(4, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Integer num, int i) {
        if (num != null) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_ccpa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(5, true);
        } else if (com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_ccpa", -1) != i) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_ccpa", Integer.valueOf(i));
            com.bytedance.sdk.openadsdk.core.settings.o.aj().a(5, true);
        }
    }

    public static boolean e(String str) {
        return (!com.bytedance.sdk.openadsdk.utils.s.a || str.contains("sp_full_screen_video") || str.contains("sp_reward_video") || str.contains("tt_openad") || str.contains("pag_sp_bad_par")) ? false : true;
    }

    private static void f(String str) {
        k kVar;
        if (TextUtils.isEmpty(str) && (kVar = a) != null) {
            kVar.fail(4000, "appid cannot be empty");
        }
        com.bytedance.sdk.component.utils.l.e("TTAD.GlobalInfo", "appid cannot be empty");
    }

    private static void g(String str) {
        if (TextUtils.isEmpty(str) || str.length() <= 1000) {
            return;
        }
        k kVar = a;
        if (kVar != null) {
            kVar.fail(4000, "Data is very long, the longest is 1000");
        }
        com.bytedance.sdk.component.utils.l.e("TTAD.GlobalInfo", "Data is very long, the longest is 1000");
    }

    private static JSONObject h(String str) {
        String strB = com.bytedance.sdk.openadsdk.multipro.d.d.b("sp_global_file", str, null);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        try {
            return new JSONObject(strB);
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("TTAD.GlobalInfo", e2.getMessage());
            return null;
        }
    }

    public static boolean v() {
        return q;
    }

    public static void w() {
        if (Build.VERSION.SDK_INT == 26 && "MI 6".equals(Build.MODEL)) {
            q = true;
        }
    }

    public void a(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_icon_id", "icon_id", Integer.valueOf(i));
        }
        this.f1541f = i;
    }

    public void a(@NonNull String str) {
        f(str);
        this.f1539d = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a("app_id", str);
        com.bytedance.sdk.openadsdk.core.settings.o.aj().d(7);
    }

    public void a(String str, a.InterfaceC0132a interfaceC0132a) {
        if (TextUtils.isEmpty(str) || interfaceC0132a == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            TTDislikeListView.a(6, str, interfaceC0132a);
            return;
        }
        if (this.v == null) {
            synchronized (h.class) {
                if (this.v == null) {
                    this.v = new ConcurrentHashMap<>();
                }
            }
        }
        this.v.put(str, interfaceC0132a);
    }

    public void a(boolean z) {
        this.s = z;
    }

    public boolean a() {
        return this.s;
    }

    public void b(final int i) {
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.n;
            if (num == null || num.intValue() != i) {
                this.n = Integer.valueOf(i);
                if (com.bytedance.sdk.openadsdk.utils.aa.e()) {
                    l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.h.2
                        @Override // java.lang.Runnable
                        public void run() {
                            h.this.a(num, i);
                        }
                    });
                } else {
                    a(num, i);
                }
            }
        }
    }

    public void b(@Nullable final String str) {
        g(str);
        if (com.bytedance.sdk.openadsdk.utils.aa.e()) {
            l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.h.4
                @Override // java.lang.Runnable
                public void run() {
                    if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                        com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "extra_data", str);
                    }
                }
            });
        } else if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "extra_data", str);
        }
        this.i = str;
    }

    public void b(boolean z) {
        com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "sdk_activate_init", Boolean.valueOf(z));
    }

    public a.InterfaceC0132a c(String str) {
        if (this.v == null || str == null) {
            return null;
        }
        return this.v.get(str);
    }

    public void c(final int i) {
        if (i == 1) {
            i = 0;
        } else if (i == 0) {
            i = 1;
        }
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.o;
            if (num == null || num.intValue() != i) {
                this.o = Integer.valueOf(i);
                if (com.bytedance.sdk.openadsdk.utils.aa.e()) {
                    l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.h.3
                        @Override // java.lang.Runnable
                        public void run() {
                            h.this.b(num, i);
                        }
                    });
                } else {
                    b(num, i);
                }
            }
        }
    }

    public void c(boolean z) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "is_use_texture", Boolean.valueOf(z));
        }
        this.l = z;
    }

    public boolean c() {
        return com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "sdk_activate_init", true);
    }

    @Nullable
    public String d() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? a("app_id", Long.MAX_VALUE) : this.f1539d;
    }

    public void d(int i) {
        if (i != 0 && i != 1) {
            i = -99;
        }
        com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_coppa", Integer.valueOf(i));
        this.r = i;
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            TTDislikeListView.a(6, str);
        } else if (this.v != null) {
            this.v.remove(str);
        }
    }

    public void d(boolean z) {
        this.c = z;
    }

    @NonNull
    public String e() {
        if (TextUtils.isEmpty(this.f1540e)) {
            this.f1540e = a(o.a());
        }
        return this.f1540e;
    }

    public void e(int i) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "title_bar_theme", Integer.valueOf(i));
        }
        this.j = i;
    }

    public int f() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_icon_id", "icon_id", 0) : this.f1541f;
    }

    public void f(final int i) {
        if (i == 0 || i == 1 || i == -1) {
            final Integer num = this.p;
            if (num == null || num.intValue() != i) {
                this.p = Integer.valueOf(i);
                if (com.bytedance.sdk.openadsdk.utils.aa.e()) {
                    l.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.h.5
                        @Override // java.lang.Runnable
                        public void run() {
                            h.this.c(num, i);
                        }
                    });
                } else {
                    c(num, i);
                }
            }
        }
    }

    public int g() {
        Integer num = this.n;
        return num != null ? num.intValue() : com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "sdk_coppa", -1);
    }

    public int h() {
        Integer num = this.o;
        return num != null ? num.intValue() : com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "tt_gdpr", -1);
    }

    public int i() {
        int iA = com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_coppa", -99);
        this.r = iA;
        if (iA == -99) {
            this.r = g();
        }
        return this.r;
    }

    public boolean j() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "is_paid", false) : this.f1542g;
    }

    @Nullable
    public String k() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.b("sp_global_file", "keywords", null) : this.h;
    }

    @Nullable
    public String l() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.b("sp_global_file", "extra_data", null) : this.i;
    }

    public int m() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "title_bar_theme", 0) : this.j;
    }

    public com.bytedance.sdk.openadsdk.core.video.b.c n() {
        if (this.u == null) {
            this.u = new com.bytedance.sdk.openadsdk.core.video.b.c(10, 8);
        }
        return this.u;
    }

    public boolean o() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_file", "is_use_texture", false) : this.l;
    }

    public Bitmap p() {
        return com.bytedance.sdk.openadsdk.multipro.b.c() ? com.bytedance.sdk.component.utils.d.a(com.bytedance.sdk.openadsdk.multipro.d.d.b("sp_global_file", "pause_icon", null)) : this.m;
    }

    public boolean q() {
        return b.contains(this.f1539d);
    }

    public boolean r() {
        return "com.union_test.internationad".equals(ac.e());
    }

    public String s() {
        if (!TextUtils.isEmpty(this.t)) {
            return this.t;
        }
        String strA = com.bytedance.sdk.openadsdk.utils.g.a();
        this.t = strA;
        if (!TextUtils.isEmpty(strA)) {
            return this.t;
        }
        String strValueOf = String.valueOf(System.currentTimeMillis());
        com.bytedance.sdk.openadsdk.utils.g.a(strValueOf);
        this.t = strValueOf;
        return strValueOf;
    }

    public int t() {
        Integer num = this.p;
        return num != null ? num.intValue() : com.bytedance.sdk.openadsdk.multipro.d.d.a("sp_global_privacy", "global_ccpa", -1);
    }

    public void u() {
        if (this.v == null || this.v.size() != 0) {
            return;
        }
        this.v = null;
    }
}
