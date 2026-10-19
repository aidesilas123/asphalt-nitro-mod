package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class m extends n {
    private final List<String> aUj;

    public m(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super(com.applovin.impl.sdk.ad.d.cQ(L(list)), appLovinAdLoadListener, "TaskFetchMultizoneAd", nVar);
        this.aUj = Collections.unmodifiableList(list);
    }

    private static String L(List<String> list) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("No zone identifiers specified");
        }
        return list.get(0);
    }

    @Override // com.applovin.impl.sdk.e.k
    protected Map<String, String> HI() {
        HashMap map = new HashMap(1);
        List<String> list = this.aUj;
        map.put("zone_ids", CollectionUtils.implode(list, list.size()));
        return map;
    }

    @Override // com.applovin.impl.sdk.e.k
    protected com.applovin.impl.sdk.ad.b getSource() {
        return com.applovin.impl.sdk.ad.b.APPLOVIN_MULTIZONE;
    }
}
