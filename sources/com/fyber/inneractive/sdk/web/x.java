package com.fyber.inneractive.sdk.web;

import android.util.LruCache;

/* JADX INFO: loaded from: classes2.dex */
public class x<K> extends LruCache<K, a0> {
    public x(int i) {
        super(i);
    }

    @Override // android.util.LruCache
    public int sizeOf(Object obj, a0 a0Var) {
        String str;
        a0 a0Var2 = a0Var;
        int length = 0;
        for (String str2 : a0Var2.b.keySet()) {
            if (str2 != null && (str = a0Var2.b.get(str2)) != null) {
                length += str2.length() + str.length();
            }
        }
        return length + a0Var2.a.length;
    }
}
