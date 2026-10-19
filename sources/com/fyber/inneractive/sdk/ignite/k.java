package com.fyber.inneractive.sdk.ignite;

import com.facebook.appevents.UserDataStore;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public enum k {
    TRUE_SINGLE_TAP("tst"),
    SINGLE_TAP(UserDataStore.STATE),
    NONE("none");

    private static final Map<String, k> CONSTANTS = new HashMap();
    private final String value;

    static {
        for (k kVar : values()) {
            CONSTANTS.put(kVar.value, kVar);
        }
    }

    k(String str) {
        this.value = str;
    }

    public static k a(String str) {
        return CONSTANTS.get(str);
    }

    public boolean e() {
        return this == TRUE_SINGLE_TAP;
    }

    public String f() {
        return this.value;
    }
}
