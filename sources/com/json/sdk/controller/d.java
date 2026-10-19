package com.json.sdk.controller;

import com.json.b4;
import com.json.gb;
import com.json.j6;
import com.json.o2;
import com.json.o6;
import com.json.q6;
import com.json.s3;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class d {
    private long a;
    private int b;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private EnumC0364d f6556d = EnumC0364d.NONE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f6558f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s3 f6559g;

    class a extends JSONObject {
        a() throws JSONException {
            putOpt(o2.a.h, Integer.valueOf(d.this.b));
            putOpt("controllerSourceCode", Integer.valueOf(d.this.f6556d.a()));
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[c.values().length];
            a = iArr;
            try {
                iArr[c.FETCH_FROM_SERVER_NO_FALLBACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public enum c {
        FETCH_FROM_SERVER_NO_FALLBACK,
        FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK,
        FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL
    }

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.d$d, reason: collision with other inner class name */
    public enum EnumC0364d {
        NONE(0),
        PREPARED_CONTROLLER_LOADED(1),
        CONTROLLER_FROM_SERVER(2),
        MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(3),
        FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER(4),
        FALLBACK_CONTROLLER_RECOVERY(5);

        private int h;

        EnumC0364d(int i) {
            this.h = i;
        }

        public int a() {
            return this.h;
        }
    }

    d(JSONObject jSONObject, String str, String str2, s3 s3Var) {
        int iOptInt = jSONObject.optInt(o2.a.h, -1);
        this.b = iOptInt;
        this.c = b(iOptInt);
        this.f6557e = str;
        this.f6558f = str2;
        this.f6559g = s3Var;
    }

    private c b(int i) {
        return i != 1 ? i != 2 ? c.FETCH_FROM_SERVER_NO_FALLBACK : c.FETCH_FOR_NEXT_SESSION_LOAD_FROM_LOCAL : c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK;
    }

    private void d(q6 q6Var) {
        if (this.f6559g.c()) {
            return;
        }
        this.f6559g.a(q6Var, this.f6558f);
    }

    private void e(EnumC0364d enumC0364d) {
        j6 j6VarA = new j6().a(b4.x, Integer.valueOf(this.b)).a(b4.y, Integer.valueOf(enumC0364d.a()));
        if (this.a > 0) {
            j6VarA.a(b4.A, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        o6.a(gb.w, j6VarA.a());
    }

    private boolean h() {
        try {
            if (r()) {
                return IronSourceStorageUtils.renameFile(p().getPath(), o().getPath());
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean j() throws Exception {
        return IronSourceStorageUtils.renameFile(q().getPath(), o().getPath());
    }

    private void k() {
        try {
            q6 q6VarO = o();
            if (q6VarO.exists()) {
                q6 q6VarP = p();
                if (q6VarP.exists()) {
                    q6VarP.delete();
                }
                IronSourceStorageUtils.renameFile(q6VarO.getPath(), q6VarP.getPath());
            }
        } catch (Exception unused) {
        }
    }

    private void l() {
        IronSourceStorageUtils.deleteFile(p());
    }

    private void m() {
        IronSourceStorageUtils.deleteFile(o());
    }

    private q6 p() {
        return new q6(this.f6557e, "fallback_mobileController.html");
    }

    private q6 q() {
        return new q6(this.f6557e, "next_mobileController.html");
    }

    private boolean r() {
        return p().exists();
    }

    private void t() {
        j6 j6VarA = new j6().a(b4.x, Integer.valueOf(this.b));
        if (this.a > 0) {
            j6VarA.a(b4.A, Long.valueOf(System.currentTimeMillis() - this.a));
        }
        o6.a(gb.x, j6VarA.a());
    }

    void c(j6 j6Var) {
        j6Var.a(b4.x, Integer.valueOf(this.b));
        o6.a(gb.v, j6Var.a());
        this.a = System.currentTimeMillis();
    }

    void f(Runnable runnable) {
        if (u()) {
            return;
        }
        if (this.c == c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK) {
            l();
        }
        EnumC0364d enumC0364d = EnumC0364d.CONTROLLER_FROM_SERVER;
        this.f6556d = enumC0364d;
        e(enumC0364d);
        runnable.run();
    }

    void g(Runnable runnable, Runnable runnable2) {
        if (u()) {
            return;
        }
        if (this.c != c.FETCH_FROM_SERVER_WITH_LOCAL_FALLBACK || !h()) {
            t();
            runnable2.run();
        } else {
            EnumC0364d enumC0364d = EnumC0364d.FALLBACK_CONTROLLER_RECOVERY;
            this.f6556d = enumC0364d;
            e(enumC0364d);
            runnable.run();
        }
    }

    JSONObject n() throws JSONException {
        return new a();
    }

    q6 o() {
        return new q6(this.f6557e, o2.f6461g);
    }

    boolean s() {
        q6 q6Var;
        int i = b.a[this.c.ordinal()];
        if (i == 1) {
            m();
            q6Var = new q6(this.f6557e, SDKUtils.getFileName(this.f6558f));
        } else {
            if (i != 2) {
                if (i == 3) {
                    try {
                        q6 q6VarO = o();
                        q6 q6VarQ = q();
                        if (!q6VarQ.exists() && !q6VarO.exists()) {
                            d(new q6(this.f6557e, SDKUtils.getFileName(this.f6558f)));
                            return false;
                        }
                        if (!q6VarQ.exists() && q6VarO.exists()) {
                            EnumC0364d enumC0364d = EnumC0364d.MISSING_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                            this.f6556d = enumC0364d;
                            e(enumC0364d);
                            d(new q6(this.f6557e, q6VarQ.getName()));
                            return true;
                        }
                        k();
                        if (j()) {
                            EnumC0364d enumC0364d2 = EnumC0364d.PREPARED_CONTROLLER_LOADED;
                            this.f6556d = enumC0364d2;
                            e(enumC0364d2);
                            l();
                            d(new q6(this.f6557e, q6VarQ.getName()));
                            return true;
                        }
                        if (h()) {
                            EnumC0364d enumC0364d3 = EnumC0364d.FAILED_RENAME_PREPARED_CONTROLLER_LOAD_LAST_USED_CONTROLLER;
                            this.f6556d = enumC0364d3;
                            e(enumC0364d3);
                            d(new q6(this.f6557e, q6VarQ.getName()));
                            return true;
                        }
                        d(new q6(this.f6557e, SDKUtils.getFileName(this.f6558f)));
                    } catch (Exception unused) {
                    }
                }
                return false;
            }
            k();
            q6Var = new q6(this.f6557e, SDKUtils.getFileName(this.f6558f));
        }
        d(q6Var);
        return false;
    }

    boolean u() {
        return this.f6556d != EnumC0364d.NONE;
    }
}
