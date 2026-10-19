package com.moat.analytics.mobile.glft;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MoatAdEvent {
    Integer b;
    Double c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    MoatAdEventType f7636d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Long f7637f;
    static final Integer a = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Double f7635e = Double.valueOf(Double.NaN);
    public static final Double VOLUME_MUTED = Double.valueOf(0.0d);
    public static final Double VOLUME_UNMUTED = Double.valueOf(1.0d);

    public MoatAdEvent(MoatAdEventType moatAdEventType) {
        this(moatAdEventType, a, f7635e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num) {
        this(moatAdEventType, num, f7635e);
    }

    public MoatAdEvent(MoatAdEventType moatAdEventType, Integer num, Double d2) {
        this.f7637f = Long.valueOf(System.currentTimeMillis());
        this.f7636d = moatAdEventType;
        this.c = d2;
        this.b = num;
    }

    Map<String, Object> a() {
        HashMap map = new HashMap();
        map.put("adVolume", this.c);
        map.put("playhead", this.b);
        map.put("aTimeStamp", this.f7637f);
        map.put("type", this.f7636d.toString());
        return map;
    }
}
