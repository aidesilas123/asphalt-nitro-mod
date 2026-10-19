package com.unity3d.services;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.d1;
import com.json.o2;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsShowListener;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.task.EmptyParams;
import com.unity3d.services.core.domain.task.InitializeSDK;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 5 more
    */
/* JADX INFO: compiled from: UnityAdsSDK.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\"\u001a\u00020#J \u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*J\"\u0010+\u001a\u00020#2\u0006\u0010%\u001a\u00020&2\b\u0010,\u001a\u0004\u0018\u00010-2\b\u0010)\u001a\u0004\u0018\u00010.R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\b\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\b\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\b\u001a\u0004\b\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\b\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\b\u001a\u0004\b\u001f\u0010 ¨\u0006/"}, d2 = {"Lcom/unity3d/services/UnityAdsSDK;", "Lcom/unity3d/services/core/di/IServiceComponent;", "()V", "alternativeFlowReader", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "getAlternativeFlowReader", "()Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "alternativeFlowReader$delegate", "Lkotlin/Lazy;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context$delegate", "initializeBoldSDK", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "getInitializeBoldSDK", "()Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "initializeBoldSDK$delegate", "initializeSDK", "Lcom/unity3d/services/core/domain/task/InitializeSDK;", "getInitializeSDK", "()Lcom/unity3d/services/core/domain/task/InitializeSDK;", "initializeSDK$delegate", "sdkScope", "Lkotlinx/coroutines/CoroutineScope;", "getSdkScope", "()Lkotlinx/coroutines/CoroutineScope;", "sdkScope$delegate", "showBoldSDK", "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "getShowBoldSDK", "()Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "showBoldSDK$delegate", MobileAdsBridgeBase.initializeMethodName, "Lkotlinx/coroutines/Job;", "load", o2.i, "", "loadOptions", "Lcom/unity3d/ads/UnityAdsLoadOptions;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/IUnityAdsLoadListener;", d1.u, "showOptions", "Lcom/unity3d/ads/UnityAdsShowOptions;", "Lcom/unity3d/ads/IUnityAdsShowListener;", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class UnityAdsSDK implements IServiceComponent {
    public static final UnityAdsSDK INSTANCE;
    private static final Lazy alternativeFlowReader$delegate;
    private static final Lazy context$delegate;
    private static final Lazy initializeBoldSDK$delegate;
    private static final Lazy initializeSDK$delegate;
    private static final Lazy sdkScope$delegate;
    private static final Lazy showBoldSDK$delegate;

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$initialize$1, reason: invalid class name */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$initialize$1", f = "UnityAdsSDK.kt", i = {}, l = {40, 42}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UnityAdsSDK unityAdsSDK = UnityAdsSDK.INSTANCE;
                if (unityAdsSDK.getAlternativeFlowReader().invoke()) {
                    InitializeBoldSDK initializeBoldSDK = unityAdsSDK.getInitializeBoldSDK();
                    this.label = 1;
                    if (initializeBoldSDK.invoke(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    InitializeSDK initializeSDK = unityAdsSDK.getInitializeSDK();
                    EmptyParams emptyParams = EmptyParams.INSTANCE;
                    this.label = 2;
                    if (initializeSDK.mo1074invokegIAlus(emptyParams, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getB();
            }
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$load$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$load$1", f = "UnityAdsSDK.kt", i = {}, l = {50}, m = "invokeSuspend", n = {}, s = {})
    static final class C16971 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ IUnityAdsLoadListener $listener;
        final /* synthetic */ UnityAdsLoadOptions $loadOptions;
        final /* synthetic */ String $placementId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16971(String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, Continuation<? super C16971> continuation) {
            super(2, continuation);
            this.$placementId = str;
            this.$loadOptions = unityAdsLoadOptions;
            this.$listener = iUnityAdsLoadListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16971(this.$placementId, this.$loadOptions, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16971) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UnityAdsSDK unityAdsSDK = UnityAdsSDK.INSTANCE;
                if (unityAdsSDK.getAlternativeFlowReader().invoke()) {
                    LegacyLoadUseCase legacyLoadUseCase = (LegacyLoadUseCase) unityAdsSDK.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LegacyLoadUseCase.class));
                    Context context = unityAdsSDK.getContext();
                    String str = this.$placementId;
                    UnityAdsLoadOptions unityAdsLoadOptions = this.$loadOptions;
                    IUnityAdsLoadListener iUnityAdsLoadListener = this.$listener;
                    this.label = 1;
                    if (legacyLoadUseCase.invoke(context, str, unityAdsLoadOptions, iUnityAdsLoadListener, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$show$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$show$1", f = "UnityAdsSDK.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    static final class C16981 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        final /* synthetic */ IUnityAdsShowListener $listener;
        final /* synthetic */ String $placementId;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C16981(String str, UnityAdsShowOptions unityAdsShowOptions, IUnityAdsShowListener iUnityAdsShowListener, Continuation<? super C16981> continuation) {
            super(2, continuation);
            this.$placementId = str;
            this.$showOptions = unityAdsShowOptions;
            this.$listener = iUnityAdsShowListener;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C16981(this.$placementId, this.$showOptions, this.$listener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C16981) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                UnityAdsSDK unityAdsSDK = UnityAdsSDK.INSTANCE;
                if (unityAdsSDK.getAlternativeFlowReader().invoke()) {
                    LegacyShowUseCase showBoldSDK = unityAdsSDK.getShowBoldSDK();
                    Context context = unityAdsSDK.getContext();
                    String str = this.$placementId;
                    UnityAdsShowOptions unityAdsShowOptions = this.$showOptions;
                    IUnityAdsShowListener iUnityAdsShowListener = this.$listener;
                    this.label = 1;
                    if (showBoldSDK.invoke(context, str, unityAdsShowOptions, iUnityAdsShowListener, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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

    static {
        UnityAdsSDK unityAdsSDK = new UnityAdsSDK();
        INSTANCE = unityAdsSDK;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.c;
        sdkScope$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$1(unityAdsSDK, "sdk"));
        initializeSDK$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$2(unityAdsSDK, ""));
        alternativeFlowReader$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$3(unityAdsSDK, ""));
        initializeBoldSDK$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$4(unityAdsSDK, ""));
        showBoldSDK$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$5(unityAdsSDK, ""));
        context$delegate = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new UnityAdsSDK$special$$inlined$inject$default$6(unityAdsSDK, ""));
    }

    private UnityAdsSDK() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlternativeFlowReader getAlternativeFlowReader() {
        return (AlternativeFlowReader) alternativeFlowReader$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Context getContext() {
        return (Context) context$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InitializeBoldSDK getInitializeBoldSDK() {
        return (InitializeBoldSDK) initializeBoldSDK$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InitializeSDK getInitializeSDK() {
        return (InitializeSDK) initializeSDK$delegate.getValue();
    }

    private final CoroutineScope getSdkScope() {
        return (CoroutineScope) sdkScope$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LegacyShowUseCase getShowBoldSDK() {
        return (LegacyShowUseCase) showBoldSDK$delegate.getValue();
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    public final Job initialize() {
        return BuildersKt__Builders_commonKt.launch$default(getSdkScope(), null, null, new AnonymousClass1(null), 3, null);
    }

    public final Job load(String placementId, UnityAdsLoadOptions loadOptions, IUnityAdsLoadListener iUnityAdsLoadListener) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        return BuildersKt__Builders_commonKt.launch$default(getSdkScope(), null, null, new C16971(placementId, loadOptions, iUnityAdsLoadListener, null), 3, null);
    }

    public final Job show(String placementId, UnityAdsShowOptions unityAdsShowOptions, IUnityAdsShowListener iUnityAdsShowListener) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        return BuildersKt__Builders_commonKt.launch$default(getSdkScope(), null, null, new C16981(placementId, unityAdsShowOptions, iUnityAdsShowListener, null), 3, null);
    }
}
