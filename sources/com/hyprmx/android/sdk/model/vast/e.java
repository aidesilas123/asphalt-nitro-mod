package com.hyprmx.android.sdk.model.vast;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public final long a;
    public final long b;
    public final List<g> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<h> f4573d;

    public /* synthetic */ e() {
        this(0L, 0L, new f(), new ArrayList(), new ArrayList());
    }

    public e(long j, long j2, f mediaFile, List<g> trackings, List<h> videoClicks) {
        Intrinsics.checkNotNullParameter(mediaFile, "mediaFile");
        Intrinsics.checkNotNullParameter(trackings, "trackings");
        Intrinsics.checkNotNullParameter(videoClicks, "videoClicks");
        this.a = j;
        this.b = j2;
        this.c = trackings;
        this.f4573d = videoClicks;
    }
}
