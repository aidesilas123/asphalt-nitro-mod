package com.mbridge.msdk.mbbid.common.b;

import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.f.c;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: BidResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends f<JSONObject> {
    private static final String a = "b";

    public b(String str, String str2) {
        this.unitId = str2;
        this.placementId = str;
    }

    public abstract void a(int i, String str);

    public abstract void a(BidResponsedEx bidResponsedEx);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        a(aVar.a, com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<JSONObject> lVar) {
        c cVar;
        super.onSuccess(lVar);
        if (lVar == null || (cVar = lVar.c) == null) {
            return;
        }
        List<com.mbridge.msdk.foundation.same.net.d.b> list = cVar.f7145d;
        JSONObject jSONObject = lVar.a;
        int iOptInt = jSONObject.optInt("status");
        if (200 != iOptInt) {
            a(iOptInt, jSONObject.optString("msg"));
            return;
        }
        BidResponsedEx bidResponsedEx = BidResponsedEx.parseBidResponsedEx(jSONObject.optJSONObject("data"), this.unitId);
        if (bidResponsedEx != null) {
            a(bidResponsedEx);
        } else {
            a(iOptInt, jSONObject.optString("msg"));
        }
    }
}
