package com.applovin.impl.mediation.debugger.b.c;

import android.content.Context;
import com.applovin.impl.sdk.utils.h;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final String aoS;
    private final boolean aoT;
    private final String name;

    c(String str, String str2, Context context) {
        this.name = str.replace("android.permission.", "");
        this.aoS = str2;
        this.aoT = h.d(str, context);
    }

    public String getName() {
        return this.name;
    }

    public String vj() {
        return this.aoS;
    }

    public boolean vk() {
        return this.aoT;
    }
}
