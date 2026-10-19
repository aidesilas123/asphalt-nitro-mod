package com.json;

import android.os.Handler;
import com.json.sdk.utils.IronSourceStorageUtils;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class s3 {
    private static s3 a;
    private r3 b;
    private final JSONObject c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread f6535d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6536e;

    private s3(String str, q5 q5Var, JSONObject jSONObject) {
        this.f6536e = str;
        this.b = new r3(q5Var.a());
        this.c = jSONObject;
        IronSourceStorageUtils.deleteFolder(e());
        IronSourceStorageUtils.makeDir(e());
    }

    public static synchronized s3 a(String str, q5 q5Var, JSONObject jSONObject) {
        if (a == null) {
            a = new s3(str, q5Var, jSONObject);
        }
        return a;
    }

    private Thread b(vd vdVar, Handler handler) {
        return new Thread(new yd(vdVar, handler));
    }

    private Thread c(q6 q6Var, String str, int i, int i2, Handler handler) {
        if (i <= 0) {
            i = this.c.optInt("connectionTimeout", 5);
        }
        if (i2 <= 0) {
            i2 = this.c.optInt("readTimeout", 5);
        }
        TimeUnit timeUnit = TimeUnit.SECONDS;
        return b(new vd(q6Var, str, (int) timeUnit.toMillis(i), (int) timeUnit.toMillis(i2), e()), handler);
    }

    private String e() {
        return IronSourceStorageUtils.buildAbsolutePathToDirInCache(this.f6536e, p2.D);
    }

    public String a() {
        return this.f6536e;
    }

    public void a(fa faVar) {
        this.b.a(faVar);
    }

    public void a(q6 q6Var, String str) {
        int iOptInt = this.c.optInt("connectionTimeout", 5);
        int iOptInt2 = this.c.optInt("readTimeout", 5);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Thread threadB = b(new vd(q6Var, str, (int) timeUnit.toMillis(iOptInt), (int) timeUnit.toMillis(iOptInt2), e()), this.b);
        this.f6535d = threadB;
        threadB.start();
    }

    public void a(q6 q6Var, String str, int i, int i2) {
        c(q6Var, str, i, i2, this.b).start();
    }

    public void b(q6 q6Var, String str, int i, int i2, Handler handler) {
        c(q6Var, str, i, i2, handler).start();
    }

    public boolean c() {
        Thread thread = this.f6535d;
        return thread != null && thread.isAlive();
    }

    public synchronized void d() {
        a = null;
        r3 r3Var = this.b;
        if (r3Var != null) {
            r3Var.a();
            this.b = null;
        }
    }
}
