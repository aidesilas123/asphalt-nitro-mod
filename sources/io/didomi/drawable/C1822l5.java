package io.didomi.drawable;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import androidx.preference.PreferenceManager;
import com.applovin.sdk.AppLovinEventTypes;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.functionalinterfaces.DidomiCallable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.didomi.sdk.l5, reason: case insensitive filesystem */
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
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u0000 F2\u00020\u0001:\u0001\u000fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0012¢\u0006\u0004\b\u000f\u0010\u0010J1\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0012¢\u0006\u0004\b\u000f\u0010\u0016J)\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u000f\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u000f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u000eH\u0012¢\u0006\u0004\b\u000f\u0010\u001bJ'\u0010\u000f\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u000f\u0010\u001dJ'\u0010\u0018\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u0018\u0010\u001dJ'\u0010\u0018\u001a\u00020\u001c2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0012¢\u0006\u0004\b\u0018\u0010\u001eJ\u001f\u0010\u0018\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\u000eH\u0012¢\u0006\u0004\b\u0018\u0010\u001bJ'\u0010\u000f\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0014H\u0012¢\u0006\u0004\b\u000f\u0010 J\u000f\u0010\u000f\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u000f\u0010!J!\u0010\u000f\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0010¢\u0006\u0004\b\u000f\u0010#J\u000f\u0010$\u001a\u00020\u0011H\u0010¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0010¢\u0006\u0004\b'\u0010(J'\u0010\u000f\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010)\u001a\u00020\u000eH\u0010¢\u0006\u0004\b\u000f\u0010*J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010\u0010J!\u0010\u0018\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0018\u0010+J!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010-\u001a\u00020,2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010.J!\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u000f\u0010/J\u001f\u0010'\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b'\u00100R\u0014\u0010\u0005\u001a\u00020\u00048\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u000f\u00101R\u0014\u0010\u0007\u001a\u00020\u00068\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0018\u00102R\u0014\u0010\t\u001a\u00020\b8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b'\u00103R\u001b\u00107\u001a\u0002048PX\u0090\u0084\u0002¢\u0006\f\n\u0004\b$\u00105\u001a\u0004\b\u0018\u00106R\u001c\u0010<\u001a\n 9*\u0004\u0018\u000108088\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u001c\u0010-\u001a\n 9*\u0004\u0018\u00010,0,8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b=\u0010>R\u001c\u0010A\u001a\n 9*\u0004\u0018\u00010\u000e0\u000e8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010E\u001a\u00020B8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006G"}, d2 = {"Lio/didomi/sdk/l5;", "Lio/didomi/sdk/K;", "Landroid/content/Context;", "context", "Lio/didomi/sdk/J;", "connectivityHelper", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Landroid/content/Context;Lio/didomi/sdk/J;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;)V", "Lio/didomi/sdk/k5;", "remoteFile", "", "a", "(Lio/didomi/sdk/k5;)Ljava/lang/String;", "", "cacheDate", "startTime", "", "retryOnFailure", "(Lio/didomi/sdk/k5;JJZ)Ljava/lang/String;", "(Lio/didomi/sdk/k5;JJ)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/k5;J)J", "cacheFilePath", "(Lio/didomi/sdk/k5;Ljava/lang/String;)Z", "", "(Ljava/lang/String;Lio/didomi/sdk/k5;J)V", "(Lio/didomi/sdk/k5;JJ)V", "afterError", "(Lio/didomi/sdk/k5;JZ)Z", "()V", "Ljava/io/File;", "(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/io/File;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()J", "", "c", "()I", AppLovinEventTypes.USER_VIEWED_CONTENT, "(Ljava/lang/String;Lio/didomi/sdk/k5;Ljava/lang/String;)V", "(Ljava/lang/String;Lio/didomi/sdk/k5;)Ljava/lang/String;", "Landroid/content/res/AssetManager;", "assetManager", "(Landroid/content/res/AssetManager;Lio/didomi/sdk/k5;)Ljava/lang/String;", "(Lio/didomi/sdk/k5;J)Ljava/lang/String;", "(Ljava/lang/String;Lio/didomi/sdk/k5;)V", "Lio/didomi/sdk/J;", "Lio/didomi/sdk/Z2;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lio/didomi/sdk/Didomi;", "Lkotlin/Lazy;", "()Lio/didomi/sdk/Didomi;", "didomi", "Landroid/content/SharedPreferences;", "kotlin.jvm.PlatformType", "e", "Landroid/content/SharedPreferences;", "sharedPreferences", InneractiveMediationDefs.GENDER_FEMALE, "Landroid/content/res/AssetManager;", "g", "Ljava/lang/String;", "cacheFilesPath", "Ljava/lang/Object;", "h", "Ljava/lang/Object;", "connectivityBlocker", "i", "android_release"}, mv = {1, 8, 0})
public class C1822l5 implements K {
    public static final a i = new a(null);
    private final J a;
    private final Z2 b;
    private final CoroutineDispatcher c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8686d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SharedPreferences f8687e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AssetManager f8688f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f8689g;
    private final Object h;

    /* JADX INFO: renamed from: io.didomi.sdk.l5$a */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lio/didomi/sdk/l5$a;", "", "<init>", "()V", "", "MAX_RETRIES_ON_ERROR", "I", "", "RETRY_DELAY_ON_ERROR_IN_MS", "J", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l5$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/Didomi;", "a", "()Lio/didomi/sdk/Didomi;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Didomi> {
        public static final b a = new b();

        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Didomi invoke() {
            return Didomi.Companion.getInstance();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l5$c */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"io/didomi/sdk/l5$c", "Lio/didomi/sdk/c3;", "", com.json.mediationsdk.utils.c.Y1, "", "a", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
    public static final class c implements InterfaceC1730c3 {
        final /* synthetic */ RemoteFile a;
        final /* synthetic */ boolean b;
        final /* synthetic */ C1822l5 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ long f8690d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f8691e;

        c(RemoteFile remoteFile, boolean z, C1822l5 c1822l5, long j, long j2) {
            this.a = remoteFile;
            this.b = z;
            this.c = c1822l5;
            this.f8690d = j;
            this.f8691e = j2;
        }

        @Override // io.didomi.drawable.InterfaceC1730c3
        public void a(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            if (StringsKt__StringsJVMKt.isBlank(response)) {
                return;
            }
            if (this.a.getValidateRemoteFileAsJSON()) {
                try {
                    new JSONObject(response);
                } catch (JSONException e2) {
                    Log.e("Unable to parse the remote file " + this.a.getRemoteFileURL() + " as valid JSON", e2);
                    return;
                }
            }
            this.a.a(response);
        }

        @Override // io.didomi.drawable.InterfaceC1730c3
        public void b(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Log.e$default("Unable to download the remote file " + this.a.getRemoteFileURL() + ": " + response, null, 2, null);
            if (this.b) {
                this.c.b(this.a, this.f8690d, this.f8691e);
            }
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.l5$d */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.remote.RemoteFilesHelper$requestCacheUpdateWhenReady$1$1", f = "RemoteFilesHelper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ RemoteFile b;
        final /* synthetic */ C1822l5 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f8692d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ long f8693e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(RemoteFile remoteFile, C1822l5 c1822l5, String str, long j, Continuation<? super d> continuation) {
            super(2, continuation);
            this.b = remoteFile;
            this.c = c1822l5;
            this.f8692d = str;
            this.f8693e = j;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new d(this.b, this.c, this.f8692d, this.f8693e, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.a != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.b.a(true);
            this.c.a(this.f8692d, this.b, this.f8693e);
            return v.a;
        }
    }

    public C1822l5(Context context, J connectivityHelper, Z2 httpRequestHelper, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(connectivityHelper, "connectivityHelper");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = connectivityHelper;
        this.b = httpRequestHelper;
        this.c = coroutineDispatcher;
        this.f8686d = LazyKt__LazyJVMKt.lazy(b.a);
        this.f8687e = PreferenceManager.getDefaultSharedPreferences(context);
        this.f8688f = context.getAssets();
        this.f8689g = context.getFilesDir().getAbsolutePath();
        this.h = new Object();
    }

    private String a(RemoteFile remoteFile) {
        return this.f8689g + File.separator + remoteFile.getCacheFileName();
    }

    private String a(RemoteFile remoteFile, long j, long j2) {
        long updateTimeout = remoteFile.getUpdateTimeout();
        long jB = (remoteFile.getIsBlockUntilUpdated() || updateTimeout <= 0) ? 0L : b(remoteFile, j2);
        if (jB >= 0) {
            synchronized (this.h) {
                if (!this.a.c()) {
                    try {
                        this.a.a(this);
                        if (jB > 0) {
                            this.h.wait(jB);
                        } else {
                            this.h.wait();
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        this.a.b(this);
                    }
                }
                v vVar = v.a;
            }
        }
        String strA = a(remoteFile);
        if (a(remoteFile, j2, false)) {
            Log.d$default("Connection retrieved, trying to update cache after " + (System.currentTimeMillis() - j2) + "ms", null, 2, null);
            a(remoteFile, j, j2, updateTimeout > System.currentTimeMillis() - j2);
        }
        String remoteFileContent = remoteFile.getRemoteFileContent();
        if (remoteFileContent != null && !StringsKt__StringsJVMKt.isBlank(remoteFileContent)) {
            return remoteFile.getRemoteFileContent();
        }
        if (remoteFile.getIsBlockUntilUpdated()) {
            return null;
        }
        b(strA, remoteFile, j);
        return null;
    }

    private String a(RemoteFile remoteFile, long j, long j2, boolean z) {
        String remoteFileURL = remoteFile.getRemoteFileURL();
        if (remoteFileURL == null || StringsKt__StringsJVMKt.isBlank(remoteFileURL)) {
            return null;
        }
        long jCurrentTimeMillis = j2 > 0 ? j2 : System.currentTimeMillis();
        if (!this.a.c()) {
            if (z) {
                return a(remoteFile, j, jCurrentTimeMillis);
            }
            return null;
        }
        int iMin = (remoteFile.getIsBlockUntilUpdated() || remoteFile.getUpdateTimeout() == 0) ? 30000 : Math.min((int) b(remoteFile, jCurrentTimeMillis), 30000);
        if (iMin < 0) {
            return null;
        }
        this.b.a(remoteFileURL, new c(remoteFile, z, this, j, jCurrentTimeMillis), iMin, j);
        String remoteFileContent = remoteFile.getRemoteFileContent();
        if (remoteFileContent == null || StringsKt__StringsJVMKt.isBlank(remoteFileContent)) {
            return null;
        }
        return remoteFile.getRemoteFileContent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C1822l5 this$0, RemoteFile remoteFile, String cacheFilePath, long j) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(remoteFile, "$remoteFile");
        Intrinsics.checkNotNullParameter(cacheFilePath, "$cacheFilePath");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this$0.c), null, null, new d(remoteFile, this$0, cacheFilePath, j, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, RemoteFile remoteFile, long j) throws IOException {
        String strA = a(remoteFile, j);
        if (strA != null && !StringsKt__StringsJVMKt.isBlank(strA)) {
            a(str, remoteFile, strA);
            return;
        }
        Log.d$default("No remote content to update for " + remoteFile.getRemoteFileURL(), null, 2, null);
    }

    private boolean a(RemoteFile remoteFile, long j, boolean z) {
        return remoteFile.getIsBlockUntilUpdated() || b(remoteFile, j) > (z ? d() : 0L);
    }

    private boolean a(RemoteFile remoteFile, String str) {
        return remoteFile.j() && a(str, remoteFile) == null;
    }

    private long b(RemoteFile remoteFile, long j) {
        return remoteFile.getUpdateTimeout() - (System.currentTimeMillis() - j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(RemoteFile remoteFile, long j, long j2) {
        for (int i2 = 0; remoteFile.getRemoteFileContent() == null && i2 < c() && a(remoteFile, j2, true); i2++) {
            try {
                Thread.sleep(d());
            } catch (InterruptedException e2) {
                Log.e("Error while waiting to update cache", e2);
            }
            Log.d$default("Retrying to update cache after " + (System.currentTimeMillis() - j2) + "ms", null, 2, null);
            a(remoteFile, j, j2, false);
        }
        String remoteFileContent = remoteFile.getRemoteFileContent();
        if ((remoteFileContent == null || StringsKt__StringsJVMKt.isBlank(remoteFileContent)) && !remoteFile.getIsBlockUntilUpdated()) {
            b(a(remoteFile), remoteFile, j);
        }
    }

    private void b(final String str, final RemoteFile remoteFile, final long j) {
        try {
            b().onReady(new DidomiCallable() { // from class: io.didomi.sdk.we
                @Override // io.didomi.drawable.functionalinterfaces.DidomiCallable
                public final void call() {
                    C1822l5.a(this.a, remoteFile, str, j);
                }
            });
        } catch (Exception e2) {
            Log.e("Error while requesting cache refresh: " + e2.getMessage(), e2);
        }
    }

    private boolean b(RemoteFile remoteFile, String str) {
        if (remoteFile.getIsUpdateCacheImmediately()) {
            return true;
        }
        if (remoteFile.getUpdateTimeout() != 0 || remoteFile.getIsBlockUntilUpdated()) {
            return a(remoteFile, str);
        }
        return false;
    }

    public File a(String cacheFilePath, RemoteFile remoteFile) {
        Intrinsics.checkNotNullParameter(cacheFilePath, "cacheFilePath");
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        if (remoteFile.j()) {
            File file = new File(cacheFilePath);
            if (file.exists()) {
                return file;
            }
        }
        return null;
    }

    public String a(AssetManager assetManager, RemoteFile remoteFile) {
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        String fallbackFilePathInAssets = remoteFile.getFallbackFilePathInAssets();
        if (fallbackFilePathInAssets == null || StringsKt__StringsJVMKt.isBlank(fallbackFilePathInAssets)) {
            Log.d$default("No fallback available", null, 2, null);
            return null;
        }
        try {
            InputStream inputStreamOpen = assetManager.open(fallbackFilePathInAssets);
            Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "assetManager.open(fallbackFilePath)");
            InputStreamReader inputStreamReader = new InputStreamReader(inputStreamOpen, Charsets.b);
            try {
                String text = TextStreamsKt.readText(inputStreamReader);
                CloseableKt.closeFinally(inputStreamReader, null);
                return text;
            } finally {
            }
        } catch (IOException e2) {
            Log.e("Unable to read the content of the file assets/" + fallbackFilePathInAssets, e2);
            return null;
        }
    }

    public String a(RemoteFile remoteFile, long j) {
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        return a(remoteFile, j, 0L, remoteFile.m());
    }

    @Override // io.didomi.drawable.K
    public void a() {
        synchronized (this.h) {
            this.a.b(this);
            this.h.notify();
            v vVar = v.a;
        }
    }

    public void a(String cacheFilePath, RemoteFile remoteFile, String content) throws IOException {
        Intrinsics.checkNotNullParameter(cacheFilePath, "cacheFilePath");
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        Intrinsics.checkNotNullParameter(content, "content");
        if (remoteFile.j()) {
            FilesKt__FileReadWriteKt.writeText$default(new File(cacheFilePath), content, null, 2, null);
            this.f8687e.edit().putLong(remoteFile.getCacheFileDateKey(), System.currentTimeMillis()).apply();
        }
    }

    public Didomi b() {
        return (Didomi) this.f8686d.getValue();
    }

    public String b(RemoteFile remoteFile) {
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        String remoteFileURL = remoteFile.getRemoteFileURL();
        if (remoteFileURL == null || StringsKt__StringsJVMKt.isBlank(remoteFileURL)) {
            AssetManager assetManager = this.f8688f;
            Intrinsics.checkNotNullExpressionValue(assetManager, "assetManager");
            return a(assetManager, remoteFile);
        }
        String strA = a(remoteFile);
        if (remoteFile.j()) {
            c(strA, remoteFile);
        } else {
            String strA2 = a(remoteFile, 0L, 0L, false);
            if (strA2 != null) {
                return strA2;
            }
        }
        String strB = b(strA, remoteFile);
        if (strB != null) {
            return strB;
        }
        AssetManager assetManager2 = this.f8688f;
        Intrinsics.checkNotNullExpressionValue(assetManager2, "assetManager");
        return a(assetManager2, remoteFile);
    }

    public String b(String cacheFilePath, RemoteFile remoteFile) {
        Intrinsics.checkNotNullParameter(cacheFilePath, "cacheFilePath");
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        File fileA = a(cacheFilePath, remoteFile);
        if (fileA != null) {
            return FilesKt__FileReadWriteKt.readText$default(fileA, null, 1, null);
        }
        return null;
    }

    public int c() {
        return 5;
    }

    public void c(String cacheFilePath, RemoteFile remoteFile) throws IOException {
        Intrinsics.checkNotNullParameter(cacheFilePath, "cacheFilePath");
        Intrinsics.checkNotNullParameter(remoteFile, "remoteFile");
        if (remoteFile.k() && remoteFile.j()) {
            File fileA = a(cacheFilePath, remoteFile);
            long j = 0;
            if (fileA == null || !fileA.canRead()) {
                Log.e$default("Cache file is not readable (" + cacheFilePath + ')', null, 2, null);
            } else {
                j = this.f8687e.getLong(remoteFile.getCacheFileDateKey(), 0L);
                if ((System.currentTimeMillis() - j) / ((long) 1000) < remoteFile.getCacheFileExpirationInSeconds()) {
                    return;
                }
            }
            if (b(remoteFile, cacheFilePath)) {
                a(cacheFilePath, remoteFile, j);
            } else {
                b(cacheFilePath, remoteFile, j);
            }
        }
    }

    public long d() {
        return 5000L;
    }
}
