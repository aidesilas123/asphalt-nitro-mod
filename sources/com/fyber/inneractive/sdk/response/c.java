package com.fyber.inneractive.sdk.response;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.util.b0;
import com.fyber.inneractive.sdk.util.l;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class c extends b {
    @Override // com.fyber.inneractive.sdk.response.b
    public e a() {
        f fVar = new f();
        this.a = fVar;
        return fVar;
    }

    @Override // com.fyber.inneractive.sdk.response.b
    public void a(String str, a0 a0Var) throws IOException {
        f fVar = (f) this.a;
        String strA = str == null ? null : b0.f2738g.a(str);
        int i = com.fyber.inneractive.sdk.config.f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.assetResponse");
        if (!TextUtils.isEmpty(property)) {
            String strC = l.c(property);
            if (!TextUtils.isEmpty(strC)) {
                strA = strC;
            }
        }
        fVar.J = strA;
    }

    @Override // com.fyber.inneractive.sdk.response.b
    public boolean b() {
        return true;
    }
}
