package com.unity3d.ads.core.domain;

import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.InitializationStatusReaderExtensionKt;
import com.unity3d.ads.core.extensions.UnityAdsLoadErrorMapperExtensionKt;
import com.unity3d.services.core.properties.SdkProperties;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
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
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
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
/* JADX INFO: compiled from: LegacyLoadUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\b\u0000\u0018\u0000 (2\u00020\u0001:\u0001(B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e0\u00132\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J3\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0086Bø\u0001\u0000¢\u0006\u0002\u0010\u001eJ=\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0011\u0010$\u001a\u00020!H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010%J+\u0010&\u001a\u00020\u00172\u0006\u0010 \u001a\u00020!2\u0006\u0010\u001a\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010'R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006)"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "load", "Lcom/unity3d/ads/core/domain/Load;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/AdRepository;)V", "getAdMarkup", "", "unityAdsLoadOptions", "Lcom/unity3d/ads/UnityAdsLoadOptions;", "getOpportunityId", "getTags", "", "reason", "Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;", "invoke", "", "context", "Landroid/content/Context;", "placement", "loadOptions", "unityLoadListener", "Lcom/unity3d/ads/IUnityAdsLoadListener;", "(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadFailure", "startTime", "", "message", "(JLcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadStart", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadSuccess", "(JLjava/lang/String;Lcom/unity3d/ads/IUnityAdsLoadListener;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class LegacyLoadUseCase {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_AD_MARKUP = "adMarkup";
    public static final String KEY_OBJECT_ID = "objectId";
    private final AdRepository adRepository;
    private final CoroutineDispatcher dispatcher;
    private final Load load;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;

    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyLoadUseCase$Companion;", "", "()V", "KEY_AD_MARKUP", "", "KEY_OBJECT_ID", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase", f = "LegacyLoadUseCase.kt", i = {0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7}, l = {44, 49, 54, 55, 74, 78, 82, 83, 86}, m = "invoke", n = {"this", "context", "placement", "loadOptions", "unityLoadListener", "this", "context", "placement", "loadOptions", "unityLoadListener", "opportunityIdByteString", "startTime", "this", "placement", "unityLoadListener", "startTime", "this", "placement", "unityLoadListener", "startTime", "this", "placement", "unityLoadListener", "startTime", "this", "placement", "unityLoadListener", "startTime"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "J$0", "L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyLoadUseCase.this.invoke(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadFailure$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase", f = "LegacyLoadUseCase.kt", i = {0, 0, 0, 0, 0}, l = {126, 127}, m = "loadFailure", n = {"this", "reason", "message", "placement", "unityLoadListener"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C16831 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C16831(Continuation<? super C16831> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyLoadUseCase.this.loadFailure(0L, null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadFailure$2, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase$loadFailure$2", f = "LegacyLoadUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $message;
        final /* synthetic */ String $placement;
        final /* synthetic */ UnityAds.UnityAdsLoadError $reason;
        final /* synthetic */ IUnityAdsLoadListener $unityLoadListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(IUnityAdsLoadListener iUnityAdsLoadListener, String str, UnityAds.UnityAdsLoadError unityAdsLoadError, String str2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$unityLoadListener = iUnityAdsLoadListener;
            this.$placement = str;
            this.$reason = unityAdsLoadError;
            this.$message = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$unityLoadListener, this.$placement, this.$reason, this.$message, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsLoadListener iUnityAdsLoadListener = this.$unityLoadListener;
            if (iUnityAdsLoadListener == null) {
                return null;
            }
            iUnityAdsLoadListener.onUnityAdsFailedToLoad(this.$placement, this.$reason, this.$message);
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase", f = "LegacyLoadUseCase.kt", i = {0}, l = {101}, m = "loadStart", n = {"startTime"}, s = {"J$0"})
    static final class C16841 extends ContinuationImpl {
        long J$0;
        int label;
        /* synthetic */ Object result;

        C16841(Continuation<? super C16841> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyLoadUseCase.this.loadStart(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase", f = "LegacyLoadUseCase.kt", i = {0, 0, 0}, l = {111, 112}, m = "loadSuccess", n = {"this", "placement", "unityLoadListener"}, s = {"L$0", "L$1", "L$2"})
    static final class C16851 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C16851(Continuation<? super C16851> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyLoadUseCase.this.loadSuccess(0L, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyLoadUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$2", f = "LegacyLoadUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C16862 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ String $placement;
        final /* synthetic */ IUnityAdsLoadListener $unityLoadListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16862(IUnityAdsLoadListener iUnityAdsLoadListener, String str, Continuation<? super C16862> continuation) {
            super(2, continuation);
            this.$unityLoadListener = iUnityAdsLoadListener;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16862(this.$unityLoadListener, this.$placement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16862) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IUnityAdsLoadListener iUnityAdsLoadListener = this.$unityLoadListener;
            if (iUnityAdsLoadListener == null) {
                return null;
            }
            iUnityAdsLoadListener.onUnityAdsAdLoaded(this.$placement);
            return v.a;
        }
    }

    public LegacyLoadUseCase(CoroutineDispatcher dispatcher, Load load, SendDiagnosticEvent sendDiagnosticEvent, SessionRepository sessionRepository, AdRepository adRepository) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(load, "load");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        this.dispatcher = dispatcher;
        this.load = load;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sessionRepository = sessionRepository;
        this.adRepository = adRepository;
    }

    private final String getAdMarkup(UnityAdsLoadOptions unityAdsLoadOptions) {
        Object objOpt;
        JSONObject data = unityAdsLoadOptions.getData();
        if (data == null || (objOpt = data.opt("adMarkup")) == null) {
            return null;
        }
        return objOpt.toString();
    }

    private final String getOpportunityId(UnityAdsLoadOptions unityAdsLoadOptions) {
        Object objOpt;
        JSONObject data = unityAdsLoadOptions.getData();
        if (data == null || (objOpt = data.opt("objectId")) == null) {
            return null;
        }
        return objOpt.toString();
    }

    private final Map<String, String> getTags(UnityAds.UnityAdsLoadError unityAdsLoadError) {
        SdkProperties.InitializationState initState = SdkProperties.getCurrentInitializationState();
        Intrinsics.checkNotNullExpressionValue(initState, "initState");
        Map<String, String> mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to("state", InitializationStatusReaderExtensionKt.getInitializationStateString(initState).toString()));
        if (unityAdsLoadError != null) {
            mapMutableMapOf.put("reason", UnityAdsLoadErrorMapperExtensionKt.toDiagnosticReason(unityAdsLoadError));
            mapMutableMapOf.put("operation", OperationType.LOAD.toString());
        }
        return mapMutableMapOf;
    }

    static /* synthetic */ Map getTags$default(LegacyLoadUseCase legacyLoadUseCase, UnityAds.UnityAdsLoadError unityAdsLoadError, int i, Object obj) {
        if ((i & 1) != 0) {
            unityAdsLoadError = null;
        }
        return legacyLoadUseCase.getTags(unityAdsLoadError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object loadFailure(long r17, com.unity3d.ads.UnityAds.UnityAdsLoadError r19, java.lang.String r20, java.lang.String r21, com.unity3d.ads.IUnityAdsLoadListener r22, kotlin.coroutines.Continuation<? super kotlin.v> r23) {
        /*
            Method dump skipped, instruction units count: 225
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyLoadUseCase.loadFailure(long, com.unity3d.ads.UnityAds$UnityAdsLoadError, java.lang.String, java.lang.String, com.unity3d.ads.IUnityAdsLoadListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object loadStart(kotlin.coroutines.Continuation<? super java.lang.Long> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.unity3d.ads.core.domain.LegacyLoadUseCase.C16841
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.ads.core.domain.LegacyLoadUseCase$loadStart$1 r0 = (com.unity3d.ads.core.domain.LegacyLoadUseCase.C16841) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.LegacyLoadUseCase$loadStart$1 r0 = new com.unity3d.ads.core.domain.LegacyLoadUseCase$loadStart$1
            r0.<init>(r12)
        L18:
            r6 = r0
            java.lang.Object r12 = r6.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 1
            if (r1 == 0) goto L34
            if (r1 != r2) goto L2c
            long r0 = r6.J$0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L51
        L2c:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L34:
            kotlin.ResultKt.throwOnFailure(r12)
            long r9 = java.lang.System.nanoTime()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r1 = r11.sendDiagnosticEvent
            r3 = 0
            r4 = 0
            r5 = 0
            r7 = 14
            r8 = 0
            r6.J$0 = r9
            r6.label = r2
            java.lang.String r2 = "native_load_started"
            java.lang.Object r12 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r1, r2, r3, r4, r5, r6, r7, r8)
            if (r12 != r0) goto L50
            return r0
        L50:
            r0 = r9
        L51:
            java.lang.Long r12 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyLoadUseCase.loadStart(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object loadSuccess(long r16, java.lang.String r18, com.unity3d.ads.IUnityAdsLoadListener r19, kotlin.coroutines.Continuation<? super kotlin.v> r20) {
        /*
            r15 = this;
            r0 = r15
            r1 = r18
            r2 = r20
            boolean r3 = r2 instanceof com.unity3d.ads.core.domain.LegacyLoadUseCase.C16851
            if (r3 == 0) goto L18
            r3 = r2
            com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$1 r3 = (com.unity3d.ads.core.domain.LegacyLoadUseCase.C16851) r3
            int r4 = r3.label
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            r6 = r4 & r5
            if (r6 == 0) goto L18
            int r4 = r4 - r5
            r3.label = r4
            goto L1d
        L18:
            com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$1 r3 = new com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$1
            r3.<init>(r2)
        L1d:
            java.lang.Object r2 = r3.result
            java.lang.Object r12 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r4 = r3.label
            r13 = 2
            r5 = 1
            r14 = 0
            if (r4 == 0) goto L4c
            if (r4 == r5) goto L3a
            if (r4 != r13) goto L32
            kotlin.ResultKt.throwOnFailure(r2)
            goto La0
        L32:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L3a:
            java.lang.Object r1 = r3.L$2
            com.unity3d.ads.IUnityAdsLoadListener r1 = (com.unity3d.ads.IUnityAdsLoadListener) r1
            java.lang.Object r4 = r3.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r3.L$0
            com.unity3d.ads.core.domain.LegacyLoadUseCase r5 = (com.unity3d.ads.core.domain.LegacyLoadUseCase) r5
            kotlin.ResultKt.throwOnFailure(r2)
            r2 = r1
            r1 = r4
            goto L8a
        L4c:
            kotlin.ResultKt.throwOnFailure(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r4 = "Unity Ads Load Success for placement: "
            r2.append(r4)
            r2.append(r1)
            java.lang.String r2 = r2.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r2)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r4 = r0.sendDiagnosticEvent
            long r6 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r16)
            java.lang.Long r6 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r6)
            java.util.Map r7 = getTags$default(r15, r14, r5, r14)
            r8 = 0
            r10 = 8
            r11 = 0
            r3.L$0 = r0
            r3.L$1 = r1
            r2 = r19
            r3.L$2 = r2
            r3.label = r5
            java.lang.String r5 = "native_load_success_time"
            r9 = r3
            java.lang.Object r4 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r4, r5, r6, r7, r8, r9, r10, r11)
            if (r4 != r12) goto L89
            return r12
        L89:
            r5 = r0
        L8a:
            kotlinx.coroutines.r r4 = r5.dispatcher
            com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$2 r5 = new com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$2
            r5.<init>(r2, r1, r14)
            r3.L$0 = r14
            r3.L$1 = r14
            r3.L$2 = r14
            r3.label = r13
            java.lang.Object r2 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r3)
            if (r2 != r12) goto La0
            return r12
        La0:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyLoadUseCase.loadSuccess(long, java.lang.String, com.unity3d.ads.IUnityAdsLoadListener, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0088: MOVE (r8 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]), block:B:24:0x0087 */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x008a: MOVE (r3 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:24:0x0087 */
    /* JADX WARN: Removed duplicated region for block: B:105:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x022b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0206 A[Catch: Exception -> 0x0086, TRY_LEAVE, TryCatch #2 {Exception -> 0x0086, blocks: (B:14:0x0046, B:18:0x0068, B:21:0x0081, B:65:0x0202, B:67:0x0206), top: B:116:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024c  */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.unity3d.ads.core.domain.LegacyLoadUseCase] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v2, types: [long] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [com.unity3d.ads.IUnityAdsLoadListener] */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invoke(android.content.Context r23, java.lang.String r24, com.unity3d.ads.UnityAdsLoadOptions r25, com.unity3d.ads.IUnityAdsLoadListener r26, kotlin.coroutines.Continuation<? super kotlin.v> r27) {
        /*
            Method dump skipped, instruction units count: 724
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyLoadUseCase.invoke(android.content.Context, java.lang.String, com.unity3d.ads.UnityAdsLoadOptions, com.unity3d.ads.IUnityAdsLoadListener, kotlin.coroutines.d):java.lang.Object");
    }
}
