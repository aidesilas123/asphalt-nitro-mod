package com.unity3d.services.core.di;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.protobuf.ByteString;
import com.json.d1;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.configuration.GameServerIdReader;
import com.unity3d.ads.core.data.datasource.AnalyticsDataSource;
import com.unity3d.ads.core.data.datasource.AndroidAnalyticsDataSource;
import com.unity3d.ads.core.data.datasource.AndroidByteStringDataSource;
import com.unity3d.ads.core.data.datasource.AndroidDeveloperConsentDataSource;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidLegacyUserConsentDataSource;
import com.unity3d.ads.core.data.datasource.AndroidMediationDataSource;
import com.unity3d.ads.core.data.datasource.AndroidPrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.ByteStringDataSource;
import com.unity3d.ads.core.data.datasource.DefaultByteStringMigration;
import com.unity3d.ads.core.data.datasource.DeveloperConsentDataSource;
import com.unity3d.ads.core.data.datasource.DynamicDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.FetchGLInfoDataMigration;
import com.unity3d.ads.core.data.datasource.ForcefulPreservingByteStringPreferenceMigration;
import com.unity3d.ads.core.data.datasource.GetAuidData;
import com.unity3d.ads.core.data.datasource.GetIdfiData;
import com.unity3d.ads.core.data.datasource.LegacyUserConsentDataSource;
import com.unity3d.ads.core.data.datasource.MediationDataSource;
import com.unity3d.ads.core.data.datasource.PreservingByteStringPreferenceMigration;
import com.unity3d.ads.core.data.datasource.PrivacyDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.StaticDeviceInfoDataSource;
import com.unity3d.ads.core.data.datasource.UniversalRequestDataSource;
import com.unity3d.ads.core.data.manager.AndroidSDKPropertiesManager;
import com.unity3d.ads.core.data.manager.AndroidStorageManager;
import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.model.ByteStringSerializer;
import com.unity3d.ads.core.data.model.UniversalRequestStoreSerializer;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.AndroidAdRepository;
import com.unity3d.ads.core.data.repository.AndroidCampaignStateRepository;
import com.unity3d.ads.core.data.repository.AndroidDeveloperConsentRepository;
import com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository;
import com.unity3d.ads.core.data.repository.AndroidDiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.AndroidLegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.AndroidMediationRepository;
import com.unity3d.ads.core.data.repository.AndroidSessionRepository;
import com.unity3d.ads.core.data.repository.CampaignStateRepository;
import com.unity3d.ads.core.data.repository.DeveloperConsentRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.LegacyUserConsentRepository;
import com.unity3d.ads.core.data.repository.MediationRepository;
import com.unity3d.ads.core.data.repository.OperativeEventRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.AndroidExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase;
import com.unity3d.ads.core.domain.AndroidHandleOpenUrl;
import com.unity3d.ads.core.domain.AndroidLoad;
import com.unity3d.ads.core.domain.AndroidRefresh;
import com.unity3d.ads.core.domain.AndroidSendDiagnosticEvent;
import com.unity3d.ads.core.domain.AndroidSendWebViewClientErrorDiagnostics;
import com.unity3d.ads.core.domain.AndroidShow;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.GetAdDataRefreshRequest;
import com.unity3d.ads.core.domain.GetAdRequest;
import com.unity3d.ads.core.domain.GetAdRequestPolicy;
import com.unity3d.ads.core.domain.GetAndroidAdDataRefreshRequest;
import com.unity3d.ads.core.domain.GetAndroidAdPlayerContext;
import com.unity3d.ads.core.domain.GetAndroidAdRequest;
import com.unity3d.ads.core.domain.GetAndroidClientInfo;
import com.unity3d.ads.core.domain.GetAndroidInitializationCompletedRequest;
import com.unity3d.ads.core.domain.GetAndroidInitializationRequest;
import com.unity3d.ads.core.domain.GetAndroidOpenGLRendererInfo;
import com.unity3d.ads.core.domain.GetAndroidSharedDataTimestamps;
import com.unity3d.ads.core.domain.GetAndroidUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.GetAndroidUniversalRequestSharedData;
import com.unity3d.ads.core.domain.GetClientInfo;
import com.unity3d.ads.core.domain.GetCommonWebViewBridgeUseCase;
import com.unity3d.ads.core.domain.GetInitRequestPolicy;
import com.unity3d.ads.core.domain.GetInitializationCompletedRequest;
import com.unity3d.ads.core.domain.GetInitializationRequest;
import com.unity3d.ads.core.domain.GetOpenGLRendererInfo;
import com.unity3d.ads.core.domain.GetOperativeEventRequestPolicy;
import com.unity3d.ads.core.domain.GetOtherRequestPolicy;
import com.unity3d.ads.core.domain.GetPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.GetRequestPolicy;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import com.unity3d.ads.core.domain.GetUniversalRequestForPayLoad;
import com.unity3d.ads.core.domain.GetUniversalRequestSharedData;
import com.unity3d.ads.core.domain.GetWebViewBridgeUseCase;
import com.unity3d.ads.core.domain.HandleAndroidGatewayInitializationResponse;
import com.unity3d.ads.core.domain.HandleAndroidGatewayUniversalResponse;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import com.unity3d.ads.core.domain.HandleGatewayAdResponse;
import com.unity3d.ads.core.domain.HandleGatewayAndroidAdResponse;
import com.unity3d.ads.core.domain.HandleGatewayInitializationResponse;
import com.unity3d.ads.core.domain.HandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.HandleOpenUrl;
import com.unity3d.ads.core.domain.InitializeAndroidBoldSDK;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.ads.core.domain.Load;
import com.unity3d.ads.core.domain.Refresh;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.SendPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics;
import com.unity3d.ads.core.domain.Show;
import com.unity3d.ads.core.domain.TriggerAndroidInitializationCompletedRequest;
import com.unity3d.ads.core.domain.TriggerInitializationCompletedRequest;
import com.unity3d.ads.core.domain.TriggerInitializeListener;
import com.unity3d.ads.core.domain.events.DiagnosticEventObserver;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventBatchRequest;
import com.unity3d.ads.core.domain.events.GetDiagnosticEventRequest;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.events.GetOperativeEventRequest;
import com.unity3d.ads.core.domain.events.HandleGatewayAndroidEventResponse;
import com.unity3d.ads.core.domain.events.HandleGatewayEventResponse;
import com.unity3d.ads.core.domain.events.OperativeEventObserver;
import com.unity3d.ads.core.domain.events.UniversalRequestEventSender;
import com.unity3d.ads.core.domain.privacy.DeveloperConsentFlattenerRulesUseCase;
import com.unity3d.ads.core.domain.privacy.FlattenerRulesUseCase;
import com.unity3d.ads.core.domain.privacy.LegacyUserConsentFlattenerRulesUseCase;
import com.unity3d.ads.core.domain.work.BackgroundWorker;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.services.SDKErrorHandler;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.unity3d.services.ads.measurements.MeasurementsService;
import com.unity3d.services.ads.token.AsyncTokenStorage;
import com.unity3d.services.ads.token.InMemoryAsyncTokenStorage;
import com.unity3d.services.ads.token.InMemoryTokenStorage;
import com.unity3d.services.ads.token.TokenStorage;
import com.unity3d.services.ads.topics.TopicsService;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.device.VolumeChange;
import com.unity3d.services.core.device.VolumeChangeContentObserver;
import com.unity3d.services.core.device.VolumeChangeMonitor;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.SDKDispatchers;
import com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage;
import com.unity3d.services.core.domain.task.InitializeSDK;
import com.unity3d.services.core.domain.task.InitializeStateComplete;
import com.unity3d.services.core.domain.task.InitializeStateConfig;
import com.unity3d.services.core.domain.task.InitializeStateConfigWithLoader;
import com.unity3d.services.core.domain.task.InitializeStateCreate;
import com.unity3d.services.core.domain.task.InitializeStateCreateWithRemote;
import com.unity3d.services.core.domain.task.InitializeStateError;
import com.unity3d.services.core.domain.task.InitializeStateLoadCache;
import com.unity3d.services.core.domain.task.InitializeStateLoadWeb;
import com.unity3d.services.core.domain.task.InitializeStateNetworkError;
import com.unity3d.services.core.domain.task.InitializeStateReset;
import com.unity3d.services.core.lifecycle.CachedLifecycle;
import com.unity3d.services.core.lifecycle.LifecycleCache;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.network.core.CronetClient;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.preferences.AndroidPreferences;
import com.unity3d.services.core.properties.ClientProperties;
import com.unity3d.services.core.request.metrics.SDKMetrics;
import com.unity3d.services.core.request.metrics.SDKMetricsSender;
import com.unity3d.services.core.webview.bridge.SharedInstances;
import defpackage.ByteStringStoreOuterClass;
import defpackage.UniversalRequestStoreOuterClass;
import gateway.v1.NativeConfigurationOuterClass;
import gateway.v1.c0;
import gateway.v1.j0;
import gateway.v1.k0;
import gateway.v1.l0;
import gateway.v1.p;
import java.io.File;
import java.util.UUID;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;

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
/* JADX INFO: compiled from: ServiceProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¢\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J!\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010$J\b\u0010%\u001a\u00020&H\u0002J\b\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020*H\u0002J\b\u0010+\u001a\u00020\u001dH\u0016J\b\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\b\u00103\u001a\u000204H\u0002J\u0016\u00105\u001a\b\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J,\u00108\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\f\u0010:\u001a\b\u0012\u0004\u0012\u00020706H\u0002J\u0016\u0010;\u001a\u00020<2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020709H\u0002J&\u0010>\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010?\u001a\u00020\u0004H\u0002J\u0010\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\u000e\u0010D\u001a\b\u0012\u0004\u0012\u00020706H\u0002J\b\u0010E\u001a\u00020FH\u0002J \u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0002J8\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010\"\u001a\u00020#2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0018\u0010[\u001a\u00020L2\u0006\u0010 \u001a\u00020!2\u0006\u0010\\\u001a\u00020]H\u0002J\u0018\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020#2\u0006\u0010`\u001a\u00020\u001fH\u0002J\u0016\u0010a\u001a\b\u0012\u0004\u0012\u000207062\u0006\u0010b\u001a\u00020cH\u0002J\u001e\u0010d\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J \u0010e\u001a\u00020f2\u0006\u0010`\u001a\u00020\u001f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0002J(\u0010k\u001a\u00020l2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002J(\u0010o\u001a\u00020p2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002JP\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020z2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020A2\u0006\u0010{\u001a\u00020|2\u0006\u0010i\u001a\u00020jH\u0002J\u0019\u0010}\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002J\u001a\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010m\u001a\u00020HH\u0002J5\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0006\u0010Q\u001a\u00020R2\u0007\u0010\u0085\u0001\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\b\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0002J\u0011\u0010\u0088\u0001\u001a\u00020c2\u0006\u00101\u001a\u000202H\u0002J\t\u0010\u0089\u0001\u001a\u00020CH\u0002J\u0013\u0010\u008a\u0001\u001a\u00020R2\b\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J,\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0006\u0010B\u001a\u00020C2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\b\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0002J\u0012\u0010\u0090\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010\u0092\u0001\u001a\u00030\u0093\u00012\u0006\u0010 \u001a\u00020!2\u0007\u0010\u0094\u0001\u001a\u0002042\b\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J.\u0010\u0097\u0001\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020706H\u0002Jj\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\b\u0010\u009c\u0001\u001a\u00030\u0093\u00012\b\u0010\u009d\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010m\u001a\u00020H2\u0007\u0010\u009e\u0001\u001a\u00020r2\u0006\u00101\u001a\u0002022\u0006\u0010n\u001a\u00020A2\u0007\u0010\u009f\u0001\u001a\u00020_2\u0006\u0010i\u001a\u00020j2\u0007\u0010 \u0001\u001a\u00020vH\u0002J&\u0010¡\u0001\u001a\u00030¢\u00012\b\u0010£\u0001\u001a\u00030¤\u00012\u0006\u00101\u001a\u0002022\b\u0010¥\u0001\u001a\u00030¦\u0001H\u0002J\u0019\u0010§\u0001\u001a\u00020h2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020HH\u0002J5\u0010¨\u0001\u001a\u00020\u001f2\b\u0010©\u0001\u001a\u00030ª\u00012\b\u0010«\u0001\u001a\u00030¬\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020j2\u0006\u0010 \u001a\u00020!H\u0002J\u0017\u0010\u00ad\u0001\u001a\b\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J=\u0010®\u0001\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010¯\u0001\u001a\b\u0012\u0004\u0012\u000207062\r\u0010°\u0001\u001a\b\u0012\u0004\u0012\u00020706H\u0002J\u0011\u0010±\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0080\u0001\u0010²\u0001\u001a\u00030³\u00012\u0006\u0010\"\u001a\u00020#2\b\u0010´\u0001\u001a\u00030\u0084\u00012\u0007\u0010µ\u0001\u001a\u0002002\b\u0010¶\u0001\u001a\u00030¢\u00012\u0007\u0010·\u0001\u001a\u00020f2\u0006\u00101\u001a\u0002022\b\u0010¸\u0001\u001a\u00030¹\u00012\b\u0010º\u0001\u001a\u00030»\u00012\u0006\u0010i\u001a\u00020j2\u0006\u0010U\u001a\u00020V2\u0006\u0010m\u001a\u00020H2\b\u0010¼\u0001\u001a\u00030½\u00012\b\u0010¾\u0001\u001a\u00030¿\u0001H\u0002J\u0014\u0010À\u0001\u001a\u00030Á\u00012\b\u0010Â\u0001\u001a\u00030Ã\u0001H\u0002J6\u0010Ä\u0001\u001a\u00030Å\u00012\u0007\u0010Æ\u0001\u001a\u00020#2\b\u0010Ç\u0001\u001a\u00030È\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0006\u00101\u001a\u000202H\u0002J?\u0010É\u0001\u001a\u00030Ê\u00012\u0007\u0010Æ\u0001\u001a\u00020#2\b\u0010Ë\u0001\u001a\u00030Ì\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0007\u0010 \u0001\u001a\u00020v2\u0006\u00101\u001a\u000202H\u0002J\t\u0010Í\u0001\u001a\u00020]H\u0002JH\u0010Î\u0001\u001a\u00030È\u00012\u0006\u0010\"\u001a\u00020#2\u0007\u0010Ï\u0001\u001a\u00020p2\u0007\u0010Ð\u0001\u001a\u0002002\b\u0010Ñ\u0001\u001a\u00030\u009a\u00012\u0006\u00101\u001a\u0002022\u0007\u0010·\u0001\u001a\u00020f2\u0007\u0010\u009b\u0001\u001a\u00020.H\u0002J\u0014\u0010Ò\u0001\u001a\u00030Ó\u00012\b\u0010Ô\u0001\u001a\u00030Á\u0001H\u0002J\u0014\u0010Õ\u0001\u001a\u00030\u0080\u00012\b\u0010Ö\u0001\u001a\u00030Ó\u0001H\u0002J4\u0010×\u0001\u001a\u00030Ø\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010\"\u001a\u00020#2\b\u0010Ù\u0001\u001a\u00030Ú\u00012\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0011\u0010Û\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010Ü\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010Ý\u0001\u001a\u00020N2\u0006\u0010 \u001a\u00020!H\u0002J\u001f\u0010Þ\u0001\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J,\u0010ß\u0001\u001a\u00020x2\u0006\u0010\"\u001a\u00020#2\u0007\u0010à\u0001\u001a\u00020l2\u0007\u0010á\u0001\u001a\u0002002\u0007\u0010·\u0001\u001a\u00020fH\u0002J\t\u0010â\u0001\u001a\u00020#H\u0002J.\u0010ã\u0001\u001a\u00030ä\u00012\u0006\u0010\"\u001a\u00020#2\b\u0010«\u0001\u001a\u00030¬\u00012\u0006\u0010i\u001a\u00020j2\b\u0010å\u0001\u001a\u00030æ\u0001H\u0002J\n\u0010ç\u0001\u001a\u00030æ\u0001H\u0002J\u001c\u0010è\u0001\u001a\u00030¦\u00012\u0006\u0010\"\u001a\u00020#2\b\u0010é\u0001\u001a\u00030ä\u0001H\u0002J\u001a\u0010ê\u0001\u001a\u00030\u0096\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020jH\u0002J-\u0010ë\u0001\u001a\u0002022\u0007\u0010ì\u0001\u001a\u00020<2\u0007\u0010í\u0001\u001a\u00020<2\u0007\u0010î\u0001\u001a\u00020<2\u0007\u0010ï\u0001\u001a\u00020FH\u0002J\u001d\u0010ð\u0001\u001a\u00030Ì\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\b\u0010ñ\u0001\u001a\u00030ò\u0001H\u0002J6\u0010ó\u0001\u001a\u00020J2\u0006\u0010 \u001a\u00020!2\u0007\u0010ô\u0001\u001a\u00020<2\u0007\u0010õ\u0001\u001a\u00020<2\u0007\u0010ö\u0001\u001a\u00020<2\b\u0010÷\u0001\u001a\u00030ø\u0001H\u0002J&\u0010ù\u0001\u001a\u00030¤\u00012\b\u0010ú\u0001\u001a\u00030\u0082\u00012\u0007\u0010µ\u0001\u001a\u0002002\u0007\u0010·\u0001\u001a\u00020fH\u0002J\u0012\u0010û\u0001\u001a\u00030»\u00012\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010ü\u0001\u001a\u00020X2\r\u0010=\u001a\t\u0012\u0005\u0012\u00030ý\u000109H\u0002J \u0010þ\u0001\u001a\t\u0012\u0005\u0012\u00030ý\u0001092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u001f\u0010ÿ\u0001\u001a\b\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0080\u0002"}, d2 = {"Lcom/unity3d/services/core/di/ServiceProvider;", "Lcom/unity3d/services/core/di/IServiceProvider;", "()V", "DATA_STORE_AUID", "", "DATA_STORE_GATEWAY_CACHE", "DATA_STORE_GL_INFO", "DATA_STORE_IDFI", "DATA_STORE_PRIVACY", "DATA_STORE_PRIVACY_FSM", "DATA_STORE_UNIVERSAL_REQUEST", "DEV_CONSENT_PRIVACY_RULES", "GATEWAY_HOST", "GATEWAY_PORT", "", "HTTP_CACHE_DISK_SIZE", "", "HTTP_CLIENT_FETCH_TIMEOUT", "LEGACY_PRIVACY_RULES", "NAMED_AD_REQ", "NAMED_INIT_REQ", "NAMED_OPERATIVE_REQ", "NAMED_OTHER_REQ", "NAMED_SDK", "PREF_AUID", "PREF_DEFAULT", "PREF_GL_INFO", "PREF_IDFI", "serviceRegistry", "Lcom/unity3d/services/core/di/IServicesRegistry;", "buildNetworkClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "context", "Landroid/content/Context;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDefaultRequestPolicy", "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;", "getDefaultRequestRetryPolicy", "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;", "getDefaultRequestTimeoutPolicy", "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;", "getRegistry", MobileAdsBridgeBase.initializeMethodName, "provideAdRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "provideAdRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "provideAndroidWebViewClient", "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "provideAuidDataMigration", "Landroidx/datastore/core/DataMigration;", "LByteStringStoreOuterClass$ByteStringStore;", "provideAuidDataStore", "Landroidx/datastore/core/DataStore;", "auidMigration", "provideByteStringDataSource", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "dataStore", "provideByteStringDataStore", "dataStoreFile", "provideCampaignStateRepository", "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;", "getSharedDataTimestamps", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "provideDefaultDataMigration", "provideDefaultNativeConfiguration", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;", "provideDeviceInfoRepository", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "staticDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "dynamicDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "privacyDeviceInfoDataSource", "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;", "provideDiagnosticEventObserver", "Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;", "getUniversalRequestForPayLoad", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "getDiagnosticEventBatchRequest", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "universalRequestDataSource", "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;", "backgroundWorker", "Lcom/unity3d/ads/core/domain/work/BackgroundWorker;", "provideDynamicDeviceInfoDataSource", "lifecycleCache", "Lcom/unity3d/services/core/lifecycle/LifecycleCache;", "provideExecuteAdViewerRequest", "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;", "httpClient", "provideFetchGLInfoDataMigration", "getOpenGLRendererInfo", "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;", "provideGatewayCacheDataStore", "provideGatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "handleGatewayUniversalResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "provideGetAdDataRefreshRequest", "Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;", "deviceInfoRepository", "campaignStateRepository", "provideGetAdRequest", "Lcom/unity3d/ads/core/domain/GetAdRequest;", "provideGetAndroidExposureUseCase", "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;", "getAndroidAdPlayerContext", "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "refresh", "Lcom/unity3d/ads/core/domain/Refresh;", "handleOpenUrl", "Lcom/unity3d/ads/core/domain/HandleOpenUrl;", "sendPrivacyUpdateRequest", "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;", "provideGetClientInfo", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "mediationRepository", "Lcom/unity3d/ads/core/data/repository/MediationRepository;", "provideGetInitializationCompletedRequest", "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;", "provideGetInitializationRequest", "Lcom/unity3d/ads/core/domain/GetInitializationRequest;", "getClientInfo", "legacyUserConsentRepository", "Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;", "provideGetOpenGLRendererInfo", "provideGetSharedDataTimestamps", "provideGetUniversalRequestForPayLoad", "getUniversalRequestSharedData", "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;", "provideGetUniversalRequestSharedData", "developerConsentRepository", "Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;", "provideGetWebViewBridgeUseCase", "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;", "provideGetWebViewContainerUseCase", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "androidWebViewClient", "sendWebViewClientErrorDiagnostics", "Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;", "provideGlInfoDataStore", "fetchGLInfo", "provideHandleGatewayAdResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;", "adRepository", "getWebViewContainerUseCase", "getWebViewBridge", "getHandleAndroidInvocationsUseCase", "executeAdViewerRequest", "operativeEventApi", "provideHandleGatewayInitializationResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "triggerInitializationCompletedRequest", "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;", "sdkScope", "Lkotlinx/coroutines/CoroutineScope;", "provideHandleGatewayUniversalResponse", "provideHttpClient", "configFileFromLocalStorage", "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;", "alternativeFlowReader", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "provideIdfiDataMigration", "provideIdfiDataStore", "idfiMigration", "defaultIdfi", "provideInitRequestPolicy", "provideInitializeBoldSDK", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "getInitializeRequest", "getInitRequestPolicy", "handleGatewayInitializationResponse", "gatewayClient", "eventObservers", "Lcom/unity3d/ads/core/domain/events/EventObservers;", "triggerInitializeListener", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "storageManager", "Lcom/unity3d/ads/core/data/manager/StorageManager;", "sdkPropertiesManager", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "provideJsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "storageType", "Lcom/unity3d/services/core/device/StorageManager$StorageType;", "provideLegacyLoadUseCase", "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;", "dispatcher", "load", "Lcom/unity3d/ads/core/domain/Load;", "provideLegacyShowUseCase", "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", d1.u, "Lcom/unity3d/ads/core/domain/Show;", "provideLifeCycleCache", "provideLoad", "getAdRequest", "getOtherRequestPolicy", "handleGatewayAdResponse", "provideMediationDataSource", "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;", "publicStorage", "provideMediationRepository", "mediationDataSource", "provideOperativeEventObserver", "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;", "operativeEventRepository", "Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;", "provideOperativeEventRequestPolicy", "provideOtherRequestPolicy", "providePrivacyDeviceInfoDataSource", "providePrivacyFsmDataStore", "provideRefresh", "getAdDataRefreshRequest", "getRequestPolicy", "provideSDKDispatchers", "provideSDKErrorHandler", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "sdkMetricsSender", "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;", "provideSDKMetricSender", "provideSDKScope", "errorHandler", "provideSendWebViewClientErrorDiagnostics", "provideSessionRepository", "gatewayCacheDataSource", "privacyDataSource", "privacyFsmDataSource", "nativeConfiguration", "provideShow", "gameServerIdReader", "Lcom/unity3d/ads/core/configuration/GameServerIdReader;", "provideStaticDeviceInfoDataSource", "idfiStore", "auidStore", "glInfoStore", "analyticsDataSource", "Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;", "provideTriggerInitializationCompletedRequest", "getInitializationCompletedRequest", "provideTriggerInitializeListener", "provideUniversalRequestDataSource", "LUniversalRequestStoreOuterClass$UniversalRequestStore;", "provideUniversalRequestDataStore", "provideUserConsentDataStore", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class ServiceProvider implements IServiceProvider {
    public static final String DATA_STORE_AUID = "auid.pb";
    public static final String DATA_STORE_GATEWAY_CACHE = "gateway_cache.pb";
    public static final String DATA_STORE_GL_INFO = "glinfo.pb";
    public static final String DATA_STORE_IDFI = "idfi.pb";
    public static final String DATA_STORE_PRIVACY = "privacy.pb";
    public static final String DATA_STORE_PRIVACY_FSM = "privacy_fsm.pb";
    public static final String DATA_STORE_UNIVERSAL_REQUEST = "universal_request.pb";
    public static final String DEV_CONSENT_PRIVACY_RULES = "dev_consent_privacy_rules";
    public static final String GATEWAY_HOST = "gateway.unityads.unity3d.com";
    public static final int GATEWAY_PORT = 443;
    public static final long HTTP_CACHE_DISK_SIZE = 5242880;
    public static final long HTTP_CLIENT_FETCH_TIMEOUT = 500;
    public static final ServiceProvider INSTANCE;
    public static final String LEGACY_PRIVACY_RULES = "legacy_privacy_rules";
    public static final String NAMED_AD_REQ = "ad_req";
    public static final String NAMED_INIT_REQ = "init_req";
    public static final String NAMED_OPERATIVE_REQ = "op_event_req";
    public static final String NAMED_OTHER_REQ = "other_req";
    public static final String NAMED_SDK = "sdk";
    public static final String PREF_AUID = "supersonic_shared_preferen";
    public static final String PREF_DEFAULT = "default-migration";
    public static final String PREF_GL_INFO = "glinfo";
    public static final String PREF_IDFI = "unityads-installinfo";
    private static final IServicesRegistry serviceRegistry;

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1, reason: invalid class name */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lcom/unity3d/services/core/di/ServicesRegistry;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class AnonymousClass1 extends Lambda implements Function1<ServicesRegistry, v> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroid/content/Context;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class C04571 extends Lambda implements Function0<Context> {
            public static final C04571 INSTANCE = new C04571();

            C04571() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Context invoke() {
                Context applicationContext = ClientProperties.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext()");
                return applicationContext;
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$10, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataMigration;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass10 extends Lambda implements Function0<DataMigration<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass10(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideFetchGLInfoDataMigration((GetOpenGLRendererInfo) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOpenGLRendererInfo.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$100, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/HandleOpenUrl;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass100 extends Lambda implements Function0<HandleOpenUrl> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass100(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleOpenUrl invoke() {
                return new AndroidHandleOpenUrl((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$101, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass101 extends Lambda implements Function0<GetOpenGLRendererInfo> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass101(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetOpenGLRendererInfo invoke() {
                return ServiceProvider.INSTANCE.provideGetOpenGLRendererInfo((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$102, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass102 extends Lambda implements Function0<ExecuteAdViewerRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass102(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ExecuteAdViewerRequest invoke() {
                return ServiceProvider.INSTANCE.provideExecuteAdViewerRequest((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (HttpClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClient.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$103, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetPrivacyUpdateRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass103 extends Lambda implements Function0<GetPrivacyUpdateRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass103(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetPrivacyUpdateRequest invoke() {
                return new GetPrivacyUpdateRequest((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$104, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass104 extends Lambda implements Function0<SendPrivacyUpdateRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass104(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SendPrivacyUpdateRequest invoke() {
                return new SendPrivacyUpdateRequest((GetPrivacyUpdateRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetPrivacyUpdateRequest.class))), (GetRequestPolicy) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$105, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass105 extends Lambda implements Function0<FlattenerRulesUseCase> {
            public static final AnonymousClass105 INSTANCE = new AnonymousClass105();

            AnonymousClass105() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FlattenerRulesUseCase invoke() {
                return new LegacyUserConsentFlattenerRulesUseCase();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$106, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/LegacyUserConsentDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass106 extends Lambda implements Function0<LegacyUserConsentDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass106(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LegacyUserConsentDataSource invoke() {
                return new AndroidLegacyUserConsentDataSource((FlattenerRulesUseCase) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.LEGACY_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class))), (JsonStorage) this.$this_registry.resolveService(new ServiceKey(StorageManager.StorageType.PRIVATE.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$107, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass107 extends Lambda implements Function0<LegacyUserConsentRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass107(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LegacyUserConsentRepository invoke() {
                return new AndroidLegacyUserConsentRepository((LegacyUserConsentDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentDataSource.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$108, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass108 extends Lambda implements Function0<FlattenerRulesUseCase> {
            public static final AnonymousClass108 INSTANCE = new AnonymousClass108();

            AnonymousClass108() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FlattenerRulesUseCase invoke() {
                return new DeveloperConsentFlattenerRulesUseCase();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$109, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass109 extends Lambda implements Function0<DeveloperConsentDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass109(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DeveloperConsentDataSource invoke() {
                return new AndroidDeveloperConsentDataSource((FlattenerRulesUseCase) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DEV_CONSENT_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class))), (JsonStorage) this.$this_registry.resolveService(new ServiceKey(StorageManager.StorageType.PUBLIC.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$11, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass11 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass11(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideGatewayCacheDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$110, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass110 extends Lambda implements Function0<DeveloperConsentRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass110(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DeveloperConsentRepository invoke() {
                return new AndroidDeveloperConsentRepository((DeveloperConsentDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentDataSource.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$111, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/manager/StorageManager;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass111 extends Lambda implements Function0<com.unity3d.ads.core.data.manager.StorageManager> {
            public static final AnonymousClass111 INSTANCE = new AnonymousClass111();

            AnonymousClass111() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final com.unity3d.ads.core.data.manager.StorageManager invoke() {
                return new AndroidStorageManager();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$112, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass112 extends Lambda implements Function0<SDKPropertiesManager> {
            public static final AnonymousClass112 INSTANCE = new AnonymousClass112();

            AnonymousClass112() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SDKPropertiesManager invoke() {
                return new AndroidSDKPropertiesManager();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$113, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/ads/measurements/MeasurementsService;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass113 extends Lambda implements Function0<MeasurementsService> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass113(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MeasurementsService invoke() {
                Context applicationContext = ClientProperties.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext()");
                return new MeasurementsService(applicationContext, (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), SharedInstances.INSTANCE.getWebViewEventSender());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$114, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/ads/topics/TopicsService;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass114 extends Lambda implements Function0<TopicsService> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass114(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TopicsService invoke() {
                Context applicationContext = ClientProperties.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext()");
                return new TopicsService(applicationContext, (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), SharedInstances.INSTANCE.getWebViewEventSender());
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$12, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass12 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass12(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideUserConsentDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$13, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass13 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass13(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.providePrivacyFsmDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$14, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass14 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass14(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideIdfiDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (DataMigration) this.$this_registry.resolveService(new ServiceKey("unityads-installinfo", Reflection.getOrCreateKotlinClass(DataMigration.class))), (DataMigration) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.PREF_DEFAULT, Reflection.getOrCreateKotlinClass(DataMigration.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$15, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass15 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass15(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideAuidDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (DataMigration) this.$this_registry.resolveService(new ServiceKey("supersonic_shared_preferen", Reflection.getOrCreateKotlinClass(DataMigration.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$16, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass16 extends Lambda implements Function0<DataStore<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass16(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideGlInfoDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (DataMigration) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.PREF_GL_INFO, Reflection.getOrCreateKotlinClass(DataMigration.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$17, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataStore;", "LUniversalRequestStoreOuterClass$UniversalRequestStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass17 extends Lambda implements Function0<DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass17(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> invoke() {
                return ServiceProvider.INSTANCE.provideUniversalRequestDataStore((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$18, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateNetworkError;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass18 extends Lambda implements Function0<InitializeStateNetworkError> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass18(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateNetworkError invoke() {
                return new InitializeStateNetworkError((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$19, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass19 extends Lambda implements Function0<ConfigFileFromLocalStorage> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass19(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ConfigFileFromLocalStorage invoke() {
                return new ConfigFileFromLocalStorage((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$2, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass2 extends Lambda implements Function0<SDKMetricsSender> {
            public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

            AnonymousClass2() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SDKMetricsSender invoke() {
                return ServiceProvider.INSTANCE.provideSDKMetricSender();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$20, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateReset;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass20 extends Lambda implements Function0<InitializeStateReset> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass20(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateReset invoke() {
                return new InitializeStateReset((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$21, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateError;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass21 extends Lambda implements Function0<InitializeStateError> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass21(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateError invoke() {
                return new InitializeStateError((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$22, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateConfigWithLoader;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass22 extends Lambda implements Function0<InitializeStateConfigWithLoader> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass22(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateConfigWithLoader invoke() {
                return new InitializeStateConfigWithLoader((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (InitializeStateNetworkError) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateNetworkError.class))), (TokenStorage) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TokenStorage.class))), (SDKMetricsSender) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKMetricsSender.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$23, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateConfig;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass23 extends Lambda implements Function0<InitializeStateConfig> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass23(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateConfig invoke() {
                return new InitializeStateConfig((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (InitializeStateConfigWithLoader) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateConfigWithLoader.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$24, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateCreate;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass24 extends Lambda implements Function0<InitializeStateCreate> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass24(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateCreate invoke() {
                return new InitializeStateCreate((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$25, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateLoadCache;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass25 extends Lambda implements Function0<InitializeStateLoadCache> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass25(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateLoadCache invoke() {
                return new InitializeStateLoadCache((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$26, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateCreateWithRemote;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass26 extends Lambda implements Function0<InitializeStateCreateWithRemote> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass26(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateCreateWithRemote invoke() {
                return new InitializeStateCreateWithRemote((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$27, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateLoadWeb;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass27 extends Lambda implements Function0<InitializeStateLoadWeb> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass27(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateLoadWeb invoke() {
                return new InitializeStateLoadWeb((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (InitializeStateNetworkError) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateNetworkError.class))), (HttpClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClient.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$28, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeStateComplete;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass28 extends Lambda implements Function0<InitializeStateComplete> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass28(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeStateComplete invoke() {
                return new InitializeStateComplete((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$29, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/task/InitializeSDK;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass29 extends Lambda implements Function0<InitializeSDK> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass29(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeSDK invoke() {
                return new InitializeSDK((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (ConfigFileFromLocalStorage) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ConfigFileFromLocalStorage.class))), (InitializeStateReset) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateReset.class))), (InitializeStateError) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateError.class))), (InitializeStateConfig) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateConfig.class))), (InitializeStateCreate) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateCreate.class))), (InitializeStateLoadCache) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateLoadCache.class))), (InitializeStateCreateWithRemote) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateCreateWithRemote.class))), (InitializeStateLoadWeb) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateLoadWeb.class))), (InitializeStateComplete) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateComplete.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$3, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass3 extends Lambda implements Function0<ISDKDispatchers> {
            public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

            AnonymousClass3() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ISDKDispatchers invoke() {
                return ServiceProvider.INSTANCE.provideSDKDispatchers();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$30, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/ads/token/TokenStorage;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass30 extends Lambda implements Function0<TokenStorage> {
            public static final AnonymousClass30 INSTANCE = new AnonymousClass30();

            AnonymousClass30() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TokenStorage invoke() {
                return new InMemoryTokenStorage();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$31, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/ads/token/AsyncTokenStorage;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass31 extends Lambda implements Function0<AsyncTokenStorage> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass31(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AsyncTokenStorage invoke() {
                return new InMemoryAsyncTokenStorage(null, new Handler(Looper.getMainLooper()), SDKMetrics.getInstance(), (TokenStorage) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TokenStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$32, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/device/VolumeChange;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass32 extends Lambda implements Function0<VolumeChange> {
            public static final AnonymousClass32 INSTANCE = new AnonymousClass32();

            AnonymousClass32() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final VolumeChange invoke() {
                return new VolumeChangeContentObserver();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$33, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/device/VolumeChangeMonitor;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass33 extends Lambda implements Function0<VolumeChangeMonitor> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass33(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final VolumeChangeMonitor invoke() {
                return new VolumeChangeMonitor(SharedInstances.INSTANCE.getWebViewEventSender(), (VolumeChange) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(VolumeChange.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$34, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/misc/JsonStorage;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass34 extends Lambda implements Function0<JsonStorage> {
            public static final AnonymousClass34 INSTANCE = new AnonymousClass34();

            AnonymousClass34() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final JsonStorage invoke() {
                return ServiceProvider.INSTANCE.provideJsonStorage(StorageManager.StorageType.PUBLIC);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$35, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/misc/JsonStorage;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass35 extends Lambda implements Function0<JsonStorage> {
            public static final AnonymousClass35 INSTANCE = new AnonymousClass35();

            AnonymousClass35() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final JsonStorage invoke() {
                return ServiceProvider.INSTANCE.provideJsonStorage(StorageManager.StorageType.PRIVATE);
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$36, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/configuration/GameServerIdReader;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass36 extends Lambda implements Function0<GameServerIdReader> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass36(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GameServerIdReader invoke() {
                return new GameServerIdReader((JsonStorage) this.$this_registry.resolveService(new ServiceKey(StorageManager.StorageType.PUBLIC.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$37, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass37 extends Lambda implements Function0<AlternativeFlowReader> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass37(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AlternativeFlowReader invoke() {
                return new AlternativeFlowReader((JsonStorage) this.$this_registry.resolveService(new ServiceKey(StorageManager.StorageType.PUBLIC.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$38, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass38 extends Lambda implements Function0<GetRequestPolicy> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass38(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetRequestPolicy invoke() {
                return ServiceProvider.INSTANCE.provideInitRequestPolicy((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$39, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass39 extends Lambda implements Function0<GetRequestPolicy> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass39(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetRequestPolicy invoke() {
                return ServiceProvider.INSTANCE.provideOperativeEventRequestPolicy((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$4, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass4 extends Lambda implements Function0<CoroutineExceptionHandler> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass4(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineExceptionHandler invoke() {
                return ServiceProvider.INSTANCE.provideSDKErrorHandler((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (AlternativeFlowReader) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (SDKMetricsSender) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKMetricsSender.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$40, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass40 extends Lambda implements Function0<GetRequestPolicy> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass40(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetRequestPolicy invoke() {
                return ServiceProvider.INSTANCE.provideOtherRequestPolicy((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$41, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass41 extends Lambda implements Function0<GetRequestPolicy> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass41(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetRequestPolicy invoke() {
                return ServiceProvider.INSTANCE.provideAdRequestPolicy((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$42, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass42 extends Lambda implements Function0<NativeConfigurationOuterClass.NativeConfiguration> {
            public static final AnonymousClass42 INSTANCE = new AnonymousClass42();

            AnonymousClass42() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final NativeConfigurationOuterClass.NativeConfiguration invoke() {
                return ServiceProvider.INSTANCE.provideDefaultNativeConfiguration();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$43, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/work/BackgroundWorker;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass43 extends Lambda implements Function0<BackgroundWorker> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass43(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BackgroundWorker invoke() {
                return new BackgroundWorker((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$44, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/lifecycle/LifecycleCache;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass44 extends Lambda implements Function0<LifecycleCache> {
            public static final AnonymousClass44 INSTANCE = new AnonymousClass44();

            AnonymousClass44() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LifecycleCache invoke() {
                return ServiceProvider.INSTANCE.provideLifeCycleCache();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$45, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass45 extends Lambda implements Function0<StaticDeviceInfoDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass45(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final StaticDeviceInfoDataSource invoke() {
                return ServiceProvider.INSTANCE.provideStaticDeviceInfoDataSource((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_IDFI, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_AUID, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (AnalyticsDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AnalyticsDataSource.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$46, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass46 extends Lambda implements Function0<AnalyticsDataSource> {
            public static final AnonymousClass46 INSTANCE = new AnonymousClass46();

            AnonymousClass46() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AnalyticsDataSource invoke() {
                return new AndroidAnalyticsDataSource();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$47, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass47 extends Lambda implements Function0<DynamicDeviceInfoDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass47(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DynamicDeviceInfoDataSource invoke() {
                return ServiceProvider.INSTANCE.provideDynamicDeviceInfoDataSource((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (LifecycleCache) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleCache.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$48, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass48 extends Lambda implements Function0<PrivacyDeviceInfoDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass48(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PrivacyDeviceInfoDataSource invoke() {
                return ServiceProvider.INSTANCE.providePrivacyDeviceInfoDataSource((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$49, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass49 extends Lambda implements Function0<MediationDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass49(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MediationDataSource invoke() {
                return ServiceProvider.INSTANCE.provideMediationDataSource((JsonStorage) this.$this_registry.resolveService(new ServiceKey(StorageManager.StorageType.PUBLIC.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$5, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/coroutines/CoroutineScope;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass5 extends Lambda implements Function0<CoroutineScope> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass5(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            @Override // kotlin.jvm.functions.Function0
            public final CoroutineScope invoke() {
                return ServiceProvider.INSTANCE.provideSDKScope((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (CoroutineExceptionHandler) this.$this_registry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$50, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass50 extends Lambda implements Function0<GatewayClient> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass50(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GatewayClient invoke() {
                return ServiceProvider.INSTANCE.provideGatewayClient((HttpClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClient.class))), (HandleGatewayUniversalResponse) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayUniversalResponse.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$51, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass51 extends Lambda implements Function0<AndroidWebViewClient> {
            public static final AnonymousClass51 INSTANCE = new AnonymousClass51();

            AnonymousClass51() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AndroidWebViewClient invoke() {
                return ServiceProvider.INSTANCE.provideAndroidWebViewClient();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$52, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass52 extends Lambda implements Function0<SessionRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass52(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SessionRepository invoke() {
                return ServiceProvider.INSTANCE.provideSessionRepository((ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (ByteStringDataSource) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class))), (NativeConfigurationOuterClass.NativeConfiguration) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(NativeConfigurationOuterClass.NativeConfiguration.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$53, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass53 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass53(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$54, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass54 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass54(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$55, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass55 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass55(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_IDFI, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$56, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass56 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass56(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_AUID, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$57, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass57 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass57(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$58, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass58 extends Lambda implements Function0<ByteStringDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass58(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ByteStringDataSource invoke() {
                return ServiceProvider.INSTANCE.provideByteStringDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$59, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass59 extends Lambda implements Function0<UniversalRequestDataSource> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass59(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final UniversalRequestDataSource invoke() {
                return ServiceProvider.INSTANCE.provideUniversalRequestDataSource((DataStore) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST, Reflection.getOrCreateKotlinClass(DataStore.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$6, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/network/core/HttpClient;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass6 extends Lambda implements Function0<HttpClient> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass6(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HttpClient invoke() {
                return ServiceProvider.INSTANCE.provideHttpClient((ConfigFileFromLocalStorage) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ConfigFileFromLocalStorage.class))), (AlternativeFlowReader) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$60, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass60 extends Lambda implements Function0<DeviceInfoRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass60(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DeviceInfoRepository invoke() {
                return ServiceProvider.INSTANCE.provideDeviceInfoRepository((StaticDeviceInfoDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class))), (DynamicDeviceInfoDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DynamicDeviceInfoDataSource.class))), (PrivacyDeviceInfoDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PrivacyDeviceInfoDataSource.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$61, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/MediationRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass61 extends Lambda implements Function0<MediationRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass61(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final MediationRepository invoke() {
                return ServiceProvider.INSTANCE.provideMediationRepository((MediationDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationDataSource.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$62, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass62 extends Lambda implements Function0<HandleAndroidInvocationsUseCase> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass62(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleAndroidInvocationsUseCase invoke() {
                return ServiceProvider.INSTANCE.provideGetAndroidExposureUseCase((GetAndroidAdPlayerContext) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAndroidAdPlayerContext.class))), (GetOperativeEventApi) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class))), (Refresh) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Refresh.class))), (HandleOpenUrl) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleOpenUrl.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignStateRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class))), (SendPrivacyUpdateRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendPrivacyUpdateRequest.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$63, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetClientInfo;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass63 extends Lambda implements Function0<GetClientInfo> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass63(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetClientInfo invoke() {
                return ServiceProvider.INSTANCE.provideGetClientInfo((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (MediationRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$64, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass64 extends Lambda implements Function0<HandleGatewayUniversalResponse> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass64(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleGatewayUniversalResponse invoke() {
                return ServiceProvider.INSTANCE.provideHandleGatewayUniversalResponse((SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$65, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass65 extends Lambda implements Function0<TriggerInitializeListener> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass65(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TriggerInitializeListener invoke() {
                return ServiceProvider.INSTANCE.provideTriggerInitializeListener((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$66, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass66 extends Lambda implements Function0<InitializeBoldSDK> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass66(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeBoldSDK invoke() {
                return ServiceProvider.INSTANCE.provideInitializeBoldSDK((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (GetInitializationRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequest.class))), (GetRequestPolicy) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (HandleGatewayInitializationResponse) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayInitializationResponse.class))), (GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (EventObservers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(EventObservers.class))), (TriggerInitializeListener) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializeListener.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (DiagnosticEventRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (com.unity3d.ads.core.data.manager.StorageManager) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(com.unity3d.ads.core.data.manager.StorageManager.class))), (SDKPropertiesManager) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$67, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetInitializationRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass67 extends Lambda implements Function0<GetInitializationRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass67(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetInitializationRequest invoke() {
                return ServiceProvider.INSTANCE.provideGetInitializationRequest((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (GetClientInfo) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetClientInfo.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (LegacyUserConsentRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$68, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass68 extends Lambda implements Function0<HandleGatewayInitializationResponse> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass68(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleGatewayInitializationResponse invoke() {
                return ServiceProvider.INSTANCE.provideHandleGatewayInitializationResponse((TriggerInitializationCompletedRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializationCompletedRequest.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CoroutineScope) this.$this_registry.resolveService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineScope.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$69, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass69 extends Lambda implements Function0<GetUniversalRequestForPayLoad> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass69(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetUniversalRequestForPayLoad invoke() {
                return ServiceProvider.INSTANCE.provideGetUniversalRequestForPayLoad((GetUniversalRequestSharedData) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestSharedData.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$7, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataMigration;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass7 extends Lambda implements Function0<DataMigration<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass7(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideIdfiDataMigration((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$70, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass70 extends Lambda implements Function0<GetUniversalRequestSharedData> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass70(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetUniversalRequestSharedData invoke() {
                return ServiceProvider.INSTANCE.provideGetUniversalRequestSharedData((GetSharedDataTimestamps) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (DeveloperConsentRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$71, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass71 extends Lambda implements Function0<GetSharedDataTimestamps> {
            public static final AnonymousClass71 INSTANCE = new AnonymousClass71();

            AnonymousClass71() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetSharedDataTimestamps invoke() {
                return ServiceProvider.INSTANCE.provideGetSharedDataTimestamps();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$72, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/Load;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass72 extends Lambda implements Function0<Load> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass72(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Load invoke() {
                return ServiceProvider.INSTANCE.provideLoad((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (GetAdRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRequest.class))), (GetRequestPolicy) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (HandleGatewayAdResponse) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayAdResponse.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (AdRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$73, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/Refresh;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass73 extends Lambda implements Function0<Refresh> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass73(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Refresh invoke() {
                return ServiceProvider.INSTANCE.provideRefresh((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (GetAdDataRefreshRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdDataRefreshRequest.class))), (GetRequestPolicy) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$74, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass74 extends Lambda implements Function0<LegacyLoadUseCase> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass74(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LegacyLoadUseCase invoke() {
                return ServiceProvider.INSTANCE.provideLegacyLoadUseCase((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (Load) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Load.class))), (AdRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$75, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetAdRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass75 extends Lambda implements Function0<GetAdRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass75(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetAdRequest invoke() {
                return ServiceProvider.INSTANCE.provideGetAdRequest((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignStateRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$76, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass76 extends Lambda implements Function0<GetAdDataRefreshRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass76(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetAdDataRefreshRequest invoke() {
                return ServiceProvider.INSTANCE.provideGetAdDataRefreshRequest((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (CampaignStateRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$77, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass77 extends Lambda implements Function0<HandleGatewayAdResponse> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass77(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleGatewayAdResponse invoke() {
                return ServiceProvider.INSTANCE.provideHandleGatewayAdResponse((AdRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (AndroidGetWebViewContainerUseCase) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class))), (GetWebViewBridgeUseCase) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetWebViewBridgeUseCase.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (HandleAndroidInvocationsUseCase) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleAndroidInvocationsUseCase.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CampaignStateRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class))), (ExecuteAdViewerRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetOperativeEventApi) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$78, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass78 extends Lambda implements Function0<AdRepository> {
            public static final AnonymousClass78 INSTANCE = new AnonymousClass78();

            AnonymousClass78() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AdRepository invoke() {
                return ServiceProvider.INSTANCE.provideAdRepository();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$79, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass79 extends Lambda implements Function0<CampaignStateRepository> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass79(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CampaignStateRepository invoke() {
                return ServiceProvider.INSTANCE.provideCampaignStateRepository((GetSharedDataTimestamps) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$8, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataMigration;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass8 extends Lambda implements Function0<DataMigration<ByteStringStoreOuterClass.ByteStringStore>> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass8(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideAuidDataMigration((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$80, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass80 extends Lambda implements Function0<GetOperativeEventApi> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass80(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetOperativeEventApi invoke() {
                return new GetOperativeEventApi((OperativeEventRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class))), (GetOperativeEventRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventRequest.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$81, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass81 extends Lambda implements Function0<GetOperativeEventRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass81(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetOperativeEventRequest invoke() {
                return new GetOperativeEventRequest((DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))), (CampaignStateRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$82, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/HandleGatewayEventResponse;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass82 extends Lambda implements Function0<HandleGatewayEventResponse> {
            public static final AnonymousClass82 INSTANCE = new AnonymousClass82();

            AnonymousClass82() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final HandleGatewayEventResponse invoke() {
                return new HandleGatewayAndroidEventResponse();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$83, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass83 extends Lambda implements Function0<OperativeEventRepository> {
            public static final AnonymousClass83 INSTANCE = new AnonymousClass83();

            AnonymousClass83() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OperativeEventRepository invoke() {
                return new OperativeEventRepository();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$84, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass84 extends Lambda implements Function0<OperativeEventObserver> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass84(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final OperativeEventObserver invoke() {
                return ServiceProvider.INSTANCE.provideOperativeEventObserver((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (OperativeEventRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class))), (UniversalRequestDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class))), (BackgroundWorker) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$85, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass85 extends Lambda implements Function0<GetDiagnosticEventRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass85(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetDiagnosticEventRequest invoke() {
                return new GetDiagnosticEventRequest((GetSharedDataTimestamps) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$86, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass86 extends Lambda implements Function0<DiagnosticEventRepository> {
            public static final AnonymousClass86 INSTANCE = new AnonymousClass86();

            AnonymousClass86() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DiagnosticEventRepository invoke() {
                return new AndroidDiagnosticEventRepository();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$87, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass87 extends Lambda implements Function0<SendDiagnosticEvent> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass87(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SendDiagnosticEvent invoke() {
                return new AndroidSendDiagnosticEvent((DiagnosticEventRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (GetDiagnosticEventRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventRequest.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$88, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass88 extends Lambda implements Function0<GetDiagnosticEventBatchRequest> {
            public static final AnonymousClass88 INSTANCE = new AnonymousClass88();

            AnonymousClass88() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetDiagnosticEventBatchRequest invoke() {
                return new GetDiagnosticEventBatchRequest();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$89, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass89 extends Lambda implements Function0<DiagnosticEventObserver> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass89(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DiagnosticEventObserver invoke() {
                return ServiceProvider.INSTANCE.provideDiagnosticEventObserver((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (GetDiagnosticEventBatchRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventBatchRequest.class))), (ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (DiagnosticEventRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class))), (UniversalRequestDataSource) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class))), (BackgroundWorker) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$9, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroidx/datastore/core/DataMigration;", "LByteStringStoreOuterClass$ByteStringStore;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass9 extends Lambda implements Function0<DataMigration<ByteStringStoreOuterClass.ByteStringStore>> {
            public static final AnonymousClass9 INSTANCE = new AnonymousClass9();

            AnonymousClass9() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> invoke() {
                return ServiceProvider.INSTANCE.provideDefaultDataMigration();
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$90, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/EventObservers;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass90 extends Lambda implements Function0<EventObservers> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass90(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final EventObservers invoke() {
                return new EventObservers((OperativeEventObserver) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventObserver.class))), (DiagnosticEventObserver) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventObserver.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$91, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/events/UniversalRequestEventSender;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass91 extends Lambda implements Function0<UniversalRequestEventSender> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass91(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final UniversalRequestEventSender invoke() {
                return new UniversalRequestEventSender((GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))), (HandleGatewayEventResponse) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$92, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/Show;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass92 extends Lambda implements Function0<Show> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass92(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Show invoke() {
                return ServiceProvider.INSTANCE.provideShow((AdRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (GameServerIdReader) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GameServerIdReader.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$93, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass93 extends Lambda implements Function0<LegacyShowUseCase> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass93(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final LegacyShowUseCase invoke() {
                return ServiceProvider.INSTANCE.provideLegacyShowUseCase((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (Show) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Show.class))), (AdRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))), (GetOperativeEventApi) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$94, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass94 extends Lambda implements Function0<AndroidGetWebViewContainerUseCase> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass94(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final AndroidGetWebViewContainerUseCase invoke() {
                return ServiceProvider.INSTANCE.provideGetWebViewContainerUseCase((Context) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class))), (AndroidWebViewClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidWebViewClient.class))), (SendWebViewClientErrorDiagnostics) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendWebViewClientErrorDiagnostics.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$95, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass95 extends Lambda implements Function0<SendWebViewClientErrorDiagnostics> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass95(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SendWebViewClientErrorDiagnostics invoke() {
                return ServiceProvider.INSTANCE.provideSendWebViewClientErrorDiagnostics((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))), (SendDiagnosticEvent) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$96, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass96 extends Lambda implements Function0<GetWebViewBridgeUseCase> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass96(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetWebViewBridgeUseCase invoke() {
                return ServiceProvider.INSTANCE.provideGetWebViewBridgeUseCase((ISDKDispatchers) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$97, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass97 extends Lambda implements Function0<GetAndroidAdPlayerContext> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass97(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetAndroidAdPlayerContext invoke() {
                return new GetAndroidAdPlayerContext((DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))), (SessionRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$98, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass98 extends Lambda implements Function0<GetInitializationCompletedRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass98(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GetInitializationCompletedRequest invoke() {
                return ServiceProvider.INSTANCE.provideGetInitializationCompletedRequest((GetUniversalRequestForPayLoad) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class))), (DeviceInfoRepository) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class))));
            }
        }

        /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$initialize$1$99, reason: invalid class name */
        /* JADX INFO: compiled from: ServiceProvider.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;", "invoke"}, mv = {1, 8, 0}, xi = 48)
        static final class AnonymousClass99 extends Lambda implements Function0<TriggerInitializationCompletedRequest> {
            final /* synthetic */ ServicesRegistry $this_registry;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass99(ServicesRegistry servicesRegistry) {
                super(0);
                this.$this_registry = servicesRegistry;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final TriggerInitializationCompletedRequest invoke() {
                return ServiceProvider.INSTANCE.provideTriggerInitializationCompletedRequest((GetInitializationCompletedRequest) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationCompletedRequest.class))), (GetRequestPolicy) this.$this_registry.resolveService(new ServiceKey(ServiceProvider.NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class))), (GatewayClient) this.$this_registry.resolveService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class))));
            }
        }

        AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(ServicesRegistry servicesRegistry) {
            invoke2(servicesRegistry);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(ServicesRegistry registry) {
            Intrinsics.checkNotNullParameter(registry, "$this$registry");
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Context.class)), LazyKt__LazyJVMKt.lazy(C04571.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKMetricsSender.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass2.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ISDKDispatchers.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass3.INSTANCE));
            registry.updateService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineExceptionHandler.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass4(registry)));
            registry.updateService(new ServiceKey("sdk", Reflection.getOrCreateKotlinClass(CoroutineScope.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass5(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HttpClient.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass6(registry)));
            registry.updateService(new ServiceKey("unityads-installinfo", Reflection.getOrCreateKotlinClass(DataMigration.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass7(registry)));
            registry.updateService(new ServiceKey("supersonic_shared_preferen", Reflection.getOrCreateKotlinClass(DataMigration.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass8(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.PREF_DEFAULT, Reflection.getOrCreateKotlinClass(DataMigration.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass9.INSTANCE));
            registry.updateService(new ServiceKey(ServiceProvider.PREF_GL_INFO, Reflection.getOrCreateKotlinClass(DataMigration.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass10(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass11(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass12(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass13(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_IDFI, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass14(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_AUID, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass15(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass16(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST, Reflection.getOrCreateKotlinClass(DataStore.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass17(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateNetworkError.class)), ServiceFactoryKt.factoryOf(new AnonymousClass18(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ConfigFileFromLocalStorage.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass19(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateReset.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass20(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateError.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass21(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateConfigWithLoader.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass22(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateConfig.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass23(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateCreate.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass24(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateLoadCache.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass25(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateCreateWithRemote.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass26(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateLoadWeb.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass27(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeStateComplete.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass28(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeSDK.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass29(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TokenStorage.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass30.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AsyncTokenStorage.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass31(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(VolumeChange.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass32.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(VolumeChangeMonitor.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass33(registry)));
            registry.updateService(new ServiceKey(StorageManager.StorageType.PUBLIC.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass34.INSTANCE));
            registry.updateService(new ServiceKey(StorageManager.StorageType.PRIVATE.name(), Reflection.getOrCreateKotlinClass(JsonStorage.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass35.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GameServerIdReader.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass36(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass37(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.NAMED_INIT_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass38(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.NAMED_OPERATIVE_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass39(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.NAMED_OTHER_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass40(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.NAMED_AD_REQ, Reflection.getOrCreateKotlinClass(GetRequestPolicy.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass41(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(NativeConfigurationOuterClass.NativeConfiguration.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass42.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(BackgroundWorker.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass43(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LifecycleCache.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass44.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(StaticDeviceInfoDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass45(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AnalyticsDataSource.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass46.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DynamicDeviceInfoDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass47(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(PrivacyDeviceInfoDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass48(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass49(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GatewayClient.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass50(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidWebViewClient.class)), ServiceFactoryKt.factoryOf(AnonymousClass51.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SessionRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass52(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_GATEWAY_CACHE, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass53(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass54(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_IDFI, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass55(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_AUID, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass56(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_PRIVACY_FSM, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass57(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DATA_STORE_GL_INFO, Reflection.getOrCreateKotlinClass(ByteStringDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass58(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass59(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass60(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MediationRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass61(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleAndroidInvocationsUseCase.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass62(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetClientInfo.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass63(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayUniversalResponse.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass64(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializeListener.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass65(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(InitializeBoldSDK.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass66(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass67(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayInitializationResponse.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass68(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestForPayLoad.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass69(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetUniversalRequestSharedData.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass70(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetSharedDataTimestamps.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass71.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Load.class)), ServiceFactoryKt.factoryOf(new AnonymousClass72(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Refresh.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass73(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyLoadUseCase.class)), ServiceFactoryKt.factoryOf(new AnonymousClass74(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass75(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAdDataRefreshRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass76(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayAdResponse.class)), ServiceFactoryKt.factoryOf(new AnonymousClass77(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AdRepository.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass78.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(CampaignStateRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass79(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass80(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOperativeEventRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass81(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleGatewayEventResponse.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass82.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventRepository.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass83.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(OperativeEventObserver.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass84(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass85(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventRepository.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass86.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass87(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetDiagnosticEventBatchRequest.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass88.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DiagnosticEventObserver.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass89(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(EventObservers.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass90(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(UniversalRequestEventSender.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass91(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(Show.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass92(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyShowUseCase.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass93(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(AndroidGetWebViewContainerUseCase.class)), ServiceFactoryKt.factoryOf(new AnonymousClass94(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendWebViewClientErrorDiagnostics.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass95(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetWebViewBridgeUseCase.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass96(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetAndroidAdPlayerContext.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass97(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetInitializationCompletedRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass98(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TriggerInitializationCompletedRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass99(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(HandleOpenUrl.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass100(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetOpenGLRendererInfo.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass101(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass102(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(GetPrivacyUpdateRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass103(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SendPrivacyUpdateRequest.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass104(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.LEGACY_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass105.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass106(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(LegacyUserConsentRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass107(registry)));
            registry.updateService(new ServiceKey(ServiceProvider.DEV_CONSENT_PRIVACY_RULES, Reflection.getOrCreateKotlinClass(FlattenerRulesUseCase.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass108.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentDataSource.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass109(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(DeveloperConsentRepository.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass110(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(com.unity3d.ads.core.data.manager.StorageManager.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass111.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(SDKPropertiesManager.class)), LazyKt__LazyJVMKt.lazy(AnonymousClass112.INSTANCE));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(MeasurementsService.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass113(registry)));
            registry.updateService(new ServiceKey("", Reflection.getOrCreateKotlinClass(TopicsService.class)), LazyKt__LazyJVMKt.lazy(new AnonymousClass114(registry)));
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideAuidDataStore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "LByteStringStoreOuterClass$ByteStringStore;", "it", "Landroidx/datastore/core/CorruptionException;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C16991 extends Lambda implements Function1<CorruptionException, ByteStringStoreOuterClass.ByteStringStore> {
        public static final C16991 INSTANCE = new C16991();

        C16991() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ByteStringStoreOuterClass.ByteStringStore invoke(CorruptionException it) {
            Intrinsics.checkNotNullParameter(it, "it");
            ByteStringStoreOuterClass.ByteStringStore byteStringStoreBuild = ByteStringStoreOuterClass.ByteStringStore.newBuilder().b(ByteString.empty()).build();
            Intrinsics.checkNotNullExpressionValue(byteStringStoreBuild, "newBuilder().setData(ByteString.empty()).build()");
            return byteStringStoreBuild;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideAuidDataStore$2, reason: invalid class name */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class AnonymousClass2 extends Lambda implements Function0<File> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() {
            return DataStoreFile.dataStoreFile(this.$context, ServiceProvider.DATA_STORE_AUID);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideByteStringDataStore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C17001 extends Lambda implements Function0<File> {
        final /* synthetic */ Context $context;
        final /* synthetic */ String $dataStoreFile;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17001(Context context, String str) {
            super(0);
            this.$context = context;
            this.$dataStoreFile = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() {
            return DataStoreFile.dataStoreFile(this.$context, this.$dataStoreFile);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideGlInfoDataStore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C17011 extends Lambda implements Function0<File> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17011(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() {
            return DataStoreFile.dataStoreFile(this.$context, ServiceProvider.DATA_STORE_GL_INFO);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/unity3d/services/core/network/core/HttpClient;", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1", f = "ServiceProvider.kt", i = {0, 1}, l = {536, 540}, m = "invokeSuspend", n = {"startTime", "client"}, s = {"J$0", "L$0"})
    static final class C17021 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpClient>, Object> {
        final /* synthetic */ AlternativeFlowReader $alternativeFlowReader;
        final /* synthetic */ ConfigFileFromLocalStorage $configFileFromLocalStorage;
        final /* synthetic */ Context $context;
        final /* synthetic */ ISDKDispatchers $dispatchers;
        final /* synthetic */ SendDiagnosticEvent $sendDiagnosticEvent;
        long J$0;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17021(AlternativeFlowReader alternativeFlowReader, SendDiagnosticEvent sendDiagnosticEvent, ISDKDispatchers iSDKDispatchers, Context context, ConfigFileFromLocalStorage configFileFromLocalStorage, Continuation<? super C17021> continuation) {
            super(2, continuation);
            this.$alternativeFlowReader = alternativeFlowReader;
            this.$sendDiagnosticEvent = sendDiagnosticEvent;
            this.$dispatchers = iSDKDispatchers;
            this.$context = context;
            this.$configFileFromLocalStorage = configFileFromLocalStorage;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new C17021(this.$alternativeFlowReader, this.$sendDiagnosticEvent, this.$dispatchers, this.$context, this.$configFileFromLocalStorage, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpClient> continuation) {
            return ((C17021) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) {
            /*
                r13 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r13.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L24
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r0 = r13.L$0
                com.unity3d.services.core.network.core.HttpClient r0 = (com.unity3d.services.core.network.core.HttpClient) r0
                kotlin.ResultKt.throwOnFailure(r14)
                goto L71
            L16:
                java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r14.<init>(r0)
                throw r14
            L1e:
                long r3 = r13.J$0
                kotlin.ResultKt.throwOnFailure(r14)
                goto L4b
            L24:
                kotlin.ResultKt.throwOnFailure(r14)
                com.unity3d.ads.core.configuration.AlternativeFlowReader r14 = r13.$alternativeFlowReader
                boolean r14 = r14.invoke()
                r1 = 0
                if (r14 == 0) goto L80
                long r4 = java.lang.System.nanoTime()
                r6 = 500(0x1f4, double:2.47E-321)
                com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1$client$1 r14 = new com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1$client$1
                android.content.Context r8 = r13.$context
                com.unity3d.services.core.domain.ISDKDispatchers r9 = r13.$dispatchers
                r14.<init>(r8, r9, r1)
                r13.J$0 = r4
                r13.label = r3
                java.lang.Object r14 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r6, r14, r13)
                if (r14 != r0) goto L4a
                return r0
            L4a:
                r3 = r4
            L4b:
                com.unity3d.services.core.network.core.HttpClient r14 = (com.unity3d.services.core.network.core.HttpClient) r14
                if (r14 != 0) goto L52
                java.lang.String r1 = "native_cronet_failure_time"
                goto L54
            L52:
                java.lang.String r1 = "native_cronet_success_time"
            L54:
                r6 = r1
                com.unity3d.ads.core.domain.SendDiagnosticEvent r5 = r13.$sendDiagnosticEvent
                long r3 = com.unity3d.ads.core.extensions.TimestampExtensionsKt.duration(r3)
                java.lang.Long r7 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
                r8 = 0
                r9 = 0
                r11 = 12
                r12 = 0
                r13.L$0 = r14
                r13.label = r2
                r10 = r13
                java.lang.Object r1 = com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r5, r6, r7, r8, r9, r10, r11, r12)
                if (r1 != r0) goto L70
                return r0
            L70:
                r0 = r14
            L71:
                if (r0 != 0) goto Lb4
                com.unity3d.services.core.network.core.OkHttp3Client r0 = new com.unity3d.services.core.network.core.OkHttp3Client
                com.unity3d.services.core.domain.ISDKDispatchers r14 = r13.$dispatchers
                okhttp3.OkHttpClient r1 = new okhttp3.OkHttpClient
                r1.<init>()
                r0.<init>(r14, r1)
                goto Lb4
            L80:
                com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1$config$1 r14 = new com.unity3d.services.core.di.ServiceProvider$provideHttpClient$1$config$1
                com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage r0 = r13.$configFileFromLocalStorage
                r14.<init>(r0, r1)
                java.lang.Object r14 = kotlinx.coroutines.BuildersKt.runBlocking$default(r1, r14, r3, r1)
                com.unity3d.services.core.configuration.Configuration r14 = (com.unity3d.services.core.configuration.Configuration) r14
                r0 = 0
                if (r14 == 0) goto L9d
                com.unity3d.services.core.configuration.IExperiments r14 = r14.getExperiments()
                if (r14 == 0) goto L9d
                boolean r14 = r14.isOkHttpEnabled()
                if (r14 != r3) goto L9d
                goto L9e
            L9d:
                r3 = 0
            L9e:
                if (r3 == 0) goto Lad
                com.unity3d.services.core.network.core.OkHttp3Client r0 = new com.unity3d.services.core.network.core.OkHttp3Client
                com.unity3d.services.core.domain.ISDKDispatchers r14 = r13.$dispatchers
                okhttp3.OkHttpClient r1 = new okhttp3.OkHttpClient
                r1.<init>()
                r0.<init>(r14, r1)
                goto Lb4
            Lad:
                com.unity3d.services.core.network.core.LegacyHttpClient r0 = new com.unity3d.services.core.network.core.LegacyHttpClient
                com.unity3d.services.core.domain.ISDKDispatchers r14 = r13.$dispatchers
                r0.<init>(r14)
            Lb4:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.di.ServiceProvider.C17021.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideIdfiDataStore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "LByteStringStoreOuterClass$ByteStringStore;", "it", "Landroidx/datastore/core/CorruptionException;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C17031 extends Lambda implements Function1<CorruptionException, ByteStringStoreOuterClass.ByteStringStore> {
        public static final C17031 INSTANCE = new C17031();

        C17031() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final ByteStringStoreOuterClass.ByteStringStore invoke(CorruptionException it) {
            Intrinsics.checkNotNullParameter(it, "it");
            UUID idfi = UUID.randomUUID();
            AndroidPreferences.setString("unityads-installinfo", AndroidStaticDeviceInfoDataSource.PREF_KEY_IDFI, idfi.toString());
            ByteStringStoreOuterClass.ByteStringStore.a aVarNewBuilder = ByteStringStoreOuterClass.ByteStringStore.newBuilder();
            Intrinsics.checkNotNullExpressionValue(idfi, "idfi");
            ByteStringStoreOuterClass.ByteStringStore byteStringStoreBuild = aVarNewBuilder.b(ProtobufExtensionsKt.toByteString(idfi)).build();
            Intrinsics.checkNotNullExpressionValue(byteStringStoreBuild, "newBuilder().setData(idfi.toByteString()).build()");
            return byteStringStoreBuild;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideIdfiDataStore$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C17042 extends Lambda implements Function0<File> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17042(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() {
            return DataStoreFile.dataStoreFile(this.$context, ServiceProvider.DATA_STORE_IDFI);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.core.di.ServiceProvider$provideUniversalRequestDataStore$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ServiceProvider.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Ljava/io/File;", "invoke"}, mv = {1, 8, 0}, xi = 48)
    static final class C17051 extends Lambda implements Function0<File> {
        final /* synthetic */ Context $context;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17051(Context context) {
            super(0);
            this.$context = context;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final File invoke() {
            return DataStoreFile.dataStoreFile(this.$context, ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST);
        }
    }

    static {
        ServiceProvider serviceProvider = new ServiceProvider();
        INSTANCE = serviceProvider;
        serviceRegistry = serviceProvider.initialize();
    }

    private ServiceProvider() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object buildNetworkClient(final Context context, final ISDKDispatchers iSDKDispatchers, Continuation<? super HttpClient> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        CronetProviderInstaller.installProvider(context).addOnCompleteListener(new OnCompleteListener() { // from class: com.unity3d.services.core.di.ServiceProvider$buildNetworkClient$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task<Void> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (!it.isSuccessful()) {
                    CancellableContinuation<HttpClient> cancellableContinuation = cancellableContinuationImpl;
                    Result.a aVar = Result.a;
                    cancellableContinuation.resumeWith(Result.m1238constructorimpl(new OkHttp3Client(iSDKDispatchers, new OkHttpClient())));
                } else {
                    CronetEngine cronetEngine = new CronetEngine.Builder(context).setStoragePath(context.getFilesDir().getAbsolutePath()).enableHttpCache(3, ServiceProvider.HTTP_CACHE_DISK_SIZE).enableQuic(true).addQuicHint(ServiceProvider.GATEWAY_HOST, ServiceProvider.GATEWAY_PORT, ServiceProvider.GATEWAY_PORT).build();
                    CancellableContinuation<HttpClient> cancellableContinuation2 = cancellableContinuationImpl;
                    Result.a aVar2 = Result.a;
                    Intrinsics.checkNotNullExpressionValue(cronetEngine, "cronetEngine");
                    cancellableContinuation2.resumeWith(Result.m1238constructorimpl(new CronetClient(cronetEngine, iSDKDispatchers)));
                }
            }
        });
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY;
    }

    private final NativeConfigurationOuterClass.RequestPolicy getDefaultRequestPolicy() {
        j0.a aVar = j0.a;
        NativeConfigurationOuterClass.RequestPolicy.a aVarNewBuilder = NativeConfigurationOuterClass.RequestPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        j0 j0VarA = aVar.a(aVarNewBuilder);
        ServiceProvider serviceProvider = INSTANCE;
        j0VarA.b(serviceProvider.getDefaultRequestRetryPolicy());
        j0VarA.c(serviceProvider.getDefaultRequestTimeoutPolicy());
        return j0VarA.a();
    }

    private final NativeConfigurationOuterClass.RequestRetryPolicy getDefaultRequestRetryPolicy() {
        k0.a aVar = k0.a;
        NativeConfigurationOuterClass.RequestRetryPolicy.a aVarNewBuilder = NativeConfigurationOuterClass.RequestRetryPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        k0 k0VarA = aVar.a(aVarNewBuilder);
        k0VarA.b(30000);
        k0VarA.d(30000);
        k0VarA.c(0.1f);
        k0VarA.e(false);
        return k0VarA.a();
    }

    private final NativeConfigurationOuterClass.RequestTimeoutPolicy getDefaultRequestTimeoutPolicy() {
        l0.a aVar = l0.a;
        NativeConfigurationOuterClass.RequestTimeoutPolicy.a aVarNewBuilder = NativeConfigurationOuterClass.RequestTimeoutPolicy.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        l0 l0VarA = aVar.a(aVarNewBuilder);
        l0VarA.b(30000);
        l0VarA.c(30000);
        l0VarA.d(30000);
        return l0VarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdRepository provideAdRepository() {
        return new AndroidAdRepository();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetRequestPolicy provideAdRequestPolicy(SessionRepository sessionRepository) {
        return new GetAdRequestPolicy(sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AndroidWebViewClient provideAndroidWebViewClient() {
        return new AndroidWebViewClient();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> provideAuidDataMigration(Context context) {
        return new ForcefulPreservingByteStringPreferenceMigration(context, "supersonic_shared_preferen", "auid", new GetAuidData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideAuidDataStore(Context context, ISDKDispatchers iSDKDispatchers, DataMigration<ByteStringStoreOuterClass.ByteStringStore> dataMigration) {
        return DataStoreFactory.INSTANCE.create(new ByteStringSerializer(), new ReplaceFileCorruptionHandler(C16991.INSTANCE), CollectionsKt__CollectionsJVMKt.listOf(dataMigration), CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF8098io().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new AnonymousClass2(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ByteStringDataSource provideByteStringDataSource(DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        return new AndroidByteStringDataSource(dataStore);
    }

    private final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideByteStringDataStore(Context context, ISDKDispatchers iSDKDispatchers, String str) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, null, CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF8098io().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new C17001(context, str), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CampaignStateRepository provideCampaignStateRepository(GetSharedDataTimestamps getSharedDataTimestamps) {
        return new AndroidCampaignStateRepository(getSharedDataTimestamps);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> provideDefaultDataMigration() {
        return new DefaultByteStringMigration("unityads-installinfo", AndroidStaticDeviceInfoDataSource.PREF_KEY_IDFI, new GetIdfiData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NativeConfigurationOuterClass.NativeConfiguration provideDefaultNativeConfiguration() {
        c0.a aVar = c0.a;
        NativeConfigurationOuterClass.NativeConfiguration.a aVarNewBuilder = NativeConfigurationOuterClass.NativeConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(aVarNewBuilder, "newBuilder()");
        c0 c0VarA = aVar.a(aVarNewBuilder);
        ServiceProvider serviceProvider = INSTANCE;
        c0VarA.d(serviceProvider.getDefaultRequestPolicy());
        c0VarA.b(serviceProvider.getDefaultRequestPolicy());
        c0VarA.f(serviceProvider.getDefaultRequestPolicy());
        c0VarA.e(serviceProvider.getDefaultRequestPolicy());
        p.a aVar2 = p.a;
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration.c cVarNewBuilder = NativeConfigurationOuterClass.DiagnosticEventsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(cVarNewBuilder, "newBuilder()");
        p pVarA = aVar2.a(cVarNewBuilder);
        pVarA.b(false);
        pVarA.d(1);
        pVarA.c(1000);
        pVarA.e(false);
        c0VarA.c(pVarA.a());
        return c0VarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DeviceInfoRepository provideDeviceInfoRepository(StaticDeviceInfoDataSource staticDeviceInfoDataSource, DynamicDeviceInfoDataSource dynamicDeviceInfoDataSource, PrivacyDeviceInfoDataSource privacyDeviceInfoDataSource) {
        return new AndroidDeviceInfoRepository(staticDeviceInfoDataSource, dynamicDeviceInfoDataSource, privacyDeviceInfoDataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DiagnosticEventObserver provideDiagnosticEventObserver(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, GetDiagnosticEventBatchRequest getDiagnosticEventBatchRequest, ISDKDispatchers iSDKDispatchers, DiagnosticEventRepository diagnosticEventRepository, UniversalRequestDataSource universalRequestDataSource, BackgroundWorker backgroundWorker) {
        return new DiagnosticEventObserver(getUniversalRequestForPayLoad, getDiagnosticEventBatchRequest, iSDKDispatchers.getF140default(), diagnosticEventRepository, universalRequestDataSource, backgroundWorker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DynamicDeviceInfoDataSource provideDynamicDeviceInfoDataSource(Context context, LifecycleCache lifecycleCache) {
        return new AndroidDynamicDeviceInfoDataSource(context, lifecycleCache);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ExecuteAdViewerRequest provideExecuteAdViewerRequest(ISDKDispatchers iSDKDispatchers, HttpClient httpClient) {
        return new AndroidExecuteAdViewerRequest(iSDKDispatchers.getF8098io(), httpClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> provideFetchGLInfoDataMigration(GetOpenGLRendererInfo getOpenGLRendererInfo) {
        return new FetchGLInfoDataMigration(getOpenGLRendererInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideGatewayCacheDataStore(Context context, ISDKDispatchers iSDKDispatchers) {
        return provideByteStringDataStore(context, iSDKDispatchers, DATA_STORE_GATEWAY_CACHE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GatewayClient provideGatewayClient(HttpClient httpClient, HandleGatewayUniversalResponse handleGatewayUniversalResponse, SendDiagnosticEvent sendDiagnosticEvent) {
        return new CommonGatewayClient(httpClient, handleGatewayUniversalResponse, sendDiagnosticEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetAdDataRefreshRequest provideGetAdDataRefreshRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, CampaignStateRepository campaignStateRepository) {
        return new GetAndroidAdDataRefreshRequest(getUniversalRequestForPayLoad, sessionRepository, deviceInfoRepository, campaignStateRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetAdRequest provideGetAdRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, CampaignStateRepository campaignStateRepository) {
        return new GetAndroidAdRequest(getUniversalRequestForPayLoad, sessionRepository, deviceInfoRepository, campaignStateRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandleAndroidInvocationsUseCase provideGetAndroidExposureUseCase(GetAndroidAdPlayerContext getAndroidAdPlayerContext, GetOperativeEventApi getOperativeEventApi, Refresh refresh, HandleOpenUrl handleOpenUrl, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, CampaignStateRepository campaignStateRepository, SendPrivacyUpdateRequest sendPrivacyUpdateRequest, SendDiagnosticEvent sendDiagnosticEvent) {
        return new HandleAndroidInvocationsUseCase(getAndroidAdPlayerContext, getOperativeEventApi, refresh, handleOpenUrl, sessionRepository, deviceInfoRepository, campaignStateRepository, sendPrivacyUpdateRequest, sendDiagnosticEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetClientInfo provideGetClientInfo(SessionRepository sessionRepository, MediationRepository mediationRepository) {
        return new GetAndroidClientInfo(sessionRepository, mediationRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetInitializationCompletedRequest provideGetInitializationCompletedRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, DeviceInfoRepository deviceInfoRepository) {
        return new GetAndroidInitializationCompletedRequest(getUniversalRequestForPayLoad, deviceInfoRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetInitializationRequest provideGetInitializationRequest(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, GetClientInfo getClientInfo, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, LegacyUserConsentRepository legacyUserConsentRepository) {
        return new GetAndroidInitializationRequest(getUniversalRequestForPayLoad, getClientInfo, sessionRepository, deviceInfoRepository, legacyUserConsentRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetOpenGLRendererInfo provideGetOpenGLRendererInfo(SessionRepository sessionRepository) {
        return new GetAndroidOpenGLRendererInfo(sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetSharedDataTimestamps provideGetSharedDataTimestamps() {
        return new GetAndroidSharedDataTimestamps();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetUniversalRequestForPayLoad provideGetUniversalRequestForPayLoad(GetUniversalRequestSharedData getUniversalRequestSharedData) {
        return new GetAndroidUniversalRequestForPayLoad(getUniversalRequestSharedData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetUniversalRequestSharedData provideGetUniversalRequestSharedData(GetSharedDataTimestamps getSharedDataTimestamps, SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository, DeveloperConsentRepository developerConsentRepository) {
        return new GetAndroidUniversalRequestSharedData(getSharedDataTimestamps, sessionRepository, deviceInfoRepository, developerConsentRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetWebViewBridgeUseCase provideGetWebViewBridgeUseCase(ISDKDispatchers iSDKDispatchers) {
        return new GetCommonWebViewBridgeUseCase(iSDKDispatchers.getF140default());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AndroidGetWebViewContainerUseCase provideGetWebViewContainerUseCase(Context context, AndroidWebViewClient androidWebViewClient, SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics) {
        return new AndroidGetWebViewContainerUseCase(context, androidWebViewClient, sendWebViewClientErrorDiagnostics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideGlInfoDataStore(Context context, ISDKDispatchers iSDKDispatchers, DataMigration<ByteStringStoreOuterClass.ByteStringStore> dataMigration) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new ByteStringSerializer(), null, CollectionsKt__CollectionsJVMKt.listOf(dataMigration), CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF8098io().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new C17011(context), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandleGatewayAdResponse provideHandleGatewayAdResponse(AdRepository adRepository, AndroidGetWebViewContainerUseCase androidGetWebViewContainerUseCase, GetWebViewBridgeUseCase getWebViewBridgeUseCase, ISDKDispatchers iSDKDispatchers, DeviceInfoRepository deviceInfoRepository, HandleAndroidInvocationsUseCase handleAndroidInvocationsUseCase, SessionRepository sessionRepository, CampaignStateRepository campaignStateRepository, ExecuteAdViewerRequest executeAdViewerRequest, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi) {
        return new HandleGatewayAndroidAdResponse(adRepository, androidGetWebViewContainerUseCase, getWebViewBridgeUseCase, iSDKDispatchers.getF140default(), deviceInfoRepository, handleAndroidInvocationsUseCase, sessionRepository, campaignStateRepository, executeAdViewerRequest, sendDiagnosticEvent, getOperativeEventApi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandleGatewayInitializationResponse provideHandleGatewayInitializationResponse(TriggerInitializationCompletedRequest triggerInitializationCompletedRequest, SessionRepository sessionRepository, CoroutineScope coroutineScope) {
        return new HandleAndroidGatewayInitializationResponse(triggerInitializationCompletedRequest, sessionRepository, coroutineScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HandleGatewayUniversalResponse provideHandleGatewayUniversalResponse(SessionRepository sessionRepository, DeviceInfoRepository deviceInfoRepository) {
        return new HandleAndroidGatewayUniversalResponse(sessionRepository, deviceInfoRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HttpClient provideHttpClient(ConfigFileFromLocalStorage configFileFromLocalStorage, AlternativeFlowReader alternativeFlowReader, ISDKDispatchers iSDKDispatchers, SendDiagnosticEvent sendDiagnosticEvent, Context context) {
        return (HttpClient) BuildersKt__BuildersKt.runBlocking$default(null, new C17021(alternativeFlowReader, sendDiagnosticEvent, iSDKDispatchers, context, configFileFromLocalStorage, null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataMigration<ByteStringStoreOuterClass.ByteStringStore> provideIdfiDataMigration(Context context) {
        return new PreservingByteStringPreferenceMigration(context, "unityads-installinfo", AndroidStaticDeviceInfoDataSource.PREF_KEY_IDFI, new GetIdfiData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideIdfiDataStore(Context context, ISDKDispatchers iSDKDispatchers, DataMigration<ByteStringStoreOuterClass.ByteStringStore> dataMigration, DataMigration<ByteStringStoreOuterClass.ByteStringStore> dataMigration2) {
        return DataStoreFactory.INSTANCE.create(new ByteStringSerializer(), new ReplaceFileCorruptionHandler(C17031.INSTANCE), CollectionsKt__CollectionsKt.listOf((Object[]) new DataMigration[]{dataMigration, dataMigration2}), CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF8098io().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new C17042(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetRequestPolicy provideInitRequestPolicy(SessionRepository sessionRepository) {
        return new GetInitRequestPolicy(sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InitializeBoldSDK provideInitializeBoldSDK(ISDKDispatchers iSDKDispatchers, GetInitializationRequest getInitializationRequest, GetRequestPolicy getRequestPolicy, HandleGatewayInitializationResponse handleGatewayInitializationResponse, GatewayClient gatewayClient, SessionRepository sessionRepository, EventObservers eventObservers, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, DiagnosticEventRepository diagnosticEventRepository, DeviceInfoRepository deviceInfoRepository, com.unity3d.ads.core.data.manager.StorageManager storageManager, SDKPropertiesManager sDKPropertiesManager) {
        return new InitializeAndroidBoldSDK(iSDKDispatchers.getF140default(), getInitializationRequest, getRequestPolicy, handleGatewayInitializationResponse, gatewayClient, sessionRepository, eventObservers, triggerInitializeListener, sendDiagnosticEvent, diagnosticEventRepository, deviceInfoRepository, storageManager, sDKPropertiesManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JsonStorage provideJsonStorage(StorageManager.StorageType storageType) {
        if (!StorageManager.init(ClientProperties.getApplicationContext())) {
            throw new IllegalStateException("StorageManager failed to initialize".toString());
        }
        Storage storage = StorageManager.getStorage(storageType);
        Intrinsics.checkNotNullExpressionValue(storage, "getStorage(storageType)");
        return storage;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LegacyLoadUseCase provideLegacyLoadUseCase(ISDKDispatchers iSDKDispatchers, Load load, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, SessionRepository sessionRepository) {
        return new LegacyLoadUseCase(iSDKDispatchers.getMain(), load, sendDiagnosticEvent, sessionRepository, adRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LegacyShowUseCase provideLegacyShowUseCase(ISDKDispatchers iSDKDispatchers, Show show, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, SessionRepository sessionRepository) {
        return new LegacyShowUseCase(iSDKDispatchers.getMain(), show, adRepository, sendDiagnosticEvent, getOperativeEventApi, sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LifecycleCache provideLifeCycleCache() {
        LifecycleCache lifecycleListener = CachedLifecycle.getLifecycleListener();
        Intrinsics.checkNotNullExpressionValue(lifecycleListener, "getLifecycleListener()");
        return lifecycleListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Load provideLoad(ISDKDispatchers iSDKDispatchers, GetAdRequest getAdRequest, GetRequestPolicy getRequestPolicy, HandleGatewayAdResponse handleGatewayAdResponse, SessionRepository sessionRepository, GatewayClient gatewayClient, AdRepository adRepository) {
        return new AndroidLoad(iSDKDispatchers.getF140default(), getAdRequest, getRequestPolicy, handleGatewayAdResponse, sessionRepository, gatewayClient, adRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MediationDataSource provideMediationDataSource(JsonStorage jsonStorage) {
        return new AndroidMediationDataSource(jsonStorage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MediationRepository provideMediationRepository(MediationDataSource mediationDataSource) {
        return new AndroidMediationRepository(mediationDataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OperativeEventObserver provideOperativeEventObserver(GetUniversalRequestForPayLoad getUniversalRequestForPayLoad, ISDKDispatchers iSDKDispatchers, OperativeEventRepository operativeEventRepository, UniversalRequestDataSource universalRequestDataSource, BackgroundWorker backgroundWorker) {
        return new OperativeEventObserver(getUniversalRequestForPayLoad, iSDKDispatchers.getF140default(), operativeEventRepository, universalRequestDataSource, backgroundWorker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetRequestPolicy provideOperativeEventRequestPolicy(SessionRepository sessionRepository) {
        return new GetOperativeEventRequestPolicy(sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GetRequestPolicy provideOtherRequestPolicy(SessionRepository sessionRepository) {
        return new GetOtherRequestPolicy(sessionRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PrivacyDeviceInfoDataSource providePrivacyDeviceInfoDataSource(Context context) {
        return new AndroidPrivacyDeviceInfoDataSource(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> providePrivacyFsmDataStore(Context context, ISDKDispatchers iSDKDispatchers) {
        return provideByteStringDataStore(context, iSDKDispatchers, DATA_STORE_PRIVACY_FSM);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Refresh provideRefresh(ISDKDispatchers iSDKDispatchers, GetAdDataRefreshRequest getAdDataRefreshRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient) {
        return new AndroidRefresh(iSDKDispatchers.getF140default(), getAdDataRefreshRequest, getRequestPolicy, gatewayClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ISDKDispatchers provideSDKDispatchers() {
        return new SDKDispatchers();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineExceptionHandler provideSDKErrorHandler(ISDKDispatchers iSDKDispatchers, AlternativeFlowReader alternativeFlowReader, SendDiagnosticEvent sendDiagnosticEvent, SDKMetricsSender sDKMetricsSender) {
        return new SDKErrorHandler(iSDKDispatchers.getF8098io(), alternativeFlowReader, sendDiagnosticEvent, sDKMetricsSender);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SDKMetricsSender provideSDKMetricSender() {
        SDKMetricsSender sDKMetrics = SDKMetrics.getInstance();
        Intrinsics.checkNotNullExpressionValue(sDKMetrics, "getInstance()");
        return sDKMetrics;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineScope provideSDKScope(ISDKDispatchers iSDKDispatchers, CoroutineExceptionHandler coroutineExceptionHandler) {
        return CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF140default().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null)).plus(coroutineExceptionHandler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SendWebViewClientErrorDiagnostics provideSendWebViewClientErrorDiagnostics(ISDKDispatchers iSDKDispatchers, SendDiagnosticEvent sendDiagnosticEvent) {
        return new AndroidSendWebViewClientErrorDiagnostics(iSDKDispatchers.getF8098io(), sendDiagnosticEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionRepository provideSessionRepository(ByteStringDataSource byteStringDataSource, ByteStringDataSource byteStringDataSource2, ByteStringDataSource byteStringDataSource3, NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration) {
        return new AndroidSessionRepository(byteStringDataSource, byteStringDataSource2, byteStringDataSource3, nativeConfiguration);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Show provideShow(AdRepository adRepository, GameServerIdReader gameServerIdReader) {
        return new AndroidShow(adRepository, gameServerIdReader);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final StaticDeviceInfoDataSource provideStaticDeviceInfoDataSource(Context context, ByteStringDataSource byteStringDataSource, ByteStringDataSource byteStringDataSource2, ByteStringDataSource byteStringDataSource3, AnalyticsDataSource analyticsDataSource) {
        return new AndroidStaticDeviceInfoDataSource(context, byteStringDataSource, byteStringDataSource2, byteStringDataSource3, analyticsDataSource);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TriggerInitializationCompletedRequest provideTriggerInitializationCompletedRequest(GetInitializationCompletedRequest getInitializationCompletedRequest, GetRequestPolicy getRequestPolicy, GatewayClient gatewayClient) {
        return new TriggerAndroidInitializationCompletedRequest(getInitializationCompletedRequest, getRequestPolicy, gatewayClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TriggerInitializeListener provideTriggerInitializeListener(ISDKDispatchers iSDKDispatchers) {
        return new TriggerInitializeListener(iSDKDispatchers.getMain());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UniversalRequestDataSource provideUniversalRequestDataSource(DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> dataStore) {
        return new UniversalRequestDataSource(dataStore);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> provideUniversalRequestDataStore(Context context, ISDKDispatchers iSDKDispatchers) {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new UniversalRequestStoreSerializer(), null, null, CoroutineScopeKt.CoroutineScope(iSDKDispatchers.getF8098io().plus(SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null))), new C17051(context), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DataStore<ByteStringStoreOuterClass.ByteStringStore> provideUserConsentDataStore(Context context, ISDKDispatchers iSDKDispatchers) {
        return provideByteStringDataStore(context, iSDKDispatchers, DATA_STORE_PRIVACY);
    }

    @Override // com.unity3d.services.core.di.IServiceProvider
    public IServicesRegistry getRegistry() {
        return serviceRegistry;
    }

    @Override // com.unity3d.services.core.di.IServiceProvider
    public IServicesRegistry initialize() {
        return ServicesRegistryKt.registry(AnonymousClass1.INSTANCE);
    }
}
