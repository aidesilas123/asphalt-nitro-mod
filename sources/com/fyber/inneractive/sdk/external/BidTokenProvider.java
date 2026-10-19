package com.fyber.inneractive.sdk.external;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.i;
import com.fyber.inneractive.sdk.network.q;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class BidTokenProvider {
    public static String getBidderToken() {
        boolean z = false;
        if (!InneractiveAdManager.wasInitialized()) {
            IAlog.b("BidTokenProvider: Cannot generate token. Please init Fyber Marketplace SDK.", new Object[0]);
            return null;
        }
        com.fyber.inneractive.sdk.bidder.a aVar = com.fyber.inneractive.sdk.bidder.a.h;
        if (aVar.f1911e.get() == null) {
            synchronized (aVar.f1913g) {
                aVar.a();
            }
        } else {
            aVar.b();
        }
        String str = aVar.f1911e.get();
        IAConfigManager iAConfigManager = IAConfigManager.M;
        String str2 = iAConfigManager.m;
        i iVar = iAConfigManager.u.b;
        int iA = iVar.a(TextUtils.isEmpty(str2) ? "token_size_limit" : String.format("%s_%s", "token_size_limit", str2.toLowerCase(Locale.US)), iVar.a("token_size_limit", 2000, 1), 1);
        if (str != null && str.getBytes().length > iA) {
            s.a aVar2 = new s.a(q.TOKEN_EXCEEDS_LIMIT);
            JSONObject jSONObject = new JSONObject();
            if (TextUtils.isEmpty(str2)) {
                str2 = "unknown";
            }
            try {
                jSONObject.put("mediator", str2);
            } catch (Exception unused) {
                IAlog.e("Got exception adding param to json object: %s, %s", "mediator", str2);
            }
            Integer numValueOf = Integer.valueOf(str.getBytes().length);
            try {
                jSONObject.put("token_size", numValueOf);
            } catch (Exception unused2) {
                IAlog.e("Got exception adding param to json object: %s, %s", "token_size", numValueOf);
            }
            Integer numValueOf2 = Integer.valueOf(iA);
            try {
                jSONObject.put("token_limit", numValueOf2);
            } catch (Exception unused3) {
                IAlog.e("Got exception adding param to json object: %s, %s", "token_limit", numValueOf2);
            }
            aVar2.f2120f.put(jSONObject);
            aVar2.a((String) null);
            z = true;
        }
        if (z) {
            return null;
        }
        return str;
    }
}
