package com.unity3d.ads.core.domain;

import android.util.Base64;
import com.google.protobuf.ByteString;
import com.google.protobuf.d0;
import com.google.protobuf.kotlin.ByteStringsKt;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ads.adplayer.ExposedFunctionLocation;
import com.unity3d.ads.adplayer.Invocation;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.CampaignStateRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.utils.ContinuationFromCallback;
import com.unity3d.services.core.api.Storage;
import gateway.v1.AdDataRefreshResponseOuterClass;
import gateway.v1.AllowedPiiOuterClass;
import gateway.v1.OperativeEventRequestOuterClass;
import gateway.v1.PrivacyUpdateRequestOuterClass;
import gateway.v1.PrivacyUpdateResponseOuterClass;
import gateway.v1.StaticDeviceInfoOuterClass;
import gateway.v1.h;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import org.json.JSONObject;

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
/* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 %2\u00020\u0001:\u0001%BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014Jc\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u001c\u0010 \u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\"\u0012\u0006\u0012\u0004\u0018\u00010\u00010!H\u0086\u0002ø\u0001\u0000¢\u0006\u0002\u0010$R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;", "", "getAndroidAdPlayerContext", "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "refresh", "Lcom/unity3d/ads/core/domain/Refresh;", "handleOpenUrl", "Lcom/unity3d/ads/core/domain/HandleOpenUrl;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "deviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "campaignStateRepository", "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;", "sendPrivacyUpdateRequest", "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "Lcom/unity3d/ads/adplayer/Invocation;", "onInvocations", "Lkotlinx/coroutines/flow/SharedFlow;", "adData", "", HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN, HandleAndroidInvocationsUseCase.KEY_IMPRESSION_CONFIG, "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "onSubscription", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/flow/SharedFlow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class HandleAndroidInvocationsUseCase {
    public static final Companion Companion = new Companion(null);
    public static final String KEY_AD_DATA = "adData";
    public static final String KEY_AD_DATA_REFRESH_TOKEN = "adDataRefreshToken";
    public static final String KEY_IMPRESSION_CONFIG = "impressionConfig";
    public static final String KEY_NATIVE_CONTEXT = "nativeContext";
    public static final String KEY_PACKAGE_NAME = "packageName";
    public static final String KEY_TRACKING_TOKEN = "trackingToken";
    private final CampaignStateRepository campaignStateRepository;
    private final DeviceInfoRepository deviceInfoRepository;
    private final GetAndroidAdPlayerContext getAndroidAdPlayerContext;
    private final GetOperativeEventApi getOperativeEventApi;
    private final HandleOpenUrl handleOpenUrl;
    private final Refresh refresh;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SendPrivacyUpdateRequest sendPrivacyUpdateRequest;
    private final SessionRepository sessionRepository;

    /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase$Companion;", "", "()V", "KEY_AD_DATA", "", "KEY_AD_DATA_REFRESH_TOKEN", "KEY_IMPRESSION_CONFIG", "KEY_NATIVE_CONTEXT", "KEY_PACKAGE_NAME", "KEY_TRACKING_TOKEN", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/adplayer/Invocation;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$1", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {45}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Invocation>, Continuation<? super v>, Object> {
        final /* synthetic */ Function1<Continuation<? super v>, Object> $onSubscription;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Continuation<? super v>, ? extends Object> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$onSubscription = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$onSubscription, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Invocation> flowCollector, Continuation<? super v> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Function1<Continuation<? super v>, Object> function1 = this.$onSubscription;
                this.label = 1;
                if (function1.invoke(this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/adplayer/Invocation;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {47, 56, 57, 58, 59, 60, 61, 69, 77, 86, 92, 102, 108, 119, 129, IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, 144, 148, 152, 156, 160, 170, 174, 178, 199, 208, 217}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Invocation, Continuation<? super v>, Object> {
        final /* synthetic */ String $adData;
        final /* synthetic */ String $adDataRefreshToken;
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ String $impressionConfig;
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$1", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ String $adData;
            final /* synthetic */ String $adDataRefreshToken;
            final /* synthetic */ String $impressionConfig;
            Object L$0;
            Object L$1;
            Object L$2;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(String str, String str2, String str3, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass1> continuation) {
                super(1, continuation);
                this.$adData = str;
                this.$impressionConfig = str2;
                this.$adDataRefreshToken = str3;
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass1(this.$adData, this.$impressionConfig, this.$adDataRefreshToken, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass1) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                String str;
                Map map;
                Map map2;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    String str2 = this.$adData;
                    String str3 = this.$impressionConfig;
                    String str4 = this.$adDataRefreshToken;
                    HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase = this.this$0;
                    Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
                    mapCreateMapBuilder.put("adData", str2);
                    mapCreateMapBuilder.put(HandleAndroidInvocationsUseCase.KEY_IMPRESSION_CONFIG, str3);
                    mapCreateMapBuilder.put(HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN, str4);
                    str = HandleAndroidInvocationsUseCase.KEY_NATIVE_CONTEXT;
                    GetAndroidAdPlayerContext getAndroidAdPlayerContext = handleAndroidInvocationsUseCase.getAndroidAdPlayerContext;
                    this.L$0 = mapCreateMapBuilder;
                    this.L$1 = HandleAndroidInvocationsUseCase.KEY_NATIVE_CONTEXT;
                    this.L$2 = mapCreateMapBuilder;
                    this.label = 1;
                    obj = getAndroidAdPlayerContext.invoke(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    map = mapCreateMapBuilder;
                    map2 = map;
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    map = (Map) this.L$2;
                    str = (String) this.L$1;
                    map2 = (Map) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                map.put(str, obj);
                return MapsKt__MapsJVMKt.build(map2);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$10, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$10", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass10 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass10(Invocation invocation, Continuation<? super AnonymousClass10> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass10(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass10) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Storage.clear((String) obj2, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$11, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$11", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass11 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass11(Invocation invocation, Continuation<? super AnonymousClass11> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass11(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass11) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Object obj3 = invocation.getParameters()[1];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                    Storage.delete((String) obj2, (String) obj3, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$12, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$12", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {103}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass12 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass12(Invocation invocation, Continuation<? super AnonymousClass12> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass12(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass12) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Storage.read((String) obj2, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$13, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$13", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {109}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass13 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass13(Invocation invocation, Continuation<? super AnonymousClass13> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass13(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass13) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Object obj3 = invocation.getParameters()[1];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                    Object obj4 = invocation.getParameters()[2];
                    Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Boolean");
                    Storage.getKeys((String) obj2, (String) obj3, (Boolean) obj4, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$14, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$14", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {120}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass14 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass14(Invocation invocation, Continuation<? super AnonymousClass14> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass14(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass14) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Object obj3 = invocation.getParameters()[1];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                    Storage.get((String) obj2, (String) obj3, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$15, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$15", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {130}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass15 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass15(Invocation invocation, Continuation<? super AnonymousClass15> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass15(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass15) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Object obj3 = invocation.getParameters()[1];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
                    Storage.set((String) obj2, (String) obj3, invocation.getParameters()[2], new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$16, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$16", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {141}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass16 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass16(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass16> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass16(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass16) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SessionRepository sessionRepository = this.this$0.sessionRepository;
                    this.label = 1;
                    obj = sessionRepository.getPrivacyFsm(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return ProtobufExtensionsKt.toBase64((ByteString) obj);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$17, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$17", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {145}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass17 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass17(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Invocation invocation, Continuation<? super AnonymousClass17> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass17(this.this$0, this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass17) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SessionRepository sessionRepository = this.this$0.sessionRepository;
                    Object obj2 = this.$it.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    byte[] bArrDecode = Base64.decode((String) obj2, 2);
                    Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(it.parameters[0] as String, Base64.NO_WRAP)");
                    ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                    this.label = 1;
                    if (sessionRepository.setPrivacyFsm(byteString, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$18, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$18", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {149}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass18 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass18(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Invocation invocation, Continuation<? super AnonymousClass18> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass18(this.this$0, this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass18) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SessionRepository sessionRepository = this.this$0.sessionRepository;
                    Object obj2 = this.$it.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    byte[] bArrDecode = Base64.decode((String) obj2, 2);
                    Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(it.parameters[0] as String, Base64.NO_WRAP)");
                    ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                    this.label = 1;
                    if (sessionRepository.setPrivacy(byteString, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$19, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$19", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {153}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass19 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass19(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass19> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass19(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass19) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SessionRepository sessionRepository = this.this$0.sessionRepository;
                    this.label = 1;
                    obj = sessionRepository.getPrivacy(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return ProtobufExtensionsKt.toBase64((ByteString) obj);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$2, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$2", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
        static final class C04462 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C04462(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super C04462> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new C04462(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((C04462) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DeviceInfoRepository deviceInfoRepository = this.this$0.deviceInfoRepository;
                    this.label = 1;
                    obj = deviceInfoRepository.staticDeviceInfo(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxInt(((StaticDeviceInfoOuterClass.StaticDeviceInfo) obj).getScreenHeight());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$20, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$20", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass20 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass20(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass20> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass20(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass20) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                String strEncodeToString = Base64.encodeToString(this.this$0.deviceInfoRepository.getAllowedPii().getValue().toByteArray(), 2);
                Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(deviceInf…eArray(), Base64.NO_WRAP)");
                return strEncodeToString;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$21, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$21", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass21 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass21(Invocation invocation, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass21> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass21(this.$it, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass21) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                AllowedPiiOuterClass.AllowedPii value;
                final h hVarA;
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.$it.getParameters()[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.collections.Map<kotlin.String, kotlin.Boolean>");
                Map map = (Map) obj2;
                MutableStateFlow<AllowedPiiOuterClass.AllowedPii> allowedPii = this.this$0.deviceInfoRepository.getAllowedPii();
                do {
                    value = allowedPii.getValue();
                    h.a aVar = h.a;
                    AllowedPiiOuterClass.AllowedPii.a builder = value.toBuilder();
                    Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
                    hVarA = aVar.a(builder);
                    Boolean bool = (Boolean) map.get("idfa");
                    if (bool != null) {
                        new kotlin.jvm.internal.v(hVarA) { // from class: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$21$1$1$2
                            @Override // kotlin.jvm.internal.v, kotlin.reflect.KProperty0
                            public Object get() {
                                return Boolean.valueOf(((h) this.receiver).b());
                            }

                            @Override // kotlin.jvm.internal.v, kotlin.reflect.KMutableProperty0
                            public void set(Object obj3) {
                                ((h) this.receiver).d(((Boolean) obj3).booleanValue());
                            }
                        }.set(Boxing.boxBoolean(bool.booleanValue()));
                    }
                    Boolean bool2 = (Boolean) map.get("idfv");
                    if (bool2 != null) {
                        new kotlin.jvm.internal.v(hVarA) { // from class: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$21$1$1$4
                            @Override // kotlin.jvm.internal.v, kotlin.reflect.KProperty0
                            public Object get() {
                                return Boolean.valueOf(((h) this.receiver).c());
                            }

                            @Override // kotlin.jvm.internal.v, kotlin.reflect.KMutableProperty0
                            public void set(Object obj3) {
                                ((h) this.receiver).e(((Boolean) obj3).booleanValue());
                            }
                        }.set(Boxing.boxBoolean(bool2.booleanValue()));
                    }
                } while (!allowedPii.h(value, hVarA.a()));
                return v.a;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$22, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$22", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass22 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass22(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass22> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass22(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass22) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return ProtobufExtensionsKt.toBase64(this.this$0.sessionRepository.getSessionToken());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$23, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$23", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {175}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass23 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ AdObject $adObject;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass23(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, AdObject adObject, Continuation<? super AnonymousClass23> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
                this.$adObject = adObject;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass23(this.this$0, this.$adObject, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass23) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    CampaignStateRepository campaignStateRepository = this.this$0.campaignStateRepository;
                    ByteString opportunityId = this.$adObject.getOpportunityId();
                    this.label = 1;
                    if (campaignStateRepository.setShowTimestamp(opportunityId, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$24, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$24", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {188}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass24 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ AdObject $adObject;
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass24(Invocation invocation, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, AdObject adObject, Continuation<? super AnonymousClass24> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.this$0 = handleAndroidInvocationsUseCase;
                this.$adObject = adObject;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass24(this.$it, this.this$0, this.$adObject, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass24) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                ByteString refreshTokenByteString;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (this.$it.getParameters().length == 0) {
                        refreshTokenByteString = ByteString.EMPTY;
                    } else {
                        Object obj2 = this.$it.getParameters()[0];
                        Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                        String refreshToken = ((JSONObject) obj2).optString(HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN);
                        Intrinsics.checkNotNullExpressionValue(refreshToken, "refreshToken");
                        refreshTokenByteString = ProtobufExtensionsKt.fromBase64(refreshToken);
                    }
                    Refresh refresh = this.this$0.refresh;
                    Intrinsics.checkNotNullExpressionValue(refreshTokenByteString, "refreshTokenByteString");
                    ByteString opportunityId = this.$adObject.getOpportunityId();
                    this.label = 1;
                    obj = refresh.invoke(refreshTokenByteString, opportunityId, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse = (AdDataRefreshResponseOuterClass.AdDataRefreshResponse) obj;
                if (adDataRefreshResponse.hasError()) {
                    throw new IllegalArgumentException("Refresh failed");
                }
                Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
                ByteString adData = adDataRefreshResponse.getAdData();
                Intrinsics.checkNotNullExpressionValue(adData, "adRefreshResponse.adData");
                mapCreateMapBuilder.put("adData", ProtobufExtensionsKt.toBase64(adData));
                ByteString adDataRefreshToken = adDataRefreshResponse.getAdDataRefreshToken();
                Intrinsics.checkNotNullExpressionValue(adDataRefreshToken, "adRefreshResponse.adDataRefreshToken");
                mapCreateMapBuilder.put(HandleAndroidInvocationsUseCase.KEY_AD_DATA_REFRESH_TOKEN, ProtobufExtensionsKt.toBase64(adDataRefreshToken));
                ByteString trackingToken = adDataRefreshResponse.getTrackingToken();
                Intrinsics.checkNotNullExpressionValue(trackingToken, "adRefreshResponse.trackingToken");
                mapCreateMapBuilder.put(HandleAndroidInvocationsUseCase.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64(trackingToken));
                return MapsKt__MapsJVMKt.build(mapCreateMapBuilder);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$25, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$25", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass25 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ AdObject $adObject;
            final /* synthetic */ Invocation $it;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass25(Invocation invocation, AdObject adObject, Continuation<? super AnonymousClass25> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.$adObject = adObject;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass25(this.$it, this.$adObject, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass25) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.$it.getParameters()[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type org.json.JSONObject");
                String strOptString = ((JSONObject) obj2).optString(HandleAndroidInvocationsUseCase.KEY_TRACKING_TOKEN);
                if (!(strOptString == null || strOptString.length() == 0)) {
                    this.$adObject.setTrackingToken(ProtobufExtensionsKt.fromBase64(strOptString));
                }
                return v.a;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$26, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$26", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {212}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass26 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass26(Invocation invocation, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass26> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass26(this.$it, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass26) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws d0 {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Object obj2 = this.$it.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest privacyUpdateRequest = PrivacyUpdateRequestOuterClass.PrivacyUpdateRequest.parseFrom(Base64.decode((String) obj2, 2));
                    SendPrivacyUpdateRequest sendPrivacyUpdateRequest = this.this$0.sendPrivacyUpdateRequest;
                    Intrinsics.checkNotNullExpressionValue(privacyUpdateRequest, "privacyUpdateRequest");
                    this.label = 1;
                    obj = sendPrivacyUpdateRequest.invoke(privacyUpdateRequest, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                String strEncodeToString = Base64.encodeToString(((PrivacyUpdateResponseOuterClass.PrivacyUpdateResponse) obj).toByteArray(), 2);
                Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(response.…eArray(), Base64.NO_WRAP)");
                return strEncodeToString;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$27, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$27", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {226}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass27 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass27(Invocation invocation, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass27> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass27(this.$it, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass27) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Object obj2 = this.$it.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    String str = (String) obj2;
                    Object obj3 = this.$it.getParameters()[1];
                    Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type org.json.JSONObject");
                    JSONObject jSONObject = (JSONObject) obj3;
                    Map mapCreateMapBuilder = MapsKt__MapsJVMKt.createMapBuilder();
                    Iterator<String> itKeys = jSONObject.keys();
                    Intrinsics.checkNotNullExpressionValue(itKeys, "tags.keys()");
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        mapCreateMapBuilder.put(next, jSONObject.getString(next));
                    }
                    Map mapBuild = MapsKt__MapsJVMKt.build(mapCreateMapBuilder);
                    SendDiagnosticEvent sendDiagnosticEvent = this.this$0.sendDiagnosticEvent;
                    this.label = 1;
                    if (SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, str, null, mapBuild, null, this, 10, null) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$3, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$3", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass3 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass3> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass3(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass3) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    DeviceInfoRepository deviceInfoRepository = this.this$0.deviceInfoRepository;
                    this.label = 1;
                    obj = deviceInfoRepository.staticDeviceInfo(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return Boxing.boxInt(((StaticDeviceInfoOuterClass.StaticDeviceInfo) obj).getScreenWidth());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$4, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$4", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass4 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass4> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass4(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass4) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return this.this$0.deviceInfoRepository.getConnectionTypeStr();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$5, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$5", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass5 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass5(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass5> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass5(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass5) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxDouble(this.this$0.deviceInfoRepository.getDynamicDeviceInfo().getAndroid().getVolume());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$6, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$6", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass6 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass6(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass6> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass6(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass6) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxDouble(this.this$0.deviceInfoRepository.getDynamicDeviceInfo().getAndroid().getMaxVolume());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$7, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$7", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {62}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass7 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ AdObject $adObject;
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass7(HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Invocation invocation, AdObject adObject, Continuation<? super AnonymousClass7> continuation) {
                super(1, continuation);
                this.this$0 = handleAndroidInvocationsUseCase;
                this.$it = invocation;
                this.$adObject = adObject;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass7(this.this$0, this.$it, this.$adObject, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass7) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    GetOperativeEventApi getOperativeEventApi = this.this$0.getOperativeEventApi;
                    OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SPECIFIED_BY_AD_PLAYER;
                    Object obj2 = this.$it.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    byte[] bArrDecode = Base64.decode((String) obj2, 2);
                    Intrinsics.checkNotNullExpressionValue(bArrDecode, "decode(it.parameters[0] as String, Base64.NO_WRAP)");
                    ByteString byteString = ByteStringsKt.toByteString(bArrDecode);
                    AdObject adObject = this.$adObject;
                    this.label = 1;
                    if (getOperativeEventApi.invoke(operativeEventType, adObject, byteString, this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$8, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$8", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass8 extends SuspendLambda implements Function1<Continuation<? super v>, Object> {
            final /* synthetic */ Invocation $it;
            int label;
            final /* synthetic */ HandleAndroidInvocationsUseCase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass8(Invocation invocation, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, Continuation<? super AnonymousClass8> continuation) {
                super(1, continuation);
                this.$it = invocation;
                this.this$0 = handleAndroidInvocationsUseCase;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass8(this.$it, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Continuation<? super v> continuation) {
                return ((AnonymousClass8) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.$it.getParameters()[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = this.$it.getParameters()[1];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type org.json.JSONObject");
                String strOptString = ((JSONObject) obj3).optString(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME);
                this.this$0.handleOpenUrl.invoke((String) obj2, strOptString);
                return v.a;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$9, reason: invalid class name */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$9", f = "HandleAndroidInvocationsUseCase.kt", i = {}, l = {78}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass9 extends SuspendLambda implements Function1<Continuation<? super Object>, Object> {
            final /* synthetic */ Invocation $it;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass9(Invocation invocation, Continuation<? super AnonymousClass9> continuation) {
                super(1, continuation);
                this.$it = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Continuation<?> continuation) {
                return new AnonymousClass9(this.$it, continuation);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Continuation<? super Object> continuation) {
                return invoke2((Continuation<Object>) continuation);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Object invoke2(Continuation<Object> continuation) {
                return ((AnonymousClass9) create(continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws Throwable {
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = this.$it;
                    this.L$0 = invocation;
                    this.label = 1;
                    SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this));
                    Object obj2 = invocation.getParameters()[0];
                    Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                    Storage.write((String) obj2, new ContinuationFromCallback(safeContinuation));
                    obj = safeContinuation.b();
                    if (obj == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(this);
                    }
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                return obj;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase$invoke$2$WhenMappings */
        /* JADX INFO: compiled from: HandleAndroidInvocationsUseCase.kt */
        @Metadata(mv = {1, 8, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ExposedFunctionLocation.values().length];
                try {
                    iArr[ExposedFunctionLocation.GET_AD_CONTEXT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_SCREEN_HEIGHT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_SCREEN_WIDTH.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_CONNECTION_TYPE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_DEVICE_VOLUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_DEVICE_MAX_VOLUME.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[ExposedFunctionLocation.SEND_OPERATIVE_EVENT.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr[ExposedFunctionLocation.OPEN_URL.ordinal()] = 8;
                } catch (NoSuchFieldError unused8) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_WRITE.ordinal()] = 9;
                } catch (NoSuchFieldError unused9) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_CLEAR.ordinal()] = 10;
                } catch (NoSuchFieldError unused10) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_DELETE.ordinal()] = 11;
                } catch (NoSuchFieldError unused11) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_READ.ordinal()] = 12;
                } catch (NoSuchFieldError unused12) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_GET_KEYS.ordinal()] = 13;
                } catch (NoSuchFieldError unused13) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_GET.ordinal()] = 14;
                } catch (NoSuchFieldError unused14) {
                }
                try {
                    iArr[ExposedFunctionLocation.STORAGE_SET.ordinal()] = 15;
                } catch (NoSuchFieldError unused15) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_PRIVACY_FSM.ordinal()] = 16;
                } catch (NoSuchFieldError unused16) {
                }
                try {
                    iArr[ExposedFunctionLocation.SET_PRIVACY_FSM.ordinal()] = 17;
                } catch (NoSuchFieldError unused17) {
                }
                try {
                    iArr[ExposedFunctionLocation.SET_PRIVACY.ordinal()] = 18;
                } catch (NoSuchFieldError unused18) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_PRIVACY.ordinal()] = 19;
                } catch (NoSuchFieldError unused19) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_ALLOWED_PII.ordinal()] = 20;
                } catch (NoSuchFieldError unused20) {
                }
                try {
                    iArr[ExposedFunctionLocation.SET_ALLOWED_PII.ordinal()] = 21;
                } catch (NoSuchFieldError unused21) {
                }
                try {
                    iArr[ExposedFunctionLocation.GET_SESSION_TOKEN.ordinal()] = 22;
                } catch (NoSuchFieldError unused22) {
                }
                try {
                    iArr[ExposedFunctionLocation.MARK_CAMPAIGN_STATE_SHOWN.ordinal()] = 23;
                } catch (NoSuchFieldError unused23) {
                }
                try {
                    iArr[ExposedFunctionLocation.REFRESH_AD_DATA.ordinal()] = 24;
                } catch (NoSuchFieldError unused24) {
                }
                try {
                    iArr[ExposedFunctionLocation.UPDATE_TRACKING_TOKEN.ordinal()] = 25;
                } catch (NoSuchFieldError unused25) {
                }
                try {
                    iArr[ExposedFunctionLocation.SEND_PRIVACY_UPDATE_REQUEST.ordinal()] = 26;
                } catch (NoSuchFieldError unused26) {
                }
                try {
                    iArr[ExposedFunctionLocation.SEND_DIAGNOSTIC_EVENT.ordinal()] = 27;
                } catch (NoSuchFieldError unused27) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, String str2, String str3, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, AdObject adObject, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$adData = str;
            this.$impressionConfig = str2;
            this.$adDataRefreshToken = str3;
            this.this$0 = handleAndroidInvocationsUseCase;
            this.$adObject = adObject;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$adData, this.$impressionConfig, this.$adDataRefreshToken, this.this$0, this.$adObject, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Invocation invocation, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(invocation, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation = (Invocation) this.L$0;
                    switch (WhenMappings.$EnumSwitchMapping$0[invocation.getLocation().ordinal()]) {
                        case 1:
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$adData, this.$impressionConfig, this.$adDataRefreshToken, this.this$0, null);
                            this.label = 1;
                            if (invocation.handle(anonymousClass1, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 2:
                            C04462 c04462 = new C04462(this.this$0, null);
                            this.label = 2;
                            if (invocation.handle(c04462, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 3:
                            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.this$0, null);
                            this.label = 3;
                            if (invocation.handle(anonymousClass3, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 4:
                            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.this$0, null);
                            this.label = 4;
                            if (invocation.handle(anonymousClass4, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 5:
                            AnonymousClass5 anonymousClass5 = new AnonymousClass5(this.this$0, null);
                            this.label = 5;
                            if (invocation.handle(anonymousClass5, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 6:
                            AnonymousClass6 anonymousClass6 = new AnonymousClass6(this.this$0, null);
                            this.label = 6;
                            if (invocation.handle(anonymousClass6, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 7:
                            AnonymousClass7 anonymousClass7 = new AnonymousClass7(this.this$0, invocation, this.$adObject, null);
                            this.label = 7;
                            if (invocation.handle(anonymousClass7, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 8:
                            AnonymousClass8 anonymousClass8 = new AnonymousClass8(invocation, this.this$0, null);
                            this.label = 8;
                            if (invocation.handle(anonymousClass8, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 9:
                            AnonymousClass9 anonymousClass9 = new AnonymousClass9(invocation, null);
                            this.label = 9;
                            if (invocation.handle(anonymousClass9, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 10:
                            AnonymousClass10 anonymousClass10 = new AnonymousClass10(invocation, null);
                            this.label = 10;
                            if (invocation.handle(anonymousClass10, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 11:
                            AnonymousClass11 anonymousClass11 = new AnonymousClass11(invocation, null);
                            this.label = 11;
                            if (invocation.handle(anonymousClass11, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 12:
                            AnonymousClass12 anonymousClass12 = new AnonymousClass12(invocation, null);
                            this.label = 12;
                            if (invocation.handle(anonymousClass12, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 13:
                            AnonymousClass13 anonymousClass13 = new AnonymousClass13(invocation, null);
                            this.label = 13;
                            if (invocation.handle(anonymousClass13, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 14:
                            AnonymousClass14 anonymousClass14 = new AnonymousClass14(invocation, null);
                            this.label = 14;
                            if (invocation.handle(anonymousClass14, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 15:
                            AnonymousClass15 anonymousClass15 = new AnonymousClass15(invocation, null);
                            this.label = 15;
                            if (invocation.handle(anonymousClass15, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 16:
                            AnonymousClass16 anonymousClass16 = new AnonymousClass16(this.this$0, null);
                            this.label = 16;
                            if (invocation.handle(anonymousClass16, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 17:
                            AnonymousClass17 anonymousClass17 = new AnonymousClass17(this.this$0, invocation, null);
                            this.label = 17;
                            if (invocation.handle(anonymousClass17, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 18:
                            AnonymousClass18 anonymousClass18 = new AnonymousClass18(this.this$0, invocation, null);
                            this.label = 18;
                            if (invocation.handle(anonymousClass18, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 19:
                            AnonymousClass19 anonymousClass19 = new AnonymousClass19(this.this$0, null);
                            this.label = 19;
                            if (invocation.handle(anonymousClass19, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 20:
                            AnonymousClass20 anonymousClass20 = new AnonymousClass20(this.this$0, null);
                            this.label = 20;
                            if (invocation.handle(anonymousClass20, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 21:
                            AnonymousClass21 anonymousClass21 = new AnonymousClass21(invocation, this.this$0, null);
                            this.label = 21;
                            if (invocation.handle(anonymousClass21, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 22:
                            AnonymousClass22 anonymousClass22 = new AnonymousClass22(this.this$0, null);
                            this.label = 22;
                            if (invocation.handle(anonymousClass22, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 23:
                            AnonymousClass23 anonymousClass23 = new AnonymousClass23(this.this$0, this.$adObject, null);
                            this.label = 23;
                            if (invocation.handle(anonymousClass23, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 24:
                            AnonymousClass24 anonymousClass24 = new AnonymousClass24(invocation, this.this$0, this.$adObject, null);
                            this.label = 24;
                            if (invocation.handle(anonymousClass24, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 25:
                            AnonymousClass25 anonymousClass25 = new AnonymousClass25(invocation, this.$adObject, null);
                            this.label = 25;
                            if (invocation.handle(anonymousClass25, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 26:
                            AnonymousClass26 anonymousClass26 = new AnonymousClass26(invocation, this.this$0, null);
                            this.label = 26;
                            if (invocation.handle(anonymousClass26, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                        case 27:
                            AnonymousClass27 anonymousClass27 = new AnonymousClass27(invocation, this.this$0, null);
                            this.label = 27;
                            if (invocation.handle(anonymousClass27, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            break;
                    }
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    ResultKt.throwOnFailure(obj);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return v.a;
        }
    }

    public HandleAndroidInvocationsUseCase(GetAndroidAdPlayerContext getAndroidAdPlayerContext, GetOperativeEventApi getOperativeEventApi, Refresh refresh, HandleOpenUrl handleOpenUrl, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, CampaignStateRepository campaignStateRepository, SendPrivacyUpdateRequest sendPrivacyUpdateRequest, SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getAndroidAdPlayerContext, "getAndroidAdPlayerContext");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        Intrinsics.checkNotNullParameter(handleOpenUrl, "handleOpenUrl");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(campaignStateRepository, "campaignStateRepository");
        Intrinsics.checkNotNullParameter(sendPrivacyUpdateRequest, "sendPrivacyUpdateRequest");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getAndroidAdPlayerContext = getAndroidAdPlayerContext;
        this.getOperativeEventApi = getOperativeEventApi;
        this.refresh = refresh;
        this.handleOpenUrl = handleOpenUrl;
        this.sessionRepository = sessionRepository;
        this.deviceInfoRepository = deviceInfoRepository;
        this.campaignStateRepository = campaignStateRepository;
        this.sendPrivacyUpdateRequest = sendPrivacyUpdateRequest;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    public final Flow<Invocation> invoke(SharedFlow<Invocation> onInvocations, String adData, String adDataRefreshToken, String impressionConfig, AdObject adObject, Function1<? super Continuation<? super v>, ? extends Object> onSubscription) {
        Intrinsics.checkNotNullParameter(onInvocations, "onInvocations");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(adDataRefreshToken, "adDataRefreshToken");
        Intrinsics.checkNotNullParameter(impressionConfig, "impressionConfig");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(onSubscription, "onSubscription");
        return FlowKt.onEach(FlowKt.onSubscription(onInvocations, new AnonymousClass1(onSubscription, null)), new AnonymousClass2(adData, impressionConfig, adDataRefreshToken, this, adObject, null));
    }
}
