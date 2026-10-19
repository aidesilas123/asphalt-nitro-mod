package com.mbridge.msdk.video.module.c;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.net.h.b;
import com.mbridge.msdk.foundation.same.net.h.d;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.out.MBConfiguration;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoViewRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a extends b {
    public a(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.foundation.same.net.h.b
    public final void addExtraParams(String str, d dVar) {
        super.addExtraParams(str, dVar);
        dVar.a("platform", "1");
        dVar.a("os_version", Build.VERSION.RELEASE);
        dVar.a("package_name", w.o(this.mContext));
        dVar.a("app_version_name", w.j(this.mContext));
        dVar.a("app_version_code", w.i(this.mContext) + "");
        dVar.a("orientation", w.h(this.mContext) + "");
        dVar.a("model", w.i());
        dVar.a("brand", w.k());
        dVar.a("mnc", w.e(this.mContext));
        dVar.a("mcc", w.d(this.mContext));
        dVar.a(v4.w0, "");
        dVar.a("gaid2", g.c());
        int iR = w.r(this.mContext);
        dVar.a(KidozParams.NETWORK_TYPE, iR + "");
        dVar.a("network_str", w.a(this.mContext, iR) + "");
        dVar.a("language", w.g(this.mContext));
        dVar.a("timezone", w.m());
        dVar.a("useragent", w.l());
        dVar.a("sdk_version", MBConfiguration.SDK_VERSION);
        dVar.a("screen_size", w.l(this.mContext) + "x" + w.m(this.mContext));
        if (f.a().b(com.mbridge.msdk.foundation.controller.b.d().h()) != null) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (TextUtils.isEmpty(jSONObject.toString())) {
                    return;
                }
                String strA = u.a(jSONObject.toString());
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                dVar.a("dvi", strA);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
