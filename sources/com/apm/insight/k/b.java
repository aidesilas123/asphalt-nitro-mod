package com.apm.insight.k;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.entity.b;
import com.apm.insight.k.c;
import com.apm.insight.l.o;
import com.apm.insight.l.p;
import com.apm.insight.l.w;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.q;
import com.apm.insight.runtime.s;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile b f257d;
    private Context c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private C0012b f259f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, C0012b> f260g;
    List<File> a = new ArrayList();
    List<File> b = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f258e = -1;
    private volatile boolean h = false;
    private Runnable i = new Runnable() { // from class: com.apm.insight.k.b.1
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            b.this.g();
        }
    };
    private Runnable j = new Runnable() { // from class: com.apm.insight.k.b.2
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            b.this.e();
        }
    };

    static class a {
        File a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        CrashType f262d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f263e;

        a(File file, long j, @Nullable CrashType crashType) {
            this.b = -1L;
            this.c = -1L;
            this.a = file;
            this.b = j;
            this.f262d = crashType;
            this.f263e = file.getName();
        }

        a(File file, @Nullable CrashType crashType) {
            this.b = -1L;
            this.c = -1L;
            this.a = file;
            this.f262d = crashType;
            this.f263e = file.getName();
        }
    }

    /* JADX INFO: renamed from: com.apm.insight.k.b$b, reason: collision with other inner class name */
    static class C0012b {
        String a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        a f264d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        a f265e;
        List<a> b = new ArrayList();
        List<a> c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f266f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f267g = 0;

        C0012b(String str) {
            this.a = str;
        }
    }

    private b(Context context) {
        this.c = context;
    }

    @Nullable
    private com.apm.insight.entity.e a(File file, CrashType crashType, String str, long j, long j2) {
        com.apm.insight.entity.e eVar;
        try {
            try {
                if (file.isFile()) {
                    com.apm.insight.l.i.a(file);
                    return null;
                }
                boolean z = crashType == CrashType.LAUNCH;
                if (crashType == null) {
                    try {
                        return com.apm.insight.l.i.d(new File(file, file.getName()).getAbsolutePath());
                    } catch (Throwable th) {
                        th = th;
                        eVar = null;
                        com.apm.insight.l.i.a(file);
                        com.apm.insight.c.a().a("NPTH_CATCH", th);
                        return eVar;
                    }
                }
                com.apm.insight.entity.e eVarA = com.apm.insight.l.i.a(file, crashType);
                try {
                    JSONObject jSONObjectB = eVarA.b();
                    if (eVarA.b() == null) {
                        com.apm.insight.l.i.a(file);
                    } else {
                        if (crashType == CrashType.ANR) {
                            return eVarA;
                        }
                        jSONObjectB.put("crash_time", j);
                        jSONObjectB.put("app_start_time", j2);
                        JSONObject jSONObjectOptJSONObject = jSONObjectB.optJSONObject("header");
                        if (jSONObjectOptJSONObject == null) {
                            jSONObjectOptJSONObject = Header.a(this.c, j).f();
                        } else if (z) {
                            jSONObjectB.remove("header");
                        }
                        String strOptString = jSONObjectOptJSONObject.optString("sdk_version_name", null);
                        if (strOptString == null) {
                            strOptString = "1.3.8.nourl-alpha.18";
                        }
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "sdk_version", strOptString);
                        if (com.apm.insight.l.i.a(jSONObjectB.optJSONArray("logcat"))) {
                            jSONObjectB.put("logcat", com.apm.insight.runtime.k.b(str));
                        }
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_dump", "true");
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_logcat", String.valueOf(!com.apm.insight.l.l.a(jSONObjectB, "logcat")));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "memory_leak", String.valueOf(com.apm.insight.entity.a.b(str)));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "fd_leak", String.valueOf(com.apm.insight.entity.a.c(str)));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "threads_leak", String.valueOf(com.apm.insight.entity.a.d(str)));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_devices", String.valueOf(Header.a()));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_64_runtime", String.valueOf(NativeImpl.e()));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_x86_devices", String.valueOf(Header.b()));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "has_meminfo_file", String.valueOf(com.apm.insight.entity.a.a(str)));
                        com.apm.insight.entity.a.a(jSONObjectB, "filters", "is_root", String.valueOf(com.apm.insight.nativecrash.c.m()));
                        jSONObjectB.put("launch_did", com.apm.insight.i.a.a(this.c));
                        jSONObjectB.put("crash_uuid", file.getName());
                        jSONObjectB.put("jiffy", q.a.a());
                        try {
                            long j3 = Long.parseLong(com.apm.insight.runtime.b.a(j, str));
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", Math.abs(j3 - j) < ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS ? "< 60s" : "> 60s");
                            jSONObjectB.put("lastAliveTime", String.valueOf(j3));
                        } catch (Throwable unused) {
                            jSONObjectB.put("lastAliveTime", "unknown");
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "lastAliveTime", "unknown");
                        }
                        jSONObjectB.put("has_dump", "true");
                        if (jSONObjectB.opt(o2.a.i) == null) {
                            com.apm.insight.entity.a.a(jSONObjectB, w.a(com.apm.insight.i.g()));
                        }
                        if (Header.b(jSONObjectOptJSONObject)) {
                            com.apm.insight.entity.a.a(jSONObjectB, "filters", "unauthentic_version", "unauthentic_version");
                        }
                        com.apm.insight.entity.d.b(jSONObjectB);
                        eVarA.b().put("upload_scene", "launch_scan");
                        if (z) {
                            JSONObject jSONObject = new JSONObject();
                            jSONObjectB.put("event_type", "start_crash");
                            jSONObjectB.put("stack", jSONObjectB.remove("data"));
                            jSONObject.put("data", new JSONArray().put(jSONObjectB));
                            jSONObject.put("header", jSONObjectOptJSONObject);
                            eVarA.a(jSONObject);
                        } else {
                            jSONObjectB.put("isJava", 1);
                        }
                    }
                    return eVarA;
                } catch (Throwable th2) {
                    th = th2;
                    eVar = eVarA;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            eVar = null;
        }
        com.apm.insight.l.i.a(file);
        com.apm.insight.c.a().a("NPTH_CATCH", th);
        return eVar;
    }

    public static b a() {
        if (f257d == null) {
            synchronized (b.class) {
                if (f257d == null) {
                    f257d = new b(com.apm.insight.i.g());
                }
            }
        }
        return f257d;
    }

    private JSONObject a(com.apm.insight.nativecrash.c cVar) {
        JSONObject jSONObjectD = cVar.d();
        if (jSONObjectD != null && jSONObjectD.length() != 0) {
            return jSONObjectD;
        }
        if (com.apm.insight.i.d()) {
            cVar.l();
        }
        if (!cVar.c()) {
            cVar.k();
            return null;
        }
        if (!cVar.f()) {
            cVar.k();
            return null;
        }
        if (cVar.g()) {
            cVar.k();
            return null;
        }
        cVar.e();
        return cVar.j();
    }

    private void a(C0012b c0012b) {
        com.apm.insight.l.i.a(o.a(this.c, c0012b.a));
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0093 A[Catch: all -> 0x0162, PHI: r12
      0x0093: PHI (r12v2 java.io.File) = (r12v3 java.io.File), (r12v4 java.io.File) binds: [B:33:0x00a2, B:29:0x0091] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0162, blocks: (B:14:0x0045, B:16:0x004b, B:17:0x0050, B:20:0x0057, B:24:0x0062, B:26:0x0073, B:32:0x009a, B:36:0x00ae, B:38:0x00b2, B:43:0x00c7, B:61:0x011a, B:55:0x00fa, B:45:0x00cb, B:58:0x0106, B:60:0x0114, B:30:0x0093, B:28:0x0081), top: B:80:0x0045 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(final com.apm.insight.k.b.C0012b r21, boolean r22, @androidx.annotation.Nullable com.apm.insight.runtime.h r23) {
        /*
            Method dump skipped, instruction units count: 380
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(com.apm.insight.k.b$b, boolean, com.apm.insight.runtime.h):void");
    }

    private void a(File file, C0012b c0012b) {
    }

    private void a(HashMap<String, C0012b> map) {
        File[] fileArrListFiles = o.f(this.c).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i = 0; i < fileArrListFiles.length && i < 5; i++) {
            File file = fileArrListFiles[i];
            try {
                if (file.isDirectory() && file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0012b c0012b = map.get(name);
                    if (c0012b == null) {
                        c0012b = new C0012b(name);
                        map.put(name, c0012b);
                    }
                    JSONArray jSONArrayA = com.apm.insight.nativecrash.d.a(o.l(file), o.m(file));
                    int length = jSONArrayA.length();
                    c0012b.f267g = length;
                    if (length > 0) {
                        try {
                            com.apm.insight.l.i.a(o.n(file), jSONArrayA, false);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.l.i.a(file);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
                com.apm.insight.l.i.a(file);
            }
        }
    }

    private void a(HashMap<String, C0012b> map, C0012b c0012b) {
        File[] fileArrListFiles = o.d(this.c).listFiles();
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return;
        }
        for (int i = 0; i < fileArrListFiles.length && i < 5; i++) {
            File file = fileArrListFiles[i];
            try {
                if (file.isDirectory() && file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0012b c0012b2 = map.get(name);
                    if (c0012b2 == null) {
                        c0012b2 = new C0012b(name);
                        map.put(name, c0012b2);
                    }
                    c0012b2.c.add(new a(file, CrashType.NATIVE));
                } else {
                    com.apm.insight.l.i.a(file);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
                com.apm.insight.l.i.a(file);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.HashMap<java.lang.String, com.apm.insight.k.b.C0012b> r12, com.apm.insight.k.b.C0012b r13, java.io.File r14, java.lang.String r15) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(java.util.HashMap, com.apm.insight.k.b$b, java.io.File, java.lang.String):void");
    }

    private boolean a(File file) {
        String[] list = file.list();
        if (list == null) {
            return false;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && str.endsWith("")) {
                return true;
            }
        }
        return false;
    }

    private void b(final C0012b c0012b, boolean z, @Nullable com.apm.insight.runtime.h hVar) {
        Iterator<a> it;
        boolean z2;
        JSONObject jSONObjectA;
        if (c0012b.c.size() <= 1 && c0012b.c.isEmpty()) {
            c0012b.f265e = c0012b.f264d;
            return;
        }
        boolean zB = p.b(this.c);
        c0012b.f265e = c0012b.f264d;
        com.apm.insight.nativecrash.c cVar = new com.apm.insight.nativecrash.c(this.c);
        Iterator<a> it2 = c0012b.c.iterator();
        while (it2.hasNext()) {
            a next = it2.next();
            final File file = next.a;
            try {
                cVar.a(file);
                jSONObjectA = a(cVar);
            } catch (Throwable th) {
                th = th;
                it = it2;
            }
            if (jSONObjectA == null || jSONObjectA.length() == 0) {
                it = it2;
                z2 = zB;
            } else {
                if (jSONObjectA.length() != 0) {
                    if (z) {
                        it = it2;
                        z2 = zB;
                        if (hVar != null && !hVar.a("default")) {
                        }
                    } else {
                        long jOptLong = jSONObjectA.optLong("crash_time");
                        try {
                            a aVar = c0012b.f265e;
                            if (aVar == null) {
                                c0012b.f265e = next;
                                c0012b.f266f = true;
                                if (hVar == null || hVar.a("default")) {
                                    it = it2;
                                    z2 = zB;
                                } else {
                                    cVar.k();
                                }
                            } else {
                                it = it2;
                                try {
                                    if (c0012b.f266f) {
                                        z2 = zB;
                                    } else {
                                        z2 = zB;
                                        try {
                                            if (jOptLong < aVar.b) {
                                                c0012b.f265e = next;
                                                if (hVar == null || hVar.a("default")) {
                                                    if (!a(file)) {
                                                        a(file, c0012b);
                                                    }
                                                    c0012b.f266f = true;
                                                } else {
                                                    cVar.k();
                                                    zB = z2;
                                                    it2 = it;
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                                            com.apm.insight.l.i.a(file);
                                            zB = z2;
                                            it2 = it;
                                        }
                                    }
                                    com.apm.insight.entity.a.a(jSONObjectA, "filters", "aid", String.valueOf(jSONObjectA.optJSONObject("header").opt("aid")));
                                    jSONObjectA.optJSONObject("header").put("aid", 2010);
                                } catch (Throwable th3) {
                                    th = th3;
                                    z2 = zB;
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            it = it2;
                            z2 = zB;
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                            com.apm.insight.l.i.a(file);
                            zB = z2;
                            it2 = it;
                        }
                    }
                    com.apm.insight.entity.a.a(jSONObjectA, "filters", "start_uuid", c0012b.a);
                    com.apm.insight.entity.a.a(jSONObjectA, "filters", "crash_thread_name", jSONObjectA.optString("crash_thread_name", "unknown"));
                    if (z2) {
                        try {
                            c.a aVar2 = new c.a(jSONObjectA, CrashType.NATIVE);
                            com.apm.insight.entity.b.a(jSONObjectA, com.apm.insight.entity.b.a(aVar2.c(), aVar2.a(), s.a().b(aVar2.b() == -1 ? System.currentTimeMillis() : aVar2.b())), new b.a() { // from class: com.apm.insight.k.b.4
                                @Override // com.apm.insight.entity.b.a
                                public void a(JSONObject jSONObject) {
                                    d.a().a(jSONObject, file, o.a(b.this.c, c0012b.a));
                                }
                            });
                            if (!cVar.k()) {
                                cVar.h();
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                            com.apm.insight.l.i.a(file);
                        }
                    }
                    c.a(CrashType.NATIVE, jSONObjectA);
                } else {
                    it = it2;
                    z2 = zB;
                }
                zB = z2;
                it2 = it;
            }
            cVar.k();
            zB = z2;
            it2 = it;
        }
    }

    private void b(HashMap<String, C0012b> map, C0012b c0012b) {
        File[] fileArrListFiles = o.a(this.c).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        Arrays.sort(fileArrListFiles, Collections.reverseOrder());
        for (File file : fileArrListFiles) {
            try {
                if (com.apm.insight.e.a.a().a(file.getAbsolutePath())) {
                    com.apm.insight.l.i.a(file);
                } else if (!com.apm.insight.l.i.g(file) && !com.apm.insight.g.a.a().b(file.getName())) {
                    if (file.isFile()) {
                        com.apm.insight.l.i.a(file);
                    } else {
                        a(map, c0012b, file, file.getName());
                    }
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    }

    private void c(HashMap<String, C0012b> map, C0012b c0012b) {
        com.apm.insight.l.i.a(o.b(this.c));
    }

    private void d() throws Throwable {
        if (this.f259f != null) {
            return;
        }
        this.f259f = new C0012b("old_uuid");
        HashMap<String, C0012b> map = new HashMap<>();
        this.f260g = map;
        a(map);
        b(this.f260g, this.f259f);
        c(this.f260g, this.f259f);
        a(this.f260g, this.f259f);
        b(this.f259f, true, null);
        a(this.f259f, true, null);
        this.f259f = null;
        if (this.f260g.isEmpty()) {
            f();
        } else {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() throws Throwable {
        if (this.h || this.f260g == null) {
            return;
        }
        if (!p.b(this.c)) {
            f();
        }
        boolean zH = h();
        com.apm.insight.runtime.h hVar = new com.apm.insight.runtime.h(this.c);
        Iterator<C0012b> it = this.f260g.values().iterator();
        while (it.hasNext()) {
            b(it.next(), zH, hVar);
        }
        Iterator<C0012b> it2 = this.f260g.values().iterator();
        while (it2.hasNext()) {
            a(it2.next(), zH, hVar);
        }
        Iterator<C0012b> it3 = this.f260g.values().iterator();
        while (it3.hasNext()) {
            a(it3.next());
        }
        hVar.a();
        com.apm.insight.runtime.b.a();
        f();
    }

    private void f() {
        this.h = true;
        this.f260g = null;
        NativeImpl.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws Throwable {
        if (this.h) {
            return;
        }
        if (!p.b(this.c) || (System.currentTimeMillis() - com.apm.insight.i.j() <= 5000 && com.apm.insight.i.i().isApmExists() && !Npth.hasCrash())) {
            com.apm.insight.runtime.p.b().a(this.i, 5000L);
        } else {
            e();
        }
    }

    private boolean h() {
        if (this.f258e == -1) {
            if (com.apm.insight.runtime.a.b() && com.apm.insight.runtime.a.g()) {
                this.f258e = 1;
            } else {
                this.f258e = 0;
            }
        }
        return this.f258e == 1;
    }

    private void i() {
        File[] fileArrListFiles = o.i(this.c).listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (int i = 0; i < fileArrListFiles.length && i < 5; i++) {
            File file = fileArrListFiles[i];
            if (file.getName().endsWith(".atmp")) {
                com.apm.insight.a.a.a().a(file.getAbsolutePath());
            } else {
                try {
                    com.apm.insight.entity.e eVarE = com.apm.insight.l.i.e(file.getAbsolutePath());
                    if (eVarE != null) {
                        if (eVarE.b() != null) {
                            eVarE.b().put("upload_scene", "launch_scan");
                        }
                        if (e.a(e.d(), eVarE.e(), eVarE.d(), eVarE.f(), eVarE.g())) {
                            com.apm.insight.l.i.a(file);
                            com.apm.insight.l.i.a(eVarE.c());
                        }
                    } else {
                        com.apm.insight.l.i.a(file);
                    }
                } catch (Throwable th) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                }
            }
        }
    }

    public void a(boolean z) throws Throwable {
        if (!Npth.isStopUpload() && z) {
            d();
            i();
            com.apm.insight.c.a.a();
        }
    }

    public void b() {
        try {
            if (!this.h && com.apm.insight.l.a.b(com.apm.insight.i.g())) {
                com.apm.insight.runtime.p.b().a(this.j);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean c() {
        return this.h;
    }
}
