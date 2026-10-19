package com.applovin.impl.mediation.d;

import android.net.Uri;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.adapter.MaxAdapterError;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.applovin.impl.sdk.e.d {
    private final com.applovin.impl.mediation.b.f ami;
    private final String awv;
    private final String aww;
    private final Map<String, String> awx;
    private final Map<String, String> awy;
    private final MaxError awz;

    public d(String str, Map<String, String> map, MaxError maxError, com.applovin.impl.mediation.b.f fVar, com.applovin.impl.sdk.n nVar, boolean z) {
        super("TaskFireMediationPostbacks", nVar);
        this.awv = str;
        this.aww = str + "_urls";
        this.awx = u.a(map, nVar);
        this.awz = maxError != null ? maxError : new MaxErrorImpl(-1);
        this.ami = fVar;
        HashMap map2 = new HashMap(7);
        map2.put("AppLovin-Event-Type", str);
        if (z) {
            map2.put("AppLovin-Ad-Network-Name", fVar.yA());
        }
        if (fVar instanceof com.applovin.impl.mediation.b.a) {
            com.applovin.impl.mediation.b.a aVar = (com.applovin.impl.mediation.b.a) fVar;
            map2.put("AppLovin-Ad-Unit-Id", aVar.getAdUnitId());
            map2.put("AppLovin-Ad-Format", aVar.getFormat().getLabel());
            if (z) {
                map2.put("AppLovin-Third-Party-Ad-Placement-ID", aVar.getThirdPartyAdPlacementId());
            }
        }
        if (maxError != null) {
            map2.put("AppLovin-Error-Code", String.valueOf(maxError.getCode()));
            map2.put("AppLovin-Error-Message", maxError.getMessage());
        }
        this.awy = map2;
    }

    private void b(String str, Map<String, Object> map) {
        getSdk().Cu().a(com.applovin.impl.sdk.network.h.ID().dd(str).dc("POST").o(this.awy).aV(false).p(map).aW(((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aKg)).booleanValue()).IF());
    }

    private String c(String str, MaxError maxError) {
        int mediatedNetworkErrorCode;
        String mediatedNetworkErrorMessage;
        if (maxError instanceof MaxAdapterError) {
            MaxAdapterError maxAdapterError = (MaxAdapterError) maxError;
            mediatedNetworkErrorCode = maxAdapterError.getMediatedNetworkErrorCode();
            mediatedNetworkErrorMessage = maxAdapterError.getMediatedNetworkErrorMessage();
        } else {
            mediatedNetworkErrorCode = 0;
            mediatedNetworkErrorMessage = "";
        }
        return str.replace("{ERROR_CODE}", String.valueOf(maxError.getCode())).replace("{ERROR_MESSAGE}", StringUtils.encodeUriString(maxError.getMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(mediatedNetworkErrorCode)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", StringUtils.encodeUriString(mediatedNetworkErrorMessage));
    }

    private String c(String str, Map<String, String> map) {
        for (String str2 : map.keySet()) {
            str = str.replace(str2, StringUtils.emptyIfNull(map.get(str2)));
        }
        return str;
    }

    private Map<String, String> zG() {
        try {
            return JsonUtils.toStringMap(new JSONObject((String) this.sdk.a(com.applovin.impl.sdk.c.a.aJm)));
        } catch (JSONException unused) {
            return Collections.EMPTY_MAP;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> listBZ = this.ami.bZ(this.aww);
        Map<String, String> mapZG = zG();
        Iterator<String> it = listBZ.iterator();
        while (it.hasNext()) {
            Uri uri = Uri.parse(c(c(it.next(), this.awx), this.awz));
            Uri.Builder builderClearQuery = uri.buildUpon().clearQuery();
            HashMap map = new HashMap(mapZG.size());
            for (String str : uri.getQueryParameterNames()) {
                String queryParameter = uri.getQueryParameter(str);
                if (mapZG.containsKey(queryParameter)) {
                    map.put(str, this.ami.ca(mapZG.get(queryParameter)));
                } else {
                    builderClearQuery.appendQueryParameter(str, queryParameter);
                }
            }
            b(builderClearQuery.build().toString(), map);
        }
    }
}
