package com.applovin.impl.sdk.b;

import androidx.annotation.NonNull;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final String aJc;
    private Map<String, String> aJd;

    private c(String str, Map<String, String> map) {
        this.aJc = str;
        this.aJd = map;
    }

    public static c dn(String str) {
        return e(str, null);
    }

    public static c e(String str, Map<String, String> map) {
        return new c(str, map);
    }

    public Map<String, String> JB() {
        return this.aJd;
    }

    public String JC() {
        return this.aJc;
    }

    @NonNull
    public String toString() {
        return "PendingReward{result='" + this.aJc + "'params='" + this.aJd + "'}";
    }
}
