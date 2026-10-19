package com.mbridge.msdk.video.dynview.f;

import android.content.Context;
import android.os.Build;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.foundation.same.net.h.d;
import com.mbridge.msdk.foundation.same.net.h.e;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.out.MBConfiguration;

/* JADX INFO: compiled from: MoreOfferLoadRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b extends com.mbridge.msdk.foundation.same.net.h.b {
    public b(Context context) {
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
        dVar.a(v4.w0, "");
        dVar.a("gaid2", g.c());
        int iR = w.r(this.mContext);
        dVar.a(KidozParams.NETWORK_TYPE, iR + "");
        dVar.a("network_str", w.a(this.mContext, iR) + "");
        dVar.a("language", w.g(this.mContext));
        dVar.a("timezone", w.m());
        dVar.a("useragent", w.l());
        dVar.a("sdk_version", MBConfiguration.SDK_VERSION);
        e.a(dVar, this.mContext);
        e.a(dVar);
        e.c(dVar);
    }
}
