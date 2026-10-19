package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.MediationRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import gateway.v1.ClientInfoOuterClass;
import gateway.v1.k;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GetAndroidClientInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/GetAndroidClientInfo;", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "mediationRepository", "Lcom/unity3d/ads/core/data/repository/MediationRepository;", "(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)V", "invoke", "Lgateway/v1/ClientInfoOuterClass$ClientInfo;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class GetAndroidClientInfo implements GetClientInfo {
    private final MediationRepository mediationRepository;
    private final SessionRepository sessionRepository;

    public GetAndroidClientInfo(SessionRepository sessionRepository, MediationRepository mediationRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(mediationRepository, "mediationRepository");
        this.sessionRepository = sessionRepository;
        this.mediationRepository = mediationRepository;
    }

    @Override // com.unity3d.ads.core.domain.GetClientInfo
    public Object invoke(Continuation<? super ClientInfoOuterClass.ClientInfo> continuation) {
        k.a aVar = k.a;
        ClientInfoOuterClass.ClientInfo.a aVarNewBuilder = ClientInfoOuterClass.ClientInfo.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        k kVarA = aVar.a(aVarNewBuilder);
        kVarA.h(4920);
        kVarA.i("4.9.2");
        kVarA.d(this.sessionRepository.getGameId());
        kVarA.j(this.sessionRepository.isTestModeEnabled());
        kVarA.g(ClientInfoOuterClass.Platform.PLATFORM_ANDROID);
        kVarA.e(this.mediationRepository.getMediationProvider().invoke());
        String name = this.mediationRepository.getName();
        if (name != null && kVarA.b() == ClientInfoOuterClass.MediationProvider.MEDIATION_PROVIDER_CUSTOM) {
            kVarA.c(name);
        }
        String version = this.mediationRepository.getVersion();
        if (version != null) {
            kVarA.f(version);
        }
        return kVarA.a();
    }
}
