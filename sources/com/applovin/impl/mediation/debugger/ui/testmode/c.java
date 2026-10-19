package com.applovin.impl.mediation.debugger.ui.testmode;

import androidx.annotation.Nullable;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private List<String> aun;
    private boolean iV;
    private final n sdk;

    public c(n nVar) {
        this.sdk = nVar;
        com.applovin.impl.sdk.c.d<Boolean> dVar = com.applovin.impl.sdk.c.d.aRO;
        this.iV = ((Boolean) nVar.b(dVar, Boolean.FALSE)).booleanValue() || com.applovin.impl.sdk.utils.e.X(n.getApplicationContext()).dy("applovin.sdk.is_test_environment") || AppLovinSdkUtils.isEmulator();
        nVar.b(dVar);
    }

    private void xm() {
        k kVarCh = this.sdk.Ch();
        if (this.iV) {
            kVarCh.H(this.aun);
        } else {
            kVarCh.G(this.aun);
        }
    }

    public void C(@Nullable List<String> list) {
        if (list == null && this.aun == null) {
            return;
        }
        if (list == null || !list.equals(this.aun)) {
            this.aun = list;
            xm();
        }
    }

    public void bT(@Nullable String str) {
        if (StringUtils.isValidString(str)) {
            C(Collections.singletonList(str));
        } else {
            C(null);
        }
    }

    public void f(JSONObject jSONObject) {
        String strKR;
        boolean zDa;
        if (this.iV) {
            return;
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray());
        if (this.sdk.BV() != null) {
            strKR = this.sdk.BU().DM().KR();
            zDa = this.sdk.BU().Da();
        } else {
            strKR = this.sdk.BS().Di().KR();
            zDa = this.sdk.BS().Da();
        }
        this.iV = zDa || JsonUtils.containsCaseInsensitiveString(strKR, jSONArray);
    }

    public boolean isEnabled() {
        return this.iV;
    }

    public boolean xj() {
        List<String> list = this.aun;
        return (list == null || list.isEmpty()) ? false : true;
    }

    @Nullable
    public List<String> xk() {
        return this.aun;
    }

    public void xl() {
        this.sdk.a(com.applovin.impl.sdk.c.d.aRO, Boolean.TRUE);
    }
}
