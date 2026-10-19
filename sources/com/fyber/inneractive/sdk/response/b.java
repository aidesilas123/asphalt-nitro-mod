package com.fyber.inneractive.sdk.response;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.network.n;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public e a;
    public String b;
    public j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2715d = true;

    public abstract e a();

    public e a(String str) throws Exception {
        this.f2715d = str != null;
        e eVar = this.a;
        eVar.getClass();
        eVar.c = System.currentTimeMillis();
        this.c.a(this);
        String strA = this.c.a();
        this.a.h = strA;
        a0 a0VarB = com.fyber.inneractive.sdk.config.a.b(this.b);
        IAlog.a("%sGot unit config for unitId: %s from config manager", IAlog.a(this), this.b);
        IAlog.a("%s%s", IAlog.a(this), a0VarB);
        if (this.f2715d) {
            a(str, a0VarB);
        } else if (!(this instanceof com.fyber.inneractive.sdk.dv.e)) {
            h hVar = new h(strA);
            if (hVar.a) {
                String str2 = hVar.b;
                if (str2 == null || TextUtils.isEmpty(str2.trim())) {
                    throw new Exception("empty ad content detected. failing fast.");
                }
                a(str2, a0VarB);
            }
        } else {
            a(strA, a0VarB);
        }
        return this.a;
    }

    public void a(n nVar) {
        this.a = a();
    }

    public abstract void a(String str, a0 a0Var) throws Exception;

    public abstract boolean b();
}
