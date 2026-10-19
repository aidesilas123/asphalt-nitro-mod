package com.mbridge.msdk.foundation.same.net.h;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;

/* JADX INFO: compiled from: CampaignRequest.java */
/* JADX INFO: loaded from: classes4.dex */
public class a extends b {
    public a(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.foundation.same.net.h.b
    public void addExtraParams(String str, d dVar) {
        try {
            try {
                int iF = af.f();
                String strG = af.g();
                if (dVar != null) {
                    dVar.a("misk_spt", String.valueOf(iF));
                    if (!TextUtils.isEmpty(strG)) {
                        dVar.a("misk_spt_det", strG);
                    }
                }
            } catch (Exception e2) {
                aa.a("CampaignRequest", e2.getMessage());
            }
        } finally {
            super.addExtraParams(str, dVar);
        }
    }
}
