package com.tapjoy.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class t6 extends c4 {
    public static final Map b = Collections.unmodifiableMap(new HashMap());
    public final q3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final q3 f8007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final q3 f8008e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final q3 f8009f;

    public t6() {
        a();
        this.c = a();
        q3 q3VarA = a();
        this.f8007d = q3VarA;
        q3VarA.a = new ConcurrentHashMap();
        this.f8008e = a();
        this.f8009f = a();
        a().a = b();
    }

    public static HashMap b() {
        HashMap map = new HashMap();
        map.put("placement_request_content_retry_timeout", -1);
        map.put("placement_request_content_retry_backoff", Arrays.asList(0L, 500L, 10000L, Double.valueOf(2.0d)));
        return map;
    }
}
