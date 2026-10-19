package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.al;

/* JADX INFO: compiled from: LoadUrlTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class g {
    public static String a(String str) {
        com.mbridge.msdk.c.e eVarG = com.mbridge.msdk.c.f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
        String strA = com.mbridge.msdk.foundation.same.net.g.d.a().a(str, TextUtils.isEmpty(str) ? eVarG.aJ() : eVarG.aI());
        return TextUtils.isEmpty(strA) ? "" : al.a(strA);
    }
}
