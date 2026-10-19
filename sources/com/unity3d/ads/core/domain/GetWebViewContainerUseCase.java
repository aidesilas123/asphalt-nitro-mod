package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.WebViewContainer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: GetWebViewContainerUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u0003H¦Bø\u0001\u0000¢\u0006\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/core/domain/GetWebViewContainerUseCase;", "", "invoke", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public interface GetWebViewContainerUseCase {
    Object invoke(Continuation<? super WebViewContainer> continuation);
}
