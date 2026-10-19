package com.unity3d.ads.core.domain;

import android.os.SystemClock;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.services.core.properties.SdkProperties;
import gateway.v1.TimestampsOuterClass;
import gateway.v1.r0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetAndroidSharedDataTimestamps.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0011\u0010\u0003\u001a\u00020\u0004H\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "()V", "invoke", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class GetAndroidSharedDataTimestamps implements GetSharedDataTimestamps {
    @Override // com.unity3d.ads.core.domain.GetSharedDataTimestamps
    public Object invoke(Continuation<? super TimestampsOuterClass.Timestamps> continuation) {
        r0.a aVar = r0.a;
        TimestampsOuterClass.Timestamps.a aVarNewBuilder = TimestampsOuterClass.Timestamps.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        r0 r0VarA = aVar.a(aVarNewBuilder);
        r0VarA.c(TimestampExtensionsKt.fromMillis(System.currentTimeMillis()));
        r0VarA.b(SystemClock.elapsedRealtime() - SdkProperties.getInitializationTime());
        return r0VarA.a();
    }
}
