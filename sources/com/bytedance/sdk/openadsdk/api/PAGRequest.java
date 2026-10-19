package com.bytedance.sdk.openadsdk.api;

import android.os.Bundle;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class PAGRequest {
    private String a;
    private Map<String, Object> b;
    private Bundle c = null;

    public final void addNetworkExtrasBundle(Class<?> cls, Bundle bundle) {
        if (this.c == null) {
            this.c = new Bundle();
        }
        this.c.putBundle(cls.getName(), bundle);
    }

    public String getAdString() {
        return this.a;
    }

    public Map<String, Object> getExtraInfo() {
        return this.b;
    }

    public Bundle getNetworkExtrasBundle() {
        return this.c;
    }

    public void setAdString(String str) {
        this.a = str;
    }

    public void setExtraInfo(Map<String, Object> map) {
        this.b = map;
    }
}
