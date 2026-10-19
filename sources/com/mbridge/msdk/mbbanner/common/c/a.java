package com.mbridge.msdk.mbbanner.common.c;

import android.content.Context;
import android.os.Handler;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.c.h;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.mbbanner.common.b.d;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: BannerLoadManager.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "a";
    private static volatile a h;
    private Context b = com.mbridge.msdk.foundation.controller.b.d().g();
    private com.mbridge.msdk.mbbanner.common.util.a c = new com.mbridge.msdk.mbbanner.common.util.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, com.mbridge.msdk.mbbanner.common.a.c> f7278d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<String, Boolean> f7279e = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, Handler> f7280f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, Integer> f7281g = new ConcurrentHashMap();

    private a() {
    }

    public static a a() {
        if (h == null) {
            synchronized (a.class) {
                if (h == null) {
                    h = new a();
                }
            }
        }
        return h;
    }

    public final void a(int i, String str, String str2, com.mbridge.msdk.mbbanner.common.a.b bVar, com.mbridge.msdk.mbbanner.common.b.b bVar2) {
        int iIntValue = this.f7281g.containsKey(str2) ? this.f7281g.get(str2).intValue() : 0;
        if (i == 1) {
            if (this.f7280f.containsKey(str2)) {
                this.f7280f.get(str2).removeCallbacksAndMessages(null);
            }
            this.f7281g.put(str2, Integer.valueOf(i));
            return;
        }
        if (i == 2) {
            if (iIntValue == 1) {
                if (this.f7280f.containsKey(str2)) {
                    this.f7280f.get(str2).removeCallbacksAndMessages(null);
                }
                this.f7281g.put(str2, Integer.valueOf(i));
                return;
            }
            return;
        }
        if (i == 3) {
            if (iIntValue == 2 || iIntValue == 4) {
                this.f7281g.put(str2, 1);
                b(str, str2, bVar, bVar2);
                return;
            }
            return;
        }
        if (i != 4) {
            return;
        }
        if (iIntValue == 0) {
            this.f7281g.put(str2, 0);
            return;
        }
        if (this.f7280f.containsKey(str2)) {
            this.f7280f.get(str2).removeCallbacksAndMessages(null);
        }
        this.f7281g.put(str2, Integer.valueOf(i));
    }

    public final void a(String str) {
        if (this.f7280f.containsKey(str)) {
            this.f7280f.get(str).removeCallbacksAndMessages(null);
            this.f7280f.remove(str);
        }
    }

    public final void a(String str, String str2, final com.mbridge.msdk.mbbanner.common.a.b bVar, com.mbridge.msdk.mbbanner.common.b.b bVar2) {
        com.mbridge.msdk.mbbanner.common.a.c cVar;
        if (this.b == null) {
            this.c.a(bVar2, new e(0, "Banner Context == null!"), str2, null);
            return;
        }
        if (bVar == null || bVar2 == null) {
            this.c.a(bVar2, new e(0, "Banner request parameters or callback empty!"), str2, null);
            return;
        }
        Map<String, Boolean> map = this.f7279e;
        if (map != null && map.containsKey(str2) && this.f7279e.get(str2).booleanValue()) {
            this.c.a(bVar2, new e(16, "Current unit is loading!"), str2, null);
            return;
        }
        this.f7279e.put(str2, Boolean.TRUE);
        if (this.f7278d.containsKey(str2)) {
            cVar = this.f7278d.get(str2);
        } else {
            h hVarE = f.a().e(com.mbridge.msdk.foundation.controller.b.d().h(), str2);
            if (hVarE == null) {
                hVarE = h.d(str2);
            }
            com.mbridge.msdk.mbbanner.common.a.c cVar2 = new com.mbridge.msdk.mbbanner.common.a.c(str2, "", 0, hVarE.v() * 1);
            this.f7278d.put(str2, cVar2);
            cVar = cVar2;
        }
        new b(this.b, cVar, bVar2, this.c).a(str, str2, bVar, new d() { // from class: com.mbridge.msdk.mbbanner.common.c.a.1
            @Override // com.mbridge.msdk.mbbanner.common.b.d
            public final void a(String str3) {
                synchronized (a.a()) {
                    bVar.a("");
                    a.this.f7279e.put(str3, Boolean.FALSE);
                }
            }
        });
    }

    public final void b() {
        Map<String, com.mbridge.msdk.mbbanner.common.a.c> map = this.f7278d;
        if (map != null) {
            map.clear();
        }
        Map<String, Boolean> map2 = this.f7279e;
        if (map2 != null) {
            map2.clear();
        }
        Map<String, Handler> map3 = this.f7280f;
        if (map3 != null) {
            for (Map.Entry<String, Handler> entry : map3.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().removeCallbacksAndMessages(null);
                }
            }
            this.f7280f.clear();
        }
        Map<String, Integer> map4 = this.f7281g;
        if (map4 != null) {
            map4.clear();
        }
    }

    public final void b(final String str, final String str2, final com.mbridge.msdk.mbbanner.common.a.b bVar, final com.mbridge.msdk.mbbanner.common.b.b bVar2) {
        Handler handler;
        if (bVar == null || bVar.b() <= 0) {
            return;
        }
        if (this.f7280f.containsKey(str2)) {
            handler = this.f7280f.get(str2);
        } else {
            handler = new Handler();
            this.f7280f.put(str2, handler);
        }
        Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.c.a.2
            @Override // java.lang.Runnable
            public final void run() {
                int iIntValue;
                if (a.this.f7279e != null && a.this.f7279e.containsKey(str2) && ((Boolean) a.this.f7279e.get(str2)).booleanValue()) {
                    return;
                }
                if (a.this.f7281g.containsKey(str2) && ((iIntValue = ((Integer) a.this.f7281g.get(str2)).intValue()) == 2 || iIntValue == 4)) {
                    if (a.this.c != null) {
                        a.this.c.a(bVar2, new e(1, "banner load failed because env is exception"), str2, null);
                    }
                } else {
                    String md5 = SameMD5.getMD5(af.c());
                    try {
                        bVar.a(true);
                        bVar.c(md5);
                        com.mbridge.msdk.mbbanner.common.d.a.a("2000123", str2, md5, "auto_load", 296);
                    } catch (Exception unused) {
                    }
                    a.this.a(str, str2, bVar, bVar2);
                }
            }
        };
        handler.removeCallbacksAndMessages(null);
        handler.postDelayed(runnable, bVar.b());
    }
}
