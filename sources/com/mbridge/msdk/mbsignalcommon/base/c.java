package com.mbridge.msdk.mbsignalcommon.base;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;

/* JADX INFO: compiled from: IntentFilter.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c implements a {
    @Override // com.mbridge.msdk.mbsignalcommon.base.a
    public final boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String scheme = Uri.parse(str).getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equals(SDKConstants.PARAM_INTENT)) {
            return false;
        }
        return com.mbridge.msdk.click.b.d(com.mbridge.msdk.foundation.controller.b.d().g(), str);
    }
}
