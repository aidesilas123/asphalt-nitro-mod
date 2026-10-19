package com.tapjoy;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class h0 {
    public int a;
    public int b;
    public Map<String, List<String>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f7843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f7844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f7845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f7846g;

    public String a(String str) {
        List<String> list;
        Map<String, List<String>> map = this.c;
        return (map == null || (list = map.get(str)) == null || list.get(0) == null) ? "" : list.get(0);
    }
}
