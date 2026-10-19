package com.json.mediationsdk.metadata;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class a {
    public static final String a = "do_not_sell";
    public static final String b = "is_child_directed";
    public static final String c = "is_deviceid_optout";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f6346d = "google_family_self_certified_sdks";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f6347e = "iiqf";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f6348f = "is_test_suite";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f6349g = "true";
    static final Set<String> h;
    public static final String i = "enable";
    static final Set<String> j;
    static final Set<String> k;
    public static final int m = 2048;

    static {
        HashSet hashSet = new HashSet(Arrays.asList(b, c, f6348f, f6346d, f6347e));
        h = hashSet;
        j = new HashSet(Arrays.asList(c, f6346d, f6348f, f6347e));
        HashSet hashSet2 = new HashSet(hashSet);
        k = hashSet2;
        hashSet2.add(a);
    }
}
