package com.fyber.inneractive.sdk.player.cache;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    public File a;
    public String b;
    public boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f2140d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, String> f2141e = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f2142f = false;

    public a(String str, String str2, File file, boolean z, String str3) {
        this.a = file;
        this.b = str2;
        this.c = z;
    }

    public File a() {
        File file;
        synchronized (this.f2140d) {
            file = this.a;
        }
        return file;
    }
}
