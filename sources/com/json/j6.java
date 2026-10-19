package com.json;

import com.json.sdk.utils.SDKUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class j6 {
    private HashMap<String, Object> a = new HashMap<>();

    public j6 a(String str, Object obj) {
        if (obj != null) {
            this.a.put(str, SDKUtils.encodeString(obj.toString()));
        }
        return this;
    }

    public HashMap<String, Object> a() {
        return this.a;
    }
}
