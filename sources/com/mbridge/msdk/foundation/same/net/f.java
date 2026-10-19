package com.mbridge.msdk.foundation.same.net;

import com.mbridge.msdk.foundation.tools.aa;
import org.json.JSONObject;

/* JADX INFO: compiled from: Listener.java */
/* JADX INFO: loaded from: classes4.dex */
public class f<T> implements e<T> {
    private long startTime;
    public String unitId = "";
    public String placementId = "";
    public int adType = 0;
    private com.mbridge.msdk.foundation.same.report.a.a mRequestTime = null;

    public void calcRequestTime(long j) {
        com.mbridge.msdk.foundation.same.report.a.a aVar = new com.mbridge.msdk.foundation.same.report.a.a(new com.mbridge.msdk.foundation.entity.h());
        this.mRequestTime = aVar;
        aVar.b(this.unitId);
        this.mRequestTime.a(1);
        this.mRequestTime.a((j - this.startTime) + "");
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onCancel() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onFinish() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onNetworking() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onPreExecute() {
        this.startTime = System.currentTimeMillis();
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onProgressChange(long j, long j2) {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onRetry() {
    }

    @Override // com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<T> lVar) {
        try {
            String str = com.mbridge.msdk.foundation.controller.b.d().h() + "_" + this.placementId + "_" + this.unitId + "_" + this.adType;
            aa.d("Listener", lVar.a + " " + str);
            T t = lVar.a;
            if (t instanceof JSONObject) {
                com.mbridge.msdk.foundation.same.net.g.c.a().a(str, ((JSONObject) t).optInt("status"), ((JSONObject) lVar.a).toString(), System.currentTimeMillis());
            }
            if (lVar.a instanceof String) {
                com.mbridge.msdk.foundation.same.net.g.c.a().a(str, new JSONObject((String) lVar.a).optInt("status"), (String) lVar.a, System.currentTimeMillis());
            }
        } catch (Exception e2) {
            aa.d("Listener", e2.getMessage());
        }
    }

    public void saveHbState(int i) {
        com.mbridge.msdk.foundation.same.report.a.a aVar = this.mRequestTime;
        if (aVar != null) {
            aVar.c(i);
        }
    }

    public void saveRequestTime(int i) {
        com.mbridge.msdk.foundation.same.report.a.a aVar = this.mRequestTime;
        if (aVar != null) {
            aVar.b(i);
            this.mRequestTime.a();
        }
    }

    public void setAdType(int i) {
        this.adType = i;
    }

    public void setPlacementId(String str) {
        this.placementId = str;
    }

    public void setUnitId(String str) {
        this.unitId = str;
    }
}
