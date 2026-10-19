package com.fyber.inneractive.sdk.network;

import android.text.TextUtils;
import java.security.InvalidParameterException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public String a;
    public Map<String, Object> b;
    public String c = null;

    public l(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new InvalidParameterException();
        }
        this.b = new HashMap();
        this.a = str;
    }

    public void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.b.put(str, obj);
    }
}
