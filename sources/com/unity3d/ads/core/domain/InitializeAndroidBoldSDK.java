package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.gatewayclient.GatewayClient;
import gateway.v1.NativeConfigurationOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;

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
/* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\b\u0000\u0018\u0000 /2\u00020\u0001:\u0001/Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b¢\u0006\u0002\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u001eH\u0002J \u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020!0 2\n\u0010\"\u001a\u00060#j\u0002`$H\u0002J%\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'2\n\u0010\"\u001a\u00060#j\u0002`$H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0011\u0010)\u001a\u00020\u001eH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010*J\u0019\u0010+\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010,J\u0011\u0010-\u001a\u00020\u001eH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010*J\b\u0010.\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "getInitializeRequest", "Lcom/unity3d/ads/core/domain/GetInitializationRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "handleGatewayInitializationResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "eventObservers", "Lcom/unity3d/ads/core/domain/events/EventObservers;", "triggerInitializeListener", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "storageManager", "Lcom/unity3d/ads/core/data/manager/StorageManager;", "sdkPropertiesManager", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V", "checkCanInitialize", "", "getTags", "", "", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "initializationFailure", "startTime", "", "(JLjava/lang/Exception;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initializationStart", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initializationSuccess", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "setupDiagnosticEvents", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class InitializeAndroidBoldSDK implements InitializeBoldSDK {
    public static final Companion Companion = new Companion(null);
    public static final String MSG_GATEWAY_DENIED = "Gateway communication failure";
    public static final String MSG_NO_INTERNET = "No internet connection";
    private final CoroutineDispatcher defaultDispatcher;
    private final DeviceInfoRepository deviceInfoRepository;
    private final DiagnosticEventRepository diagnosticEventRepository;
    private final EventObservers eventObservers;
    private final GatewayClient gatewayClient;
    private final GetInitializationRequest getInitializeRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final HandleGatewayInitializationResponse handleGatewayInitializationResponse;
    private final SDKPropertiesManager sdkPropertiesManager;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final StorageManager storageManager;
    private final TriggerInitializeListener triggerInitializeListener;

    /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK$Companion;", "", "()V", "MSG_GATEWAY_DENIED", "", "MSG_NO_INTERNET", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationFailure$1, reason: invalid class name */
    /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK", f = "InitializeAndroidBoldSDK.kt", i = {0, 0}, l = {91}, m = "initializationFailure", n = {"this", "e"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InitializeAndroidBoldSDK.this.initializationFailure(0L, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK", f = "InitializeAndroidBoldSDK.kt", i = {0}, l = {74, 76}, m = "initializationStart", n = {"this"}, s = {"L$0"})
    static final class C16811 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C16811(Continuation<? super C16811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InitializeAndroidBoldSDK.this.initializationStart(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK", f = "InitializeAndroidBoldSDK.kt", i = {0}, l = {81}, m = "initializationSuccess", n = {"this"}, s = {"L$0"})
    static final class C16821 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C16821(Continuation<? super C16821> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InitializeAndroidBoldSDK.this.initializationSuccess(0L, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2", f = "InitializeAndroidBoldSDK.kt", i = {0}, l = {51, 60, 64}, m = "invokeSuspend", n = {"startTime"}, s = {"J$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        long J$0;
        int label;

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: InitializeAndroidBoldSDK.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1", f = "InitializeAndroidBoldSDK.kt", i = {}, l = {52, 54, 56, 57}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
            int label;
            final /* synthetic */ InitializeAndroidBoldSDK this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(InitializeAndroidBoldSDK initializeAndroidBoldSDK, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = initializeAndroidBoldSDK;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(v.a);
            }

            /* JADX WARN: Removed duplicated region for block: B:22:0x0070 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:25:0x008e A[RETURN] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                /*
                    r12 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                    int r1 = r12.label
                    r2 = 4
                    r3 = 3
                    r4 = 2
                    r5 = 1
                    if (r1 == 0) goto L2d
                    if (r1 == r5) goto L29
                    if (r1 == r4) goto L25
                    if (r1 == r3) goto L21
                    if (r1 != r2) goto L19
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L8f
                L19:
                    java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r13.<init>(r0)
                    throw r13
                L21:
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L71
                L25:
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L4f
                L29:
                    kotlin.ResultKt.throwOnFailure(r13)
                    goto L3b
                L2d:
                    kotlin.ResultKt.throwOnFailure(r13)
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r13 = r12.this$0
                    r12.label = r5
                    java.lang.Object r13 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$initializationStart(r13, r12)
                    if (r13 != r0) goto L3b
                    return r0
                L3b:
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r13 = r12.this$0
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$checkCanInitialize(r13)
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r13 = r12.this$0
                    com.unity3d.ads.core.domain.GetInitializationRequest r13 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$getGetInitializeRequest$p(r13)
                    r12.label = r4
                    java.lang.Object r13 = r13.invoke(r12)
                    if (r13 != r0) goto L4f
                    return r0
                L4f:
                    r6 = r13
                    gateway.v1.UniversalRequestOuterClass$UniversalRequest r6 = (gateway.v1.UniversalRequestOuterClass.UniversalRequest) r6
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r13 = r12.this$0
                    com.unity3d.ads.core.domain.GetRequestPolicy r13 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$getGetRequestPolicy$p(r13)
                    com.unity3d.ads.gatewayclient.RequestPolicy r7 = r13.invoke()
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r13 = r12.this$0
                    com.unity3d.ads.gatewayclient.GatewayClient r4 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$getGatewayClient$p(r13)
                    r5 = 0
                    com.unity3d.ads.core.data.model.OperationType r8 = com.unity3d.ads.core.data.model.OperationType.INITIALIZATION
                    r10 = 1
                    r11 = 0
                    r12.label = r3
                    r9 = r12
                    java.lang.Object r13 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r4, r5, r6, r7, r8, r9, r10, r11)
                    if (r13 != r0) goto L71
                    return r0
                L71:
                    gateway.v1.UniversalResponseOuterClass$UniversalResponse r13 = (gateway.v1.UniversalResponseOuterClass.UniversalResponse) r13
                    com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r1 = r12.this$0
                    com.unity3d.ads.core.domain.HandleGatewayInitializationResponse r1 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$getHandleGatewayInitializationResponse$p(r1)
                    gateway.v1.UniversalResponseOuterClass$UniversalResponse$Payload r13 = r13.getPayload()
                    gateway.v1.InitializationResponseOuterClass$InitializationResponse r13 = r13.getInitializationResponse()
                    java.lang.String r3 = "response.payload.initializationResponse"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r13, r3)
                    r12.label = r2
                    java.lang.Object r13 = r1.invoke(r13, r12)
                    if (r13 != r0) goto L8f
                    return r0
                L8f:
                    kotlin.v r13 = kotlin.v.a
                    return r13
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.AnonymousClass2.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return InitializeAndroidBoldSDK.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x0060 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r10.label
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L29
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r11)
                goto L51
            L15:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1d:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L61
            L21:
                long r4 = r10.J$0
                kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L27
                goto L46
            L27:
                r11 = move-exception
                goto L56
            L29:
                kotlin.ResultKt.throwOnFailure(r11)
                long r5 = java.lang.System.nanoTime()
                r7 = 10000(0x2710, double:4.9407E-320)
                com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1 r11 = new com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$invoke$2$1     // Catch: java.lang.Exception -> L54
                com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r1 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.this     // Catch: java.lang.Exception -> L54
                r9 = 0
                r11.<init>(r1, r9)     // Catch: java.lang.Exception -> L54
                r10.J$0 = r5     // Catch: java.lang.Exception -> L54
                r10.label = r4     // Catch: java.lang.Exception -> L54
                java.lang.Object r11 = kotlinx.coroutines.TimeoutKt.withTimeout(r7, r11, r10)     // Catch: java.lang.Exception -> L54
                if (r11 != r0) goto L45
                return r0
            L45:
                r4 = r5
            L46:
                com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r11 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.this
                r10.label = r2
                java.lang.Object r11 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$initializationSuccess(r11, r4, r10)
                if (r11 != r0) goto L51
                return r0
            L51:
                kotlin.v r11 = kotlin.v.a
                return r11
            L54:
                r11 = move-exception
                r4 = r5
            L56:
                com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r1 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.this
                r10.label = r3
                java.lang.Object r11 = com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.access$initializationFailure(r1, r4, r11, r10)
                if (r11 != r0) goto L61
                return r0
            L61:
                kotlin.v r11 = kotlin.v.a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public InitializeAndroidBoldSDK(CoroutineDispatcher defaultDispatcher, GetInitializationRequest getInitializeRequest, GetRequestPolicy getRequestPolicy, HandleGatewayInitializationResponse handleGatewayInitializationResponse, GatewayClient gatewayClient, SessionRepository sessionRepository, EventObservers eventObservers, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, DiagnosticEventRepository diagnosticEventRepository, DeviceInfoRepository deviceInfoRepository, StorageManager storageManager, SDKPropertiesManager sdkPropertiesManager) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(getInitializeRequest, "getInitializeRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(handleGatewayInitializationResponse, "handleGatewayInitializationResponse");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(eventObservers, "eventObservers");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(sdkPropertiesManager, "sdkPropertiesManager");
        this.defaultDispatcher = defaultDispatcher;
        this.getInitializeRequest = getInitializeRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.handleGatewayInitializationResponse = handleGatewayInitializationResponse;
        this.gatewayClient = gatewayClient;
        this.sessionRepository = sessionRepository;
        this.eventObservers = eventObservers;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.storageManager = storageManager;
        this.sdkPropertiesManager = sdkPropertiesManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCanInitialize() {
        if (!this.sessionRepository.getShouldInitialize()) {
            throw new IllegalStateException(MSG_GATEWAY_DENIED.toString());
        }
        if (!this.deviceInfoRepository.getHasInternet()) {
            throw new IllegalStateException(MSG_NO_INTERNET.toString());
        }
    }

    private final Map<String, String> getTags(Exception exc) {
        Map<String, String> mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("operation", OperationType.INITIALIZATION.toString()), TuplesKt.to("reason", "unknown"));
        if (exc instanceof TimeoutCancellationException) {
            mapMutableMapOf.put("reason", "timeout");
        } else if (exc instanceof UnityAdsNetworkException) {
            mapMutableMapOf.put("reason", "network");
        }
        String message = exc.getMessage();
        if (Intrinsics.areEqual(message, MSG_NO_INTERNET)) {
            mapMutableMapOf.put("reason", "network");
        } else if (Intrinsics.areEqual(message, MSG_GATEWAY_DENIED)) {
            mapMutableMapOf.put("reason", "gateway");
        }
        return mapMutableMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object initializationFailure(long r10, java.lang.Exception r12, kotlin.coroutines.Continuation<? super kotlin.v> r13) {
        /*
            r9 = this;
            boolean r0 = r13 instanceof com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r13
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationFailure$1 r0 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationFailure$1 r0 = new com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationFailure$1
            r0.<init>(r13)
        L18:
            r6 = r0
            java.lang.Object r13 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L3b
            if (r1 != r2) goto L33
            java.lang.Object r10 = r6.L$1
            r12 = r10
            java.lang.Exception r12 = (java.lang.Exception) r12
            java.lang.Object r10 = r6.L$0
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r10 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK) r10
            kotlin.ResultKt.throwOnFailure(r13)
            goto L78
        L33:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3b:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            r13.<init>()
            java.lang.String r1 = "Unity Ads Initialization Failure: "
            r13.append(r1)
            java.lang.String r1 = r12.getMessage()
            r13.append(r1)
            java.lang.String r13 = r13.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r13)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r1 = r9.sendDiagnosticEvent
            long r10 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r10)
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r10)
            java.util.Map r4 = r9.getTags(r12)
            r5 = 0
            r7 = 8
            r8 = 0
            r6.L$0 = r9
            r6.L$1 = r12
            r6.label = r2
            java.lang.String r2 = "native_initialize_task_failure_time"
            java.lang.Object r10 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r10 != r0) goto L77
            return r0
        L77:
            r10 = r9
        L78:
            com.unity3d.ads.core.domain.TriggerInitializeListener r11 = r10.triggerInitializeListener
            com.unity3d.ads.UnityAds$UnityAdsInitializationError r13 = com.unity3d.ads.UnityAds.UnityAdsInitializationError.INTERNAL_ERROR
            java.lang.String r12 = r12.getMessage()
            java.lang.String r12 = com.unity3d.services.core.extensions.StringExtensionsKt.toUnityMessage(r12)
            r11.error(r13, r12)
            com.unity3d.ads.core.data.repository.SessionRepository r11 = r10.sessionRepository
            com.unity3d.ads.core.data.model.InitializationState r12 = com.unity3d.ads.core.data.model.InitializationState.INITIALIZED_FAILED
            r11.setInitializationState(r12)
            com.unity3d.ads.core.data.manager.SDKPropertiesManager r10 = r10.sdkPropertiesManager
            r11 = 0
            r10.setInitialized(r11)
            kotlin.v r10 = kotlin.v.a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.initializationFailure(long, java.lang.Exception, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object initializationStart(kotlin.coroutines.Continuation<? super kotlin.v> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.C16811
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationStart$1 r0 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.C16811) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationStart$1 r0 = new com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationStart$1
            r0.<init>(r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r10 = 2
            r2 = 1
            if (r1 == 0) goto L3c
            if (r1 == r2) goto L34
            if (r1 != r10) goto L2c
            kotlin.ResultKt.throwOnFailure(r12)
            goto L70
        L2c:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L34:
            java.lang.Object r1 = r0.L$0
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r1 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK) r1
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5b
        L3c:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.String r12 = "Unity Ads Initialization Start"
            com.unity3d.services.core.log.DeviceLog.debug(r12)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r1 = r11.sendDiagnosticEvent
            r3 = 0
            r4 = 0
            r5 = 0
            r7 = 14
            r8 = 0
            r0.L$0 = r11
            r0.label = r2
            java.lang.String r2 = "native_initialization_started"
            r6 = r0
            java.lang.Object r12 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r12 != r9) goto L5a
            return r9
        L5a:
            r1 = r11
        L5b:
            com.unity3d.ads.core.data.repository.SessionRepository r12 = r1.sessionRepository
            com.unity3d.ads.core.data.model.InitializationState r2 = com.unity3d.ads.core.data.model.InitializationState.INITIALIZING
            r12.setInitializationState(r2)
            com.unity3d.ads.core.domain.events.EventObservers r12 = r1.eventObservers
            r1 = 0
            r0.L$0 = r1
            r0.label = r10
            java.lang.Object r12 = r12.invoke(r0)
            if (r12 != r9) goto L70
            return r9
        L70:
            kotlin.v r12 = kotlin.v.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.initializationStart(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object initializationSuccess(long r11, kotlin.coroutines.Continuation<? super kotlin.v> r13) {
        /*
            r10 = this;
            boolean r0 = r13 instanceof com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.C16821
            if (r0 == 0) goto L13
            r0 = r13
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationSuccess$1 r0 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.C16821) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationSuccess$1 r0 = new com.unity3d.ads.core.domain.InitializeAndroidBoldSDK$initializationSuccess$1
            r0.<init>(r13)
        L18:
            r6 = r0
            java.lang.Object r13 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r9 = 1
            if (r1 == 0) goto L36
            if (r1 != r9) goto L2e
            java.lang.Object r11 = r6.L$0
            com.unity3d.ads.core.domain.InitializeAndroidBoldSDK r11 = (com.unity3d.ads.core.domain.InitializeAndroidBoldSDK) r11
            kotlin.ResultKt.throwOnFailure(r13)
            goto L5b
        L2e:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L36:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.String r13 = "Unity Ads Initialization Success"
            com.unity3d.services.core.log.DeviceLog.debug(r13)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r1 = r10.sendDiagnosticEvent
            long r11 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r11)
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r11)
            r4 = 0
            r5 = 0
            r7 = 12
            r8 = 0
            r6.L$0 = r10
            r6.label = r9
            java.lang.String r2 = "native_initialize_task_success_time"
            java.lang.Object r11 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r11 != r0) goto L5a
            return r0
        L5a:
            r11 = r10
        L5b:
            com.unity3d.ads.core.data.manager.StorageManager r12 = r11.storageManager
            r12.hasInitialized()
            com.unity3d.ads.core.domain.TriggerInitializeListener r12 = r11.triggerInitializeListener
            r12.success()
            com.unity3d.ads.core.data.repository.SessionRepository r12 = r11.sessionRepository
            com.unity3d.ads.core.data.model.InitializationState r13 = com.unity3d.ads.core.data.model.InitializationState.INITIALIZED_SUCCESSFULLY
            r12.setInitializationState(r13)
            com.unity3d.ads.core.data.manager.SDKPropertiesManager r12 = r11.sdkPropertiesManager
            r12.setInitialized(r9)
            r11.setupDiagnosticEvents()
            kotlin.v r11 = kotlin.v.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.InitializeAndroidBoldSDK.initializationSuccess(long, kotlin.coroutines.d):java.lang.Object");
    }

    private final void setupDiagnosticEvents() {
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration config = this.sessionRepository.getNativeConfiguration().getDiagnosticEvents();
        DiagnosticEventRepository diagnosticEventRepository = this.diagnosticEventRepository;
        Intrinsics.checkNotNullExpressionValue(config, "config");
        diagnosticEventRepository.configure(config);
    }

    @Override // com.unity3d.ads.core.domain.InitializeBoldSDK
    public Object invoke(Continuation<? super v> continuation) {
        Object objWithContext = BuildersKt.withContext(this.defaultDispatcher, new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : v.a;
    }
}
