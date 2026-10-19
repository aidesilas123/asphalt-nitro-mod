package com.fyber.inneractive.sdk.player.cache;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {
    public Map<String, String> a = new HashMap();

    public enum a {
        OK,
        PARTIAL_CANNOT_VALIDATE,
        INVALID
    }

    public abstract a a(com.fyber.inneractive.sdk.player.cache.a aVar, String str);
}
