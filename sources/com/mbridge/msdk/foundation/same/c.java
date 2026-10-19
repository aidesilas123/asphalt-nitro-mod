package com.mbridge.msdk.foundation.same;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;

/* JADX INFO: compiled from: SameTools.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static int a(CampaignEx campaignEx, String str) {
        if (campaignEx == null) {
            return -1;
        }
        try {
            return !TextUtils.isEmpty(campaignEx.getMof_template_url()) ? af.l(campaignEx.getMof_template_url()) : af.l(str);
        } catch (Exception e2) {
            aa.d("SameTools", e2.getMessage());
            return -1;
        }
    }
}
