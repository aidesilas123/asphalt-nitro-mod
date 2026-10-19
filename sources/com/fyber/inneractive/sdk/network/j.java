package com.fyber.inneractive.sdk.network;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    public int a;
    public String b;
    public InputStream c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, List<String>> f2111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<String> f2113f = new ArrayList();

    public void a() throws IOException {
        InputStream inputStream = this.c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Throwable unused) {
            }
        }
    }

    public void a(int i) {
        this.a = i;
    }

    public void a(InputStream inputStream) {
        this.c = inputStream;
    }

    public void a(String str) {
        this.f2112e = str;
    }

    public void a(Map<String, List<String>> map) {
        this.f2111d = map;
    }

    public InputStream b() {
        return this.c;
    }

    public String c() {
        return this.f2112e;
    }

    public Map<String, List<String>> d() {
        return this.f2111d;
    }

    public int e() {
        return this.a;
    }
}
