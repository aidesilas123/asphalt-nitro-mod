package com.unity3d.ads.core.domain;

import gateway.v1.PrivacyUpdateRequestOuterClass;
import gateway.v1.UniversalRequestKt;
import gateway.v1.UniversalRequestOuterClass;
import gateway.v1.t0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetPrivacyUpdateRequest.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001b\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bH\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;", "", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;)V", "invoke", "Lgateway/v1/UniversalRequestOuterClass$UniversalRequest;", "privacyUpdateRequest", "Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;", "(Lgateway/v1/PrivacyUpdateRequestOuterClass$PrivacyUpdateRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class GetPrivacyUpdateRequest {
    private final GetUniversalRequestForPayLoad getUniversalRequestForPayLoad;

    public GetPrivacyUpdateRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad) {
        Intrinsics.checkNotNullParameter(getUniversalRequestForPayLoad, "getUniversalRequestForPayLoad");
        this.getUniversalRequestForPayLoad = getUniversalRequestForPayLoad;
    }

    public static /* synthetic */ Object invoke$default(GetPrivacyUpdateRequest getPrivacyUpdateRequest, PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            privacyUpdateRequest = PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.getDefaultInstance();
            Intrinsics.checkNotNullExpressionValue(privacyUpdateRequest, "getDefaultInstance()");
        }
        return getPrivacyUpdateRequest.invoke(privacyUpdateRequest, continuation);
    }

    public final Object invoke(PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest, Continuation<? super UniversalRequestOuterClass.UniversalRequest> continuation) {
        UniversalRequestKt universalRequestKt = UniversalRequestKt.a;
        t0.a aVar = t0.a;
        UniversalRequestOuterClass.UniversalRequest.Payload.a aVarNewBuilder = UniversalRequestOuterClass.UniversalRequest.Payload.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        t0 t0VarA = aVar.a(aVarNewBuilder);
        t0VarA.h(privacyUpdateRequest);
        return this.getUniversalRequestForPayLoad.invoke(t0VarA.a(), continuation);
    }
}
