package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.response.e;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public class d<T extends com.fyber.inneractive.sdk.response.e> extends com.fyber.inneractive.sdk.metrics.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f2000e = String.valueOf(24);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f2001f = String.valueOf(1);
    public final T b;
    public final InneractiveAdRequest c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JSONArray f2002d;

    public d(T t, InneractiveAdRequest inneractiveAdRequest, String str, JSONArray jSONArray) {
        super(str);
        this.b = t;
        this.c = inneractiveAdRequest;
        this.f2002d = jSONArray;
    }
}
