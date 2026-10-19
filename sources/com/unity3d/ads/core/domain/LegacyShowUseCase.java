package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.json.d1;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.model.ShowStatus;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.TimestampExtensionsKt;
import com.unity3d.ads.core.extensions.UnityAdsShowErrorMapperExtensionKt;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.d0;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONObject;

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
/* JADX INFO: compiled from: LegacyShowUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000 ?2\u00020\u0001:\u0001?B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u001c\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0\u001f2\u0006\u0010 \u001a\u00020!H\u0002J5\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010&\u001a\u0004\u0018\u00010'H\u0086Bø\u0001\u0000¢\u0006\u0002\u0010(J)\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010/J+\u00100\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010'H\u0082@ø\u0001\u0000¢\u0006\u0002\u00101J3\u00102\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001b2\u0006\u00103\u001a\u0002042\b\u0010&\u001a\u0004\u0018\u00010'H\u0082@ø\u0001\u0000¢\u0006\u0002\u00105J=\u00106\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!2\b\b\u0002\u00107\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010'H\u0082@ø\u0001\u0000¢\u0006\u0002\u00108J\u0011\u00109\u001a\u00020\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010:J+\u0010;\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010'H\u0082@ø\u0001\u0000¢\u0006\u0002\u00101J;\u0010<\u001a\u00020\u00162\u0006\u0010-\u001a\u00020.2\u0006\u0010=\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u001b2\b\u0010&\u001a\u0004\u0018\u00010'H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010>R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006@"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", d1.u, "Lcom/unity3d/ads/core/domain/Show;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "hasStarted", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "isShowing", "Ljava/util/concurrent/atomic/AtomicBoolean;", "timeoutCancellationRequested", "cancelTimeout", "", "startTime", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getOpportunityId", "", "unityAdsShowOptions", "Lcom/unity3d/ads/UnityAdsShowOptions;", "getTags", "", "reason", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "invoke", "context", "Landroid/content/Context;", "placement", "unityShowListener", "Lcom/unity3d/ads/IUnityAdsShowListener;", "(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOperativeError", "operativeEvent", "Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;", "operativeMessage", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "(Lgateway/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showClicked", "(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showCompleted", "status", "Lcom/unity3d/ads/core/data/model/ShowStatus;", "(JLjava/lang/String;Lcom/unity3d/ads/core/data/model/ShowStatus;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showError", "message", "(JLcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showStart", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showStarted", "showTimeout", "useTimeout", "(Lcom/unity3d/ads/core/data/model/AdObject;ZJLjava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class LegacyShowUseCase {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_OBJECT_ID = "objectId";
    public static final String MESSAGE_ALREADY_SHOWING = "Can't show a new ad unit when ad unit is already open";
    public static final String MESSAGE_NO_AD_OBJECT = "No ad object found for opportunity id: ";
    public static final String MESSAGE_OPPORTUNITY_ID = "No valid opportunity id provided";
    public static final String MESSAGE_OPT_TIMEOUT = "timeout";
    public static final String MESSAGE_TIMEOUT = "[UnityAds] Timeout while trying to show ";
    public static final String MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING = "[UnityAds] Object ID and Placement ID provided does not match previously loaded ad";
    private final AdRepository adRepository;
    private final CoroutineDispatcher dispatcher;
    private final GetOperativeEventApi getOperativeEventApi;
    private final MutableStateFlow<Boolean> hasStarted;
    private final AtomicBoolean isShowing;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final Show show;
    private final MutableStateFlow<Boolean> timeoutCancellationRequested;

    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase$Companion;", "", "()V", "KEY_OBJECT_ID", "", "MESSAGE_ALREADY_SHOWING", "MESSAGE_NO_AD_OBJECT", "MESSAGE_OPPORTUNITY_ID", "MESSAGE_OPT_TIMEOUT", "MESSAGE_TIMEOUT", "MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0, 0, 0, 0, 3, 3, 3, 3, 3, 3, 6}, l = {52, 55, 61, 66, 68, 73, 89}, m = "invoke", n = {"this", "context", "placement", "unityAdsShowOptions", "unityShowListener", "startTime", "this", "context", "placement", "unityShowListener", "opportunityId", "startTime", "this"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.invoke(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2", f = "LegacyShowUseCase.kt", i = {}, l = {83, 84}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ String $placement;
        final /* synthetic */ long $startTime;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        final /* synthetic */ boolean $useTimeout;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(AdObject adObject, boolean z, long j, String str, IUnityAdsShowListener iUnityAdsShowListener, Continuation<? super AnonymousClass2> continuation) {
            super(1, continuation);
            this.$adObject = adObject;
            this.$useTimeout = z;
            this.$startTime = j;
            this.$placement = str;
            this.$unityShowListener = iUnityAdsShowListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Continuation<?> continuation) {
            return LegacyShowUseCase.this.new AnonymousClass2(this.$adObject, this.$useTimeout, this.$startTime, this.$placement, this.$unityShowListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (((Boolean) LegacyShowUseCase.this.hasStarted.getValue()).booleanValue() || ((Boolean) LegacyShowUseCase.this.timeoutCancellationRequested.getValue()).booleanValue()) {
                    return v.a;
                }
                LegacyShowUseCase legacyShowUseCase = LegacyShowUseCase.this;
                OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType = OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT;
                AdObject adObject = this.$adObject;
                this.label = 1;
                if (legacyShowUseCase.sendOperativeError(operativeEventErrorType, "timeout", adObject, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return v.a;
                }
                ResultKt.throwOnFailure(obj);
            }
            LegacyShowUseCase legacyShowUseCase2 = LegacyShowUseCase.this;
            AdObject adObject2 = this.$adObject;
            boolean z = this.$useTimeout;
            long j = this.$startTime;
            String str = this.$placement;
            IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
            this.label = 2;
            if (legacyShowUseCase2.showTimeout(adObject2, z, j, str, iUnityAdsShowListener, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "it", ""}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3", f = "LegacyShowUseCase.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super v>, Object> {
        final /* synthetic */ String $placement;
        final /* synthetic */ long $startTime;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(long j, String str, IUnityAdsShowListener iUnityAdsShowListener, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$startTime = j;
            this.$placement = str;
            this.$unityShowListener = iUnityAdsShowListener;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Throwable th, Continuation<? super v> continuation) {
            AnonymousClass3 anonymousClass3 = LegacyShowUseCase.this.new AnonymousClass3(this.$startTime, this.$placement, this.$unityShowListener, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                LegacyShowUseCase legacyShowUseCase = LegacyShowUseCase.this;
                long j = this.$startTime;
                UnityAds.UnityAdsShowError unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                String str = this.$placement;
                IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
                this.label = 1;
                if (legacyShowUseCase.showError(j, unityAdsShowError, message, str, iUnityAdsShowListener, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "emit", "(Lcom/unity3d/ads/core/data/model/ShowEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, mv = {1, 8, 0}, xi = 48)
    static final class AnonymousClass4<T> implements FlowCollector {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ String $placement;
        final /* synthetic */ long $startTime;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;

        AnonymousClass4(long j, String str, IUnityAdsShowListener iUnityAdsShowListener, AdObject adObject) {
            this.$startTime = j;
            this.$placement = str;
            this.$unityShowListener = iUnityAdsShowListener;
            this.$adObject = adObject;
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x00e5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(com.unity3d.ads.core.data.model.ShowEvent r10, kotlin.coroutines.Continuation<? super kotlin.v> r11) {
            /*
                Method dump skipped, instruction units count: 276
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.AnonymousClass4.emit(com.unity3d.ads.core.data.model.ShowEvent, kotlin.coroutines.d):java.lang.Object");
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((ShowEvent) obj, (Continuation<? super v>) continuation);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0}, l = {146, 147}, m = "showClicked", n = {"this", "placement", "unityShowListener"}, s = {"L$0", "L$1", "L$2"})
    static final class C16871 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16871(Continuation<? super C16871> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showClicked(0L, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C16882 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $placement;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16882(IUnityAdsShowListener iUnityAdsShowListener, String str, Continuation<? super C16882> continuation) {
            super(2, continuation);
            this.$unityShowListener = iUnityAdsShowListener;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16882(this.$unityShowListener, this.$placement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16882) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
            if (iUnityAdsShowListener == null) {
                return null;
            }
            iUnityAdsShowListener.onUnityAdsShowClick(this.$placement);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0, 0}, l = {170, 171}, m = "showCompleted", n = {"this", "placement", "status", "unityShowListener"}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C16891 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C16891(Continuation<? super C16891> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showCompleted(0L, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C16902 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $placement;
        final /* synthetic */ ShowStatus $status;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16902(IUnityAdsShowListener iUnityAdsShowListener, String str, ShowStatus showStatus, Continuation<? super C16902> continuation) {
            super(2, continuation);
            this.$unityShowListener = iUnityAdsShowListener;
            this.$placement = str;
            this.$status = showStatus;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16902(this.$unityShowListener, this.$placement, this.$status, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16902) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
            if (iUnityAdsShowListener == null) {
                return null;
            }
            iUnityAdsShowListener.onUnityAdsShowComplete(this.$placement, this.$status.toUnityAdsShowCompletionState());
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0, 0, 0, 1}, l = {184, 185}, m = "showError", n = {"this", "reason", "message", "placement", "unityShowListener", "this"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0"})
    static final class C16911 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C16911(Continuation<? super C16911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showError(0L, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C16922 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $message;
        final /* synthetic */ String $placement;
        final /* synthetic */ UnityAds.UnityAdsShowError $reason;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16922(IUnityAdsShowListener iUnityAdsShowListener, String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2, Continuation<? super C16922> continuation) {
            super(2, continuation);
            this.$unityShowListener = iUnityAdsShowListener;
            this.$placement = str;
            this.$reason = unityAdsShowError;
            this.$message = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16922(this.$unityShowListener, this.$placement, this.$reason, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16922) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
            if (iUnityAdsShowListener == null) {
                return null;
            }
            iUnityAdsShowListener.onUnityAdsShowFailure(this.$placement, this.$reason, this.$message);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0}, l = {138, 139}, m = "showStarted", n = {"this", "placement", "unityShowListener"}, s = {"L$0", "L$1", "L$2"})
    static final class C16931 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16931(Continuation<? super C16931> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showStarted(0L, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C16942 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $placement;
        final /* synthetic */ IUnityAdsShowListener $unityShowListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16942(IUnityAdsShowListener iUnityAdsShowListener, String str, Continuation<? super C16942> continuation) {
            super(2, continuation);
            this.$unityShowListener = iUnityAdsShowListener;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16942(this.$unityShowListener, this.$placement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16942) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsShowListener iUnityAdsShowListener = this.$unityShowListener;
            if (iUnityAdsShowListener == null) {
                return null;
            }
            iUnityAdsShowListener.onUnityAdsShowStart(this.$placement);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showTimeout$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0, 0}, l = {125, 126}, m = "showTimeout", n = {"this", "placement", "unityShowListener", "startTime"}, s = {"L$0", "L$1", "L$2", "J$0"})
    static final class C16951 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16951(Continuation<? super C16951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showTimeout(null, false, 0L, null, null, this);
        }
    }

    public LegacyShowUseCase(CoroutineDispatcher dispatcher, Show show, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(show, "show");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.dispatcher = dispatcher;
        this.show = show;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.sessionRepository = sessionRepository;
        this.isShowing = new AtomicBoolean(false);
        Boolean bool = Boolean.FALSE;
        this.hasStarted = StateFlowKt.MutableStateFlow(bool);
        this.timeoutCancellationRequested = StateFlowKt.MutableStateFlow(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object cancelTimeout(long j, Continuation<? super v> continuation) {
        this.timeoutCancellationRequested.setValue(Boxing.boxBoolean(true));
        Object objInvoke$default = SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_cancel_timeout", Boxing.boxLong(TimestampExtensionsKt.duration(j)), null, null, continuation, 12, null);
        return objInvoke$default == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke$default : v.a;
    }

    private final String getOpportunityId(UnityAdsShowOptions unityAdsShowOptions) {
        Object objOpt;
        JSONObject data = unityAdsShowOptions.getData();
        try {
            return UUID.fromString((data == null || (objOpt = data.opt("objectId")) == null) ? null : objOpt.toString()).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    private final Map<String, String> getTags(UnityAds.UnityAdsShowError unityAdsShowError) {
        return MapsKt__MapsKt.mapOf(TuplesKt.to("operation", OperationType.SHOW.toString()), TuplesKt.to("reason", UnityAdsShowErrorMapperExtensionKt.toDiagnosticReason(unityAdsShowError)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType, String str, AdObject adObject, Continuation<? super v> continuation) {
        d0.a aVar = d0.a;
        OperativeEventRequestOuterClass.OperativeEventErrorData.a aVarNewBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        d0 d0VarA = aVar.a(aVarNewBuilder);
        d0VarA.b(operativeEventErrorType);
        d0VarA.c(str);
        OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorDataA = d0VarA.a();
        GetOperativeEventApi getOperativeEventApi = this.getOperativeEventApi;
        OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        ByteString byteString = operativeEventErrorDataA.toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "errorData.toByteString()");
        Object objInvoke = getOperativeEventApi.invoke(operativeEventType, adObject, byteString, continuation);
        return objInvoke == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object showClicked(long r15, java.lang.String r17, com.unity3d.ads.IUnityAdsShowListener r18, kotlin.coroutines.Continuation<? super kotlin.v> r19) {
        /*
            r14 = this;
            r0 = r14
            r1 = r17
            r2 = r19
            boolean r3 = r2 instanceof com.unity3d.ads.core.domain.LegacyShowUseCase.C16871
            if (r3 == 0) goto L18
            r3 = r2
            com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$1 r3 = (com.unity3d.ads.core.domain.LegacyShowUseCase.C16871) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L18
            int r4 = r4 - r5
            r3.label = r4
            goto L1d
        L18:
            com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$1 r3 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$1
            r3.<init>(r2)
        L1d:
            java.lang.Object r2 = r3.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r4 = r3.label
            r13 = 2
            r5 = 1
            if (r4 == 0) goto L4b
            if (r4 == r5) goto L39
            if (r4 != r13) goto L31
            kotlin.ResultKt.throwOnFailure(r2)
            goto L9d
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            java.lang.Object r1 = r3.L$2
            com.unity3d.ads.IUnityAdsShowListener r1 = (com.unity3d.ads.IUnityAdsShowListener) r1
            java.lang.Object r4 = r3.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r3.L$0
            com.unity3d.ads.core.domain.LegacyShowUseCase r5 = (com.unity3d.ads.core.domain.LegacyShowUseCase) r5
            kotlin.ResultKt.throwOnFailure(r2)
            r2 = r1
            r1 = r4
            goto L86
        L4b:
            kotlin.ResultKt.throwOnFailure(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Unity Ads Show Clicked for placement "
            r2.append(r4)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r2)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = r0.sendDiagnosticEvent
            long r6 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r15)
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            r7 = 0
            r8 = 0
            r10 = 12
            r11 = 0
            r3.L$0 = r0
            r3.L$1 = r1
            r2 = r18
            r3.L$2 = r2
            r3.label = r5
            java.lang.String r5 = "native_show_clicked"
            r9 = r3
            java.lang.Object r4 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r4 != r12) goto L85
            return r12
        L85:
            r5 = r0
        L86:
            kotlinx.coroutines.r r4 = r5.dispatcher
            com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2 r5 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2
            r6 = 0
            r5.<init>(r2, r1, r6)
            r3.L$0 = r6
            r3.L$1 = r6
            r3.L$2 = r6
            r3.label = r13
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r3)
            if (r2 != r12) goto L9d
            return r12
        L9d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.showClicked(long, java.lang.String, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object showCompleted(long r16, java.lang.String r18, com.unity3d.ads.core.data.model.ShowStatus r19, com.unity3d.ads.IUnityAdsShowListener r20, kotlin.coroutines.Continuation<? super kotlin.v> r21) {
        /*
            r15 = this;
            r0 = r15
            r1 = r18
            r2 = r21
            boolean r3 = r2 instanceof com.unity3d.ads.core.domain.LegacyShowUseCase.C16891
            if (r3 == 0) goto L18
            r3 = r2
            com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$1 r3 = (com.unity3d.ads.core.domain.LegacyShowUseCase.C16891) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L18
            int r4 = r4 - r5
            r3.label = r4
            goto L1d
        L18:
            com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$1 r3 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$1
            r3.<init>(r2)
        L1d:
            java.lang.Object r2 = r3.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r4 = r3.label
            r13 = 2
            r5 = 1
            if (r4 == 0) goto L51
            if (r4 == r5) goto L3a
            if (r4 != r13) goto L32
            kotlin.ResultKt.throwOnFailure(r2)
            goto La9
        L32:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3a:
            java.lang.Object r1 = r3.L$3
            com.unity3d.ads.IUnityAdsShowListener r1 = (com.unity3d.ads.IUnityAdsShowListener) r1
            java.lang.Object r4 = r3.L$2
            com.unity3d.ads.core.data.model.ShowStatus r4 = (com.unity3d.ads.core.data.model.ShowStatus) r4
            java.lang.Object r5 = r3.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r6 = r3.L$0
            com.unity3d.ads.core.domain.LegacyShowUseCase r6 = (com.unity3d.ads.core.domain.LegacyShowUseCase) r6
            kotlin.ResultKt.throwOnFailure(r2)
            r14 = r1
            r2 = r4
            r1 = r5
            goto L90
        L51:
            kotlin.ResultKt.throwOnFailure(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Unity Ads Show Completed for placement "
            r2.append(r4)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r2)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = r0.sendDiagnosticEvent
            long r6 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r16)
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            r7 = 0
            r8 = 0
            r10 = 12
            r11 = 0
            r3.L$0 = r0
            r3.L$1 = r1
            r2 = r19
            r3.L$2 = r2
            r14 = r20
            r3.L$3 = r14
            r3.label = r5
            java.lang.String r5 = "native_show_success_time"
            r9 = r3
            java.lang.Object r4 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r4 != r12) goto L8f
            return r12
        L8f:
            r6 = r0
        L90:
            kotlinx.coroutines.r r4 = r6.dispatcher
            com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2 r5 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2
            r6 = 0
            r5.<init>(r14, r1, r2, r6)
            r3.L$0 = r6
            r3.L$1 = r6
            r3.L$2 = r6
            r3.L$3 = r6
            r3.label = r13
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r3)
            if (r2 != r12) goto La9
            return r12
        La9:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.showCompleted(long, java.lang.String, com.unity3d.ads.core.data.model.ShowStatus, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object showError(long r17, com.unity3d.ads.UnityAds.UnityAdsShowError r19, java.lang.String r20, java.lang.String r21, com.unity3d.ads.IUnityAdsShowListener r22, kotlin.coroutines.Continuation<? super kotlin.v> r23) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.showError(long, com.unity3d.ads.UnityAds$UnityAdsShowError, java.lang.String, java.lang.String, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showStart(Continuation<? super v> continuation) {
        Object objInvoke$default = SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_started", null, null, null, continuation, 14, null);
        return objInvoke$default == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke$default : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object showStarted(long r15, java.lang.String r17, com.unity3d.ads.IUnityAdsShowListener r18, kotlin.coroutines.Continuation<? super kotlin.v> r19) {
        /*
            r14 = this;
            r0 = r14
            r1 = r17
            r2 = r19
            boolean r3 = r2 instanceof com.unity3d.ads.core.domain.LegacyShowUseCase.C16931
            if (r3 == 0) goto L18
            r3 = r2
            com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$1 r3 = (com.unity3d.ads.core.domain.LegacyShowUseCase.C16931) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L18
            int r4 = r4 - r5
            r3.label = r4
            goto L1d
        L18:
            com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$1 r3 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$1
            r3.<init>(r2)
        L1d:
            java.lang.Object r2 = r3.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r4 = r3.label
            r13 = 2
            r5 = 1
            if (r4 == 0) goto L4c
            if (r4 == r5) goto L3a
            if (r4 != r13) goto L32
            kotlin.ResultKt.throwOnFailure(r2)
            goto La7
        L32:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3a:
            java.lang.Object r1 = r3.L$2
            com.unity3d.ads.IUnityAdsShowListener r1 = (com.unity3d.ads.IUnityAdsShowListener) r1
            java.lang.Object r4 = r3.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r3.L$0
            com.unity3d.ads.core.domain.LegacyShowUseCase r5 = (com.unity3d.ads.core.domain.LegacyShowUseCase) r5
            kotlin.ResultKt.throwOnFailure(r2)
            r2 = r1
            r1 = r4
            goto L90
        L4c:
            kotlin.ResultKt.throwOnFailure(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Unity Ads Show WV Start for placement "
            r2.append(r4)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r2)
            kotlinx.coroutines.flow.l<java.lang.Boolean> r2 = r0.hasStarted
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            r2.setValue(r4)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = r0.sendDiagnosticEvent
            long r6 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r15)
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            r7 = 0
            r8 = 0
            r10 = 12
            r11 = 0
            r3.L$0 = r0
            r3.L$1 = r1
            r2 = r18
            r3.L$2 = r2
            r3.label = r5
            java.lang.String r5 = "native_show_wv_started"
            r9 = r3
            java.lang.Object r4 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r4 != r12) goto L8f
            return r12
        L8f:
            r5 = r0
        L90:
            kotlinx.coroutines.r r4 = r5.dispatcher
            com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2 r5 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2
            r6 = 0
            r5.<init>(r2, r1, r6)
            r3.L$0 = r6
            r3.L$1 = r6
            r3.L$2 = r6
            r3.label = r13
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r3)
            if (r2 != r12) goto La7
            return r12
        La7:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.showStarted(long, java.lang.String, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object showTimeout(com.unity3d.ads.core.data.model.AdObject r13, boolean r14, long r15, java.lang.String r17, com.unity3d.ads.IUnityAdsShowListener r18, kotlin.coroutines.Continuation<? super kotlin.v> r19) {
        /*
            r12 = this;
            r0 = r12
            r1 = r19
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.LegacyShowUseCase.C16951
            if (r2 == 0) goto L16
            r2 = r1
            com.unity3d.ads.core.domain.LegacyShowUseCase$showTimeout$1 r2 = (com.unity3d.ads.core.domain.LegacyShowUseCase.C16951) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.label = r3
            goto L1b
        L16:
            com.unity3d.ads.core.domain.LegacyShowUseCase$showTimeout$1 r2 = new com.unity3d.ads.core.domain.LegacyShowUseCase$showTimeout$1
            r2.<init>(r1)
        L1b:
            r10 = r2
            java.lang.Object r1 = r10.result
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r3 = r10.label
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L4e
            if (r3 == r5) goto L39
            if (r3 != r4) goto L31
            kotlin.ResultKt.throwOnFailure(r1)
            goto L95
        L31:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L39:
            long r5 = r10.J$0
            java.lang.Object r3 = r10.L$2
            com.unity3d.ads.IUnityAdsShowListener r3 = (com.unity3d.ads.IUnityAdsShowListener) r3
            java.lang.Object r7 = r10.L$1
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r8 = r10.L$0
            com.unity3d.ads.core.domain.LegacyShowUseCase r8 = (com.unity3d.ads.core.domain.LegacyShowUseCase) r8
            kotlin.ResultKt.throwOnFailure(r1)
            r9 = r3
            r3 = r8
            r8 = r7
            goto L70
        L4e:
            kotlin.ResultKt.throwOnFailure(r1)
            if (r14 == 0) goto L98
            com.unity3d.ads.core.domain.Show r1 = r0.show
            r10.L$0 = r0
            r3 = r17
            r10.L$1 = r3
            r6 = r18
            r10.L$2 = r6
            r7 = r15
            r10.J$0 = r7
            r10.label = r5
            r5 = r13
            java.lang.Object r1 = r1.terminate(r13, r10)
            if (r1 != r2) goto L6c
            return r2
        L6c:
            r9 = r6
            r5 = r7
            r8 = r3
            r3 = r0
        L70:
            com.unity3d.ads.UnityAds$UnityAdsShowError r1 = com.unity3d.ads.UnityAds.UnityAdsShowError.TIMEOUT
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r11 = "[UnityAds] Timeout while trying to show "
            r7.append(r11)
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r11 = 0
            r10.L$0 = r11
            r10.L$1 = r11
            r10.L$2 = r11
            r10.label = r4
            r4 = r5
            r6 = r1
            java.lang.Object r1 = r3.showError(r4, r6, r7, r8, r9, r10)
            if (r1 != r2) goto L95
            return r2
        L95:
            kotlin.v r1 = kotlin.v.a
            return r1
        L98:
            kotlin.v r1 = kotlin.v.a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.showTimeout(com.unity3d.ads.core.data.model.AdObject, boolean, long, java.lang.String, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(android.content.Context r26, java.lang.String r27, com.unity3d.ads.UnityAdsShowOptions r28, com.unity3d.ads.IUnityAdsShowListener r29, kotlin.coroutines.Continuation<? super kotlin.v> r30) {
        /*
            Method dump skipped, instruction units count: 576
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.invoke(android.content.Context, java.lang.String, com.unity3d.ads.UnityAdsShowOptions, com.unity3d.ads.IUnityAdsShowListener, kotlin.coroutines.d):java.lang.Object");
    }
}
