package com.applovin.impl.mediation.debugger.b.a;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final String aoD;
    private final String aoE;

    @Nullable
    private final String aoF;

    @Nullable
    private final String aoG;

    @Nullable
    private final List<String> aoH;

    @Nullable
    private final List<String> aoI;

    public f(JSONObject jSONObject) {
        this.aoD = JsonUtils.getString(jSONObject, "user_type", "all");
        this.aoE = JsonUtils.getString(jSONObject, "device_type", "all");
        this.aoF = JsonUtils.getString(jSONObject, "min_age", null);
        this.aoG = JsonUtils.getString(jSONObject, "max_age", null);
        this.aoH = JsonUtils.getList(jSONObject, InneractiveMediationDefs.KEY_GENDER, null);
        this.aoI = JsonUtils.getList(jSONObject, "keywords", null);
    }

    @Nullable
    public List<String> getKeywords() {
        return this.aoI;
    }

    public String uV() {
        return this.aoD;
    }

    public String uW() {
        return this.aoE;
    }

    @Nullable
    public String uX() {
        return this.aoF;
    }

    @Nullable
    public String uY() {
        return this.aoG;
    }

    @Nullable
    public List<String> uZ() {
        return this.aoH;
    }
}
