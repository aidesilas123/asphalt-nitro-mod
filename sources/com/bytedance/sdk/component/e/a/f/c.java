package com.bytedance.sdk.component.e.a.f;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.i;
import com.bytedance.sdk.component.utils.l;
import com.mbridge.msdk.foundation.download.Command;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: TrackAdUrlImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements b {
    private final Context a;
    private final e b;

    /* JADX INFO: compiled from: TrackAdUrlImpl.java */
    @SuppressLint({"StaticFieldLeak"})
    private class a extends com.bytedance.sdk.component.e.a.e.e {
        private final d b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map<String, String> f1033d;

        private a(d dVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.b = dVar;
            this.c = str;
            this.f1033d = map;
        }

        private String c(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.c)) ? str.replace("{UID}", this.c).replace("__UID__", this.c) : str;
        }

        boolean a(String str) {
            return !TextUtils.isEmpty(str) && (str.startsWith("http://") || str.startsWith("https://"));
        }

        String b(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                return str.replace("[ss_random]", String.valueOf(c.c().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception e2) {
                e2.printStackTrace();
                return str;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.component.e.a.f fVarP = i.g().p();
            if (fVarP == null || i.g().f() == null || !fVarP.d() || !a(this.b.b())) {
                return;
            }
            if (this.b.d() == 0) {
                c.this.b.c(this.b);
                return;
            }
            try {
                fVarP.n();
                if (this.b.d() == 5) {
                    c.this.b.a(this.b);
                }
                if (fVarP.a(c.this.a())) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String strB = this.b.b();
                    if (fVarP.g() == 0) {
                        strB = c(this.b.b());
                        if (this.b.c()) {
                            strB = b(strB);
                        }
                    }
                    String str = strB;
                    com.bytedance.sdk.component.e.a.e.c cVarK = fVarP.k();
                    if (cVarK == null) {
                        return;
                    }
                    cVarK.a(Command.HTTP_HEADER_USER_AGENT, fVarP.j());
                    cVarK.a("csj_client_source_from", "1");
                    if (this.f1033d != null) {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry<String, String> entry : this.f1033d.entrySet()) {
                            jSONObject.put(entry.getKey(), entry.getValue());
                        }
                        cVarK.a("csj_extra_info", jSONObject.toString());
                    }
                    cVarK.a(str);
                    com.bytedance.sdk.component.e.a.e.d dVarA = null;
                    try {
                        dVarA = cVarK.a();
                        fVarP.a(dVarA.a());
                    } catch (Throwable unused) {
                    }
                    if (dVarA != null && dVarA.a()) {
                        c.this.b.c(this.b);
                        com.bytedance.sdk.component.e.a.c.c.a("trackurl", "track success : " + this.b.b());
                        fVarP.a(true, 200, null, str, System.currentTimeMillis() - jCurrentTimeMillis);
                        return;
                    }
                    if (dVarA == null || dVarA.b() != 8848) {
                        com.bytedance.sdk.component.e.a.c.c.a("trackurl", "track fail : " + this.b.b());
                        d dVar = this.b;
                        dVar.a(dVar.d() + (-1));
                        if (this.b.d() == 0) {
                            c.this.b.c(this.b);
                            com.bytedance.sdk.component.e.a.c.c.a("trackurl", "track fail and delete : " + this.b.b());
                        } else {
                            c.this.b.b(this.b);
                        }
                    } else {
                        l.b("trackurl", "block url : " + dVarA.c());
                        c.this.b.c(this.b);
                    }
                    if (dVarA != null) {
                        fVarP.a(false, dVarA.b(), dVarA.c(), str, System.currentTimeMillis());
                    } else {
                        fVarP.a(false, 0, null, str, System.currentTimeMillis());
                    }
                }
            } catch (Throwable unused2) {
            }
        }
    }

    public c(Context context, e eVar) {
        this.a = context;
        this.b = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<d> list, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.bytedance.sdk.component.e.a.f fVarP = i.g().p();
        for (d dVar : list) {
            if (fVarP != null && fVarP.e() != null) {
                fVarP.e().execute(new a(dVar, str, null));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Random c() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    public Context a() {
        Context context = this.a;
        return context == null ? i.g().f() : context;
    }

    @Override // com.bytedance.sdk.component.e.a.f.b
    public void a(final String str) {
        com.bytedance.sdk.component.e.a.f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || !fVarP.d()) {
            return;
        }
        com.bytedance.sdk.component.e.a.e.e eVar = new com.bytedance.sdk.component.e.a.e.e("trackFailedUrls") { // from class: com.bytedance.sdk.component.e.a.f.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.a(c.this.b.a(), str);
            }
        };
        eVar.a(1);
        if (fVarP.e() != null) {
            fVarP.e().execute(eVar);
        }
    }

    @Override // com.bytedance.sdk.component.e.a.f.b
    public void a(String str, List<String> list, boolean z, Map<String, String> map) {
        com.bytedance.sdk.component.e.a.f fVarP = i.g().p();
        if (fVarP == null || i.g().f() == null || fVarP.e() == null || !fVarP.d() || list == null || list.size() == 0) {
            return;
        }
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            fVarP.e().execute(new a(new d(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), it.next(), z, 5), str, map));
        }
    }
}
