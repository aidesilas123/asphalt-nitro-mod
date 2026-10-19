package com.bytedance.sdk.openadsdk.core.g.a;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.g.b.c;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastXmlParser.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public int a;
    protected final Context b;
    protected int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected double f1509d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1510e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public a f1511f;

    /* JADX INFO: compiled from: VastXmlParser.java */
    public static class a {
        public int a;
        public int b;
        public boolean c;
    }

    public b(Context context, int i, int i2) {
        this.c = 0;
        this.f1509d = 0.0d;
        if (i2 > 0 && i > 0) {
            this.f1509d = ((double) i) / ((double) i2);
        }
        float fE = ad.e(context);
        if (fE != 0.0f && i > 0) {
            this.c = (int) (i / fE);
        }
        this.b = context.getApplicationContext();
    }

    public abstract com.bytedance.sdk.openadsdk.core.g.a a(String str, List<c> list);

    protected void a(Exception exc, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("exception", exc.getMessage());
            jSONObject.put("error_code", i);
            com.bytedance.sdk.openadsdk.j.b.a().a("load_vast", jSONObject);
        } catch (Exception unused) {
        }
    }

    protected boolean a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return Integer.parseInt(str) < 2;
        } catch (NumberFormatException unused) {
            return true;
        }
    }

    protected String b(String str, List<c> list) {
        String strD;
        com.bytedance.sdk.component.f.b bVarA;
        int i = this.a;
        if (i >= 5) {
            return null;
        }
        this.a = i + 1;
        if (str == null) {
            return null;
        }
        try {
            com.bytedance.sdk.component.f.b.b bVarC = com.bytedance.sdk.openadsdk.k.c.a().b().c();
            bVarC.a(str);
            bVarA = bVarC.a();
            strD = bVarA.d();
        } catch (Exception e2) {
            e = e2;
            strD = null;
        }
        try {
            bVarA.a();
        } catch (Exception e3) {
            e = e3;
            a(e, 0);
            if (!list.isEmpty()) {
                c.b(list, com.bytedance.sdk.openadsdk.core.g.a.a.WRAPPER_TIMEOUT, -1L, null);
            }
        }
        return strD;
    }
}
