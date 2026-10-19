package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.json.mediationsdk.utils.c;
import com.json.o2;
import com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer;
import com.unity3d.ads.adplayer.AndroidWebViewContainer;
import com.unity3d.ads.adplayer.WebViewAdPlayer;
import com.unity3d.ads.core.data.model.CampaignState;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignStateRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import gateway.v1.AdResponseOuterClass;
import gateway.v1.AllowedPiiOuterClass;
import gateway.v1.TimestampsOuterClass;
import gateway.v1.r0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018J3\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J1\u0010$\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0096Bø\u0001\u0000¢\u0006\u0002\u0010*R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;", "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "getWebViewContainerUseCase", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "getWebViewBridge", "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "getHandleAndroidInvocationsUseCase", "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "campaignStateRepository", "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;", "executeAdViewerRequest", "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)V", "cleanup", "", "t", "", "opportunityId", "Lcom/google/protobuf/ByteString;", c.Y1, "Lgateway/v1/AdResponseOuterClass$AdResponse;", "adPlayer", "Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;", "(Ljava/lang/Throwable;Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "Lcom/unity3d/ads/core/data/model/LoadResult;", "context", "Landroid/content/Context;", o2.i, "", "(Lcom/google/protobuf/ByteString;Lgateway/v1/AdResponseOuterClass$AdResponse;Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class HandleGatewayAndroidAdResponse implements HandleGatewayAdResponse {
    private final AdRepository adRepository;
    private final CampaignStateRepository campaignStateRepository;
    private final CoroutineDispatcher defaultDispatcher;
    private final DeviceInfoRepository deviceInfoRepository;
    private final ExecuteAdViewerRequest executeAdViewerRequest;
    private final HandleAndroidInvocationsUseCase getHandleAndroidInvocationsUseCase;
    private final GetOperativeEventApi getOperativeEventApi;
    private final GetWebViewBridgeUseCase getWebViewBridge;
    private final AndroidGetWebViewContainerUseCase getWebViewContainerUseCase;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$cleanup$1, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse", f = "HandleGatewayAndroidAdResponse.kt", i = {0}, l = {181, 187}, m = "cleanup", n = {"adPlayer"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HandleGatewayAndroidAdResponse.this.cleanup(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse", f = "HandleGatewayAndroidAdResponse.kt", i = {0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5}, l = {89, 137, 138, 154, 160, 164}, m = "invoke", n = {"this", "opportunityId", c.Y1, o2.i, "adPlayer", "webViewUrl", "base64ImpressionConfiguration", "this", "opportunityId", c.Y1, "adPlayer", "adObject", "this", "opportunityId", c.Y1, "adPlayer", "adObject", "this", "opportunityId", c.Y1, "adPlayer", "loadFailure", "this", "opportunityId", c.Y1, "adPlayer", "adObject", "t"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$0"})
    static final class C16801 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C16801(Continuation<? super C16801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HandleGatewayAndroidAdResponse.this.invoke(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    /* synthetic */ class AnonymousClass2 extends r implements Function2<AllowedPiiOuterClass.AllowedPii, Continuation<? super v>, Object> {
        AnonymousClass2(Object obj) {
            super(2, obj, WebViewAdPlayer.class, "onAllowedPiiChange", "onAllowedPiiChange(Lgateway/v1/AllowedPiiOuterClass$AllowedPii;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AllowedPiiOuterClass.AllowedPii allowedPii, Continuation<? super v> continuation) {
            return ((WebViewAdPlayer) this.receiver).onAllowedPiiChange(allowedPii, continuation);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u008a@"}, d2 = {"<anonymous>", "", "<name for destructuring parameter 0>", "Lkotlin/Pair;", "Lcom/google/protobuf/ByteString;", ""}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$3", f = "HandleGatewayAndroidAdResponse.kt", i = {0, 0}, l = {113, 117}, m = "invokeSuspend", n = {"data", "dataVersion"}, s = {"L$0", "I$0"})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<Pair<? extends ByteString, ? extends Integer>, Continuation<? super v>, Object> {
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ String $placementId;
        int I$0;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ByteString byteString, String str, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$opportunityId = byteString;
            this.$placementId = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = HandleGatewayAndroidAdResponse.this.new AnonymousClass3(this.$opportunityId, this.$placementId, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Pair<? extends ByteString, ? extends Integer> pair, Continuation<? super v> continuation) {
            return invoke2((Pair<? extends ByteString, Integer>) pair, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Pair<? extends ByteString, Integer> pair, Continuation<? super v> continuation) {
            return ((AnonymousClass3) create(pair, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ByteString byteString;
            int i;
            CampaignState campaignState;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.throwOnFailure(obj);
                Pair pair = (Pair) this.L$0;
                ByteString byteString2 = (ByteString) pair.c();
                int iIntValue = ((Number) pair.d()).intValue();
                CampaignStateRepository campaignStateRepository = HandleGatewayAndroidAdResponse.this.campaignStateRepository;
                ByteString byteString3 = this.$opportunityId;
                this.L$0 = byteString2;
                this.I$0 = iIntValue;
                this.label = 1;
                Object state = campaignStateRepository.getState(byteString3, this);
                if (state == coroutine_suspended) {
                    return coroutine_suspended;
                }
                byteString = byteString2;
                i = iIntValue;
                obj = state;
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return v.a;
                }
                i = this.I$0;
                ByteString byteString4 = (ByteString) this.L$0;
                ResultKt.throwOnFailure(obj);
                byteString = byteString4;
            }
            CampaignState campaignState2 = (CampaignState) obj;
            if (campaignState2 == null || (campaignState = CampaignState.copy$default(campaignState2, byteString, i, null, null, null, 28, null)) == null) {
                String str = this.$placementId;
                r0.a aVar = r0.a;
                TimestampsOuterClass.Timestamps.a aVarNewBuilder = TimestampsOuterClass.Timestamps.newBuilder();
                Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
                r0 r0VarA = aVar.a(aVarNewBuilder);
                v vVar = v.a;
                TimestampsOuterClass.Timestamps timestampsA = r0VarA.a();
                TimestampsOuterClass.Timestamps.a aVarNewBuilder2 = TimestampsOuterClass.Timestamps.newBuilder();
                Intrinsics.checkNotNullExpressionValue(aVarNewBuilder2, "newBuilder()");
                campaignState = new CampaignState(byteString, i, str, timestampsA, aVar.a(aVarNewBuilder2).a());
            }
            CampaignStateRepository campaignStateRepository2 = HandleGatewayAndroidAdResponse.this.campaignStateRepository;
            ByteString byteString5 = this.$opportunityId;
            this.L$0 = null;
            this.label = 2;
            if (campaignStateRepository2.updateState(byteString5, campaignState, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$4", f = "HandleGatewayAndroidAdResponse.kt", i = {}, l = {133}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass4 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
        final /* synthetic */ String $webViewUrl;
        final /* synthetic */ AndroidWebViewContainer $webviewContainer;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(AndroidWebViewContainer androidWebViewContainer, String str, Continuation<? super AnonymousClass4> continuation) {
            super(1, continuation);
            this.$webviewContainer = androidWebViewContainer;
            this.$webViewUrl = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Continuation<?> continuation) {
            return new AnonymousClass4(this.$webviewContainer, this.$webViewUrl, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super v> continuation) {
            return ((AnonymousClass4) create(continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                AndroidWebViewContainer androidWebViewContainer = this.$webviewContainer;
                String str = this.$webViewUrl;
                this.label = 1;
                if (androidWebViewContainer.loadUrl(str, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$5, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$5", f = "HandleGatewayAndroidAdResponse.kt", i = {}, l = {155}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ l0<AndroidFullscreenWebViewAdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ Throwable $t;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(Throwable th, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, l0<AndroidFullscreenWebViewAdPlayer> l0Var, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$t = th;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = l0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return HandleGatewayAndroidAdResponse.this.new AnonymousClass5(this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HandleGatewayAndroidAdResponse handleGatewayAndroidAdResponse = HandleGatewayAndroidAdResponse.this;
                Throwable th = this.$t;
                ByteString byteString = this.$opportunityId;
                AdResponseOuterClass.AdResponse adResponse = this.$response;
                AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer = this.$adPlayer.a;
                this.label = 1;
                if (handleGatewayAndroidAdResponse.cleanup(th, byteString, adResponse, androidFullscreenWebViewAdPlayer, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$6, reason: invalid class name */
    /* JADX INFO: compiled from: HandleGatewayAndroidAdResponse.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$invoke$6", f = "HandleGatewayAndroidAdResponse.kt", i = {}, l = {165}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass6 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ l0<AndroidFullscreenWebViewAdPlayer> $adPlayer;
        final /* synthetic */ ByteString $opportunityId;
        final /* synthetic */ AdResponseOuterClass.AdResponse $response;
        final /* synthetic */ CancellationException $t;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(CancellationException cancellationException, ByteString byteString, AdResponseOuterClass.AdResponse adResponse, l0<AndroidFullscreenWebViewAdPlayer> l0Var, Continuation<? super AnonymousClass6> continuation) {
            super(2, continuation);
            this.$t = cancellationException;
            this.$opportunityId = byteString;
            this.$response = adResponse;
            this.$adPlayer = l0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return HandleGatewayAndroidAdResponse.this.new AnonymousClass6(this.$t, this.$opportunityId, this.$response, this.$adPlayer, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass6) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HandleGatewayAndroidAdResponse handleGatewayAndroidAdResponse = HandleGatewayAndroidAdResponse.this;
                CancellationException cancellationException = this.$t;
                ByteString byteString = this.$opportunityId;
                AdResponseOuterClass.AdResponse adResponse = this.$response;
                AndroidFullscreenWebViewAdPlayer androidFullscreenWebViewAdPlayer = this.$adPlayer.a;
                this.label = 1;
                if (handleGatewayAndroidAdResponse.cleanup(cancellationException, byteString, adResponse, androidFullscreenWebViewAdPlayer, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    public HandleGatewayAndroidAdResponse(AdRepository adRepository, AndroidGetWebViewContainerUseCase getWebViewContainerUseCase, GetWebViewBridgeUseCase getWebViewBridge, CoroutineDispatcher defaultDispatcher, DeviceInfoRepository deviceInfoRepository, HandleAndroidInvocationsUseCase getHandleAndroidInvocationsUseCase, SessionRepository sessionRepository, CampaignStateRepository campaignStateRepository, ExecuteAdViewerRequest executeAdViewerRequest, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(getWebViewContainerUseCase, "getWebViewContainerUseCase");
        Intrinsics.checkNotNullParameter(getWebViewBridge, "getWebViewBridge");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(getHandleAndroidInvocationsUseCase, "getHandleAndroidInvocationsUseCase");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(campaignStateRepository, "campaignStateRepository");
        Intrinsics.checkNotNullParameter(executeAdViewerRequest, "executeAdViewerRequest");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        this.adRepository = adRepository;
        this.getWebViewContainerUseCase = getWebViewContainerUseCase;
        this.getWebViewBridge = getWebViewBridge;
        this.defaultDispatcher = defaultDispatcher;
        this.deviceInfoRepository = deviceInfoRepository;
        this.getHandleAndroidInvocationsUseCase = getHandleAndroidInvocationsUseCase;
        this.sessionRepository = sessionRepository;
        this.campaignStateRepository = campaignStateRepository;
        this.executeAdViewerRequest = executeAdViewerRequest;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object cleanup(java.lang.Throwable r15, com.google.protobuf.ByteString r16, gateway.v1.AdResponseOuterClass.AdResponse r17, com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r18, kotlin.coroutines.Continuation<? super kotlin.v> r19) {
        /*
            r14 = this;
            r0 = r14
            r1 = r19
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass1
            if (r2 == 0) goto L16
            r2 = r1
            com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$cleanup$1 r2 = (com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.AnonymousClass1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.label = r3
            goto L1b
        L16:
            com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$cleanup$1 r2 = new com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse$cleanup$1
            r2.<init>(r1)
        L1b:
            java.lang.Object r1 = r2.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r3 = r2.label
            r13 = 2
            r4 = 1
            if (r3 == 0) goto L41
            if (r3 == r4) goto L38
            if (r3 != r13) goto L30
            kotlin.ResultKt.throwOnFailure(r1)
            goto La0
        L30:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L38:
            java.lang.Object r3 = r2.L$0
            com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer r3 = (com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer) r3
            kotlin.ResultKt.throwOnFailure(r1)
            r1 = r3
            goto L92
        L41:
            kotlin.ResultKt.throwOnFailure(r1)
            gateway.v1.d0$a r1 = gateway.v1.d0.a
            gateway.v1.OperativeEventRequestOuterClass$OperativeEventErrorData$a r3 = gateway.v1.OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder()
            java.lang.String r5 = "newBuilder()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)
            gateway.v1.d0 r1 = r1.a(r3)
            gateway.v1.OperativeEventRequestOuterClass$OperativeEventErrorType r3 = gateway.v1.OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED
            r1.b(r3)
            java.lang.String r3 = r15.getMessage()
            if (r3 != 0) goto L60
            java.lang.String r3 = ""
        L60:
            r1.c(r3)
            gateway.v1.OperativeEventRequestOuterClass$OperativeEventErrorData r1 = r1.a()
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r3 = r0.getOperativeEventApi
            gateway.v1.OperativeEventRequestOuterClass$OperativeEventType r5 = gateway.v1.OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_LOAD_ERROR
            com.google.protobuf.ByteString r6 = r17.getTrackingToken()
            java.lang.String r7 = "response.trackingToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            com.google.protobuf.ByteString r7 = r1.toByteString()
            java.lang.String r1 = "operativeEventErrorData.toByteString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            r8 = 0
            r10 = 16
            r11 = 0
            r1 = r18
            r2.L$0 = r1
            r2.label = r4
            r4 = r5
            r5 = r16
            r9 = r2
            java.lang.Object r3 = com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            if (r3 != r12) goto L92
            return r12
        L92:
            if (r1 == 0) goto La3
            r3 = 0
            r2.L$0 = r3
            r2.label = r13
            java.lang.Object r1 = r1.destroy(r2)
            if (r1 != r12) goto La0
            return r12
        La0:
            kotlin.v r1 = kotlin.v.a
            return r1
        La3:
            kotlin.v r1 = kotlin.v.a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.cleanup(java.lang.Throwable, com.google.protobuf.ByteString, gateway.v1.AdResponseOuterClass$AdResponse, com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00aa: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:28:0x00a8 */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x006e: MOVE (r25 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:20:0x006d */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x00a9: MOVE (r4 I:??[OBJECT, ARRAY]) = (r9 I:??[OBJECT, ARRAY]), block:B:28:0x00a8 */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0378 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0280 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x029a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02b0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v33 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v9, types: [kotlin.jvm.internal.l0] */
    /* JADX WARN: Type inference failed for: r15v0, types: [kotlin.jvm.internal.l0] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r6v18, types: [T, com.unity3d.ads.adplayer.AndroidFullscreenWebViewAdPlayer] */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v29 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v37 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6, types: [gateway.v1.AdResponseOuterClass$AdResponse] */
    @Override // com.unity3d.ads.core.domain.HandleGatewayAdResponse
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(com.google.protobuf.ByteString r27, gateway.v1.AdResponseOuterClass.AdResponse r28, android.content.Context r29, java.lang.String r30, kotlin.coroutines.Continuation<? super com.unity3d.ads.core.data.model.LoadResult> r31) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 910
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse.invoke(com.google.protobuf.ByteString, gateway.v1.AdResponseOuterClass$AdResponse, android.content.Context, java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }
}
