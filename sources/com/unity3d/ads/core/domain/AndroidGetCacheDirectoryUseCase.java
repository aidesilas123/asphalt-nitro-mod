package com.unity3d.ads.core.domain;

import android.content.Context;
import android.os.Environment;
import com.unity3d.ads.core.data.model.CacheDirectory;
import com.unity3d.ads.core.data.model.CacheDirectoryType;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.unity3d.services.core.log.DeviceLog;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

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
/* JADX INFO: compiled from: AndroidGetCacheDirectoryUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0005H\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0002J\u0011\u0010\u0018\u001a\u00020\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0019J#\u0010\u001b\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0012H\u0002\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase;", "Lcom/unity3d/ads/core/domain/GetCacheDirectoryUseCase;", "context", "Landroid/content/Context;", "cacheDirName", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "(Landroid/content/Context;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V", "cacheDirectory", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/unity3d/ads/core/data/model/CacheDirectory;", "isInitialized", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "createCacheDirectory", "Ljava/io/File;", "baseDir", "newDir", "createNoMediaFile", "", "path", MobileAdsBridgeBase.initializeMethodName, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "testCacheDirectory", "directory", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class AndroidGetCacheDirectoryUseCase implements GetCacheDirectoryUseCase {
    public static final Companion Companion = new Companion(null);
    private static final String TEST_FILE_NAME = "UnityAdsTest.txt";
    private final String cacheDirName;
    private final CompletableDeferred<CacheDirectory> cacheDirectory;
    private final Context context;
    private final MutableStateFlow<Boolean> isInitialized;
    private final CoroutineScope scope;

    /* JADX INFO: compiled from: AndroidGetCacheDirectoryUseCase.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidGetCacheDirectoryUseCase$Companion;", "", "()V", "TEST_FILE_NAME", "", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$initialize$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetCacheDirectoryUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$initialize$2", f = "AndroidGetCacheDirectoryUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return AndroidGetCacheDirectoryUseCase.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            File fileCreateCacheDirectory;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidGetCacheDirectoryUseCase.this.isInitialized.setValue(Boxing.boxBoolean(true));
            if (Intrinsics.areEqual("mounted", Environment.getExternalStorageState())) {
                try {
                    AndroidGetCacheDirectoryUseCase androidGetCacheDirectoryUseCase = AndroidGetCacheDirectoryUseCase.this;
                    fileCreateCacheDirectory = androidGetCacheDirectoryUseCase.createCacheDirectory(androidGetCacheDirectoryUseCase.context.getExternalCacheDir(), AndroidGetCacheDirectoryUseCase.this.cacheDirName);
                } catch (Exception e2) {
                    DeviceLog.exception("Creating external cache directory failed", e2);
                    fileCreateCacheDirectory = null;
                }
                if (AndroidGetCacheDirectoryUseCase.this.testCacheDirectory(fileCreateCacheDirectory)) {
                    AndroidGetCacheDirectoryUseCase.this.createNoMediaFile(fileCreateCacheDirectory);
                    DeviceLog.debug("Unity Ads is using external cache directory: " + fileCreateCacheDirectory.getAbsolutePath());
                    AndroidGetCacheDirectoryUseCase.this.cacheDirectory.v(new CacheDirectory(fileCreateCacheDirectory, CacheDirectoryType.EXTERNAL));
                    return v.a;
                }
            }
            DeviceLog.debug("External media not mounted");
            File internalCache = AndroidGetCacheDirectoryUseCase.this.context.getFilesDir();
            if (!AndroidGetCacheDirectoryUseCase.this.testCacheDirectory(internalCache)) {
                DeviceLog.error("Unity Ads failed to initialize cache directory");
                AndroidGetCacheDirectoryUseCase.this.cacheDirectory.v(null);
                return v.a;
            }
            DeviceLog.debug("Unity Ads is using internal cache directory: " + internalCache.getAbsolutePath());
            CompletableDeferred completableDeferred = AndroidGetCacheDirectoryUseCase.this.cacheDirectory;
            Intrinsics.checkNotNullExpressionValue(internalCache, "internalCache");
            completableDeferred.v(new CacheDirectory(internalCache, CacheDirectoryType.INTERNAL));
            return v.a;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$invoke$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidGetCacheDirectoryUseCase.kt */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase", f = "AndroidGetCacheDirectoryUseCase.kt", i = {0}, l = {26, 29}, m = "invoke", n = {"this"}, s = {"L$0"})
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
            return AndroidGetCacheDirectoryUseCase.this.invoke(this);
        }
    }

    public AndroidGetCacheDirectoryUseCase(Context context, String cacheDirName, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cacheDirName, "cacheDirName");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.context = context;
        this.cacheDirName = cacheDirName;
        this.scope = CoroutineScopeKt.plus(CoroutineScopeKt.CoroutineScope(dispatcher), new CoroutineName("AndroidGetCacheDirectoryUseCase"));
        this.isInitialized = StateFlowKt.MutableStateFlow(Boolean.FALSE);
        this.cacheDirectory = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final File createCacheDirectory(File file, String str) throws Exception {
        if (file == null) {
            throw new IllegalArgumentException("Base directory is null".toString());
        }
        File file2 = new File(file, str);
        file2.mkdirs();
        if (!file2.isDirectory()) {
            file2 = null;
        }
        if (file2 != null) {
            return file2;
        }
        throw new Exception("Could not create cache directory");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createNoMediaFile(File file) {
        try {
            if (new File(file, ".nomedia").createNewFile()) {
                DeviceLog.debug("Successfully created .nomedia file");
            } else {
                DeviceLog.debug("Using existing .nomedia file");
            }
        } catch (Exception e2) {
            DeviceLog.exception("Failed to create .nomedia file", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object initialize(Continuation<? super v> continuation) {
        Object objWithContext = BuildersKt.withContext(this.scope.getCoroutineContext(), new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean testCacheDirectory(File file) {
        if (!(file != null && file.isDirectory())) {
            return false;
        }
        try {
            File file2 = new File(file, TEST_FILE_NAME);
            FilesKt__FileReadWriteKt.writeText$default(file2, "test", null, 2, null);
            if (!Intrinsics.areEqual(FilesKt__FileReadWriteKt.readText$default(file2, null, 1, null), "test")) {
                DeviceLog.debug("Read content mismatch");
                return false;
            }
            if (file2.delete()) {
                return true;
            }
            DeviceLog.debug("Failed to delete test file " + file2.getAbsoluteFile());
            return false;
        } catch (Exception e2) {
            DeviceLog.debug("Unity Ads exception while testing cache directory " + file.getAbsolutePath() + ": " + e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.unity3d.ads.core.domain.GetCacheDirectoryUseCase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object invoke(kotlin.coroutines.Continuation<? super com.unity3d.ads.core.data.model.CacheDirectory> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$invoke$1 r0 = (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$invoke$1 r0 = new com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase$invoke$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L67
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.L$0
            com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase r2 = (com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase) r2
            kotlin.ResultKt.throwOnFailure(r6)
            goto L59
        L3c:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.l<java.lang.Boolean> r6 = r5.isInitialized
            java.lang.Object r6 = r6.getValue()
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 != 0) goto L58
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r5.initialize(r0)
            if (r6 != r1) goto L58
            return r1
        L58:
            r2 = r5
        L59:
            kotlinx.coroutines.CompletableDeferred<com.unity3d.ads.core.data.model.CacheDirectory> r6 = r2.cacheDirectory
            r2 = 0
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r6 = r6.j(r0)
            if (r6 != r1) goto L67
            return r1
        L67:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidGetCacheDirectoryUseCase.invoke(kotlin.coroutines.d):java.lang.Object");
    }
}
