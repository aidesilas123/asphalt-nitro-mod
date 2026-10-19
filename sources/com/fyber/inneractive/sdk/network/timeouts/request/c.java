package com.fyber.inneractive.sdk.network.timeouts.request;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.global.features.j;
import com.fyber.inneractive.sdk.config.global.s;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public a a(String str, String str2, s sVar, boolean z) {
        j jVar = (j) sVar.a(j.class);
        return TextUtils.isEmpty(str2) ? new b(str, jVar) : z ? new d(str, jVar, str2) : new e(str, jVar, str2);
    }
}
