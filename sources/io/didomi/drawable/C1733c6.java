package io.didomi.drawable;

import androidx.core.app.NotificationCompat;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.Gson;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.events.SyncDoneEvent;
import io.didomi.drawable.events.SyncReadyEvent;
import io.didomi.drawable.user.UserAuth;
import io.didomi.drawable.user.UserAuthParams;
import io.didomi.drawable.user.UserAuthWithEncryptionParams;
import io.didomi.drawable.user.UserAuthWithHashParams;
import io.didomi.drawable.user.sync.model.RequestSource;
import io.didomi.drawable.user.sync.model.RequestSynchronizedUser;
import io.didomi.drawable.user.sync.model.RequestToken;
import io.didomi.drawable.user.sync.model.RequestUser;
import io.didomi.drawable.user.sync.model.SyncError;
import io.didomi.drawable.user.sync.model.SyncRequest;
import io.didomi.drawable.user.sync.model.SyncResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: renamed from: io.didomi.sdk.c6, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001b\u0010\u0018J!\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010 J\u001b\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001cH\u0080@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010 J\u0015\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001b\u0010!J\u0015\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0017\u0010!J!\u0010\u001b\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0000¢\u0006\u0004\b\u001b\u0010'J)\u0010\u001b\u001a\u00020&2\u0006\u0010(\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$H\u0000¢\u0006\u0004\b\u001b\u0010)R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u0010\u0011\u001a\u00020\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u001b\u0010;\u001a\u00020&8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b\u001b\u0010:R\u0014\u0010?\u001a\u00020<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006@"}, d2 = {"Lio/didomi/sdk/c6;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/Z2;", "httpRequestHelper", "Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/Z2;Lio/didomi/sdk/P3;Lio/didomi/sdk/P8;Lkotlinx/coroutines/CoroutineDispatcher;)V", "Lio/didomi/sdk/events/SyncReadyEvent;", "syncReadyEvent", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/events/SyncReadyEvent;)V", "()V", NotificationCompat.CATEGORY_EVENT, "a", "Lio/didomi/sdk/b6;", "params", "Lio/didomi/sdk/y;", "Lio/didomi/sdk/user/sync/model/SyncResponse;", "(Lio/didomi/sdk/b6;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lio/didomi/sdk/b6;)V", "", "frequency", "Ljava/util/Date;", "lastSyncDate", "", "(ILjava/util/Date;)Z", b4.r, "(ZILjava/util/Date;)Z", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/V;", "c", "Lio/didomi/sdk/apiEvents/b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/M2;", "e", "Lio/didomi/sdk/Z2;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/P3;", "g", "Lio/didomi/sdk/P8;", "h", "Lkotlinx/coroutines/CoroutineDispatcher;", "i", "Lkotlin/Lazy;", "()Z", "isEnabled", "Lcom/google/gson/Gson;", "j", "Lcom/google/gson/Gson;", "gson", "android_release"}, mv = {1, 8, 0})
public final class C1733c6 {
    private final H a;
    private final V b;
    private final io.didomi.drawable.apiEvents.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final M2 f8524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Z2 f8525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final P3 f8526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final P8 f8527g;
    private final CoroutineDispatcher h;
    private final Lazy i;
    private final Gson j;

    /* JADX INFO: renamed from: io.didomi.sdk.c6$a */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.user.sync.SyncRepository$blockingSync$1", f = "SyncRepository.kt", i = {}, l = {254}, m = "invokeSuspend", n = {}, s = {})
    static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ SyncParams c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(SyncParams syncParams, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = syncParams;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return C1733c6.this.new a(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                C1733c6 c1733c6 = C1733c6.this;
                SyncParams syncParams = this.c;
                this.a = 1;
                if (c1733c6.a(syncParams, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: io.didomi.sdk.c6$b */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.user.sync.SyncRepository", f = "SyncRepository.kt", i = {0}, l = {174}, m = "doSync$android_release", n = {"this"}, s = {"L$0"})
    static final class b extends ContinuationImpl {
        Object a;
        /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f8528d;

        b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f8528d |= Integer.MIN_VALUE;
            return C1733c6.this.a((SyncParams) null, this);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Boolean> {
        public static final c a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            Log.d$default("Sync not enabled or not required. `sync.acknowledged` API event will not be triggered.", null, 2, null);
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$d */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Boolean> {
        public static final d a = new d();

        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            Log.d$default("New sync user. `sync.acknowledged` API event will not be triggered.", null, 2, null);
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$e */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Boolean> {
        public static final e a = new e();

        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            Log.d$default("User status already up-to-date. `sync.acknowledged` API event will not be triggered.", null, 2, null);
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$f */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Boolean> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1733c6.this.c.g());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$g */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"io/didomi/sdk/c6$g", "Lio/didomi/sdk/c3;", "", com.json.mediationsdk.utils.c.Y1, "", "a", "(Ljava/lang/String;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
    public static final class g implements InterfaceC1730c3 {
        final /* synthetic */ Continuation<C1946y<SyncResponse>> b;
        final /* synthetic */ String c;

        /* JADX WARN: Multi-variable type inference failed */
        g(Continuation<? super C1946y<SyncResponse>> continuation, String str) {
            this.b = continuation;
            this.c = str;
        }

        @Override // io.didomi.drawable.InterfaceC1730c3
        public void a(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                SyncResponse syncResponse = (SyncResponse) C1733c6.this.j.fromJson(response, SyncResponse.class);
                if (syncResponse == null) {
                    Continuation<C1946y<SyncResponse>> continuation = this.b;
                    Result.a aVar = Result.a;
                    continuation.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a("Empty response")));
                } else {
                    Continuation<C1946y<SyncResponse>> continuation2 = this.b;
                    Result.a aVar2 = Result.a;
                    continuation2.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a(syncResponse)));
                }
            } catch (Exception e2) {
                Continuation<C1946y<SyncResponse>> continuation3 = this.b;
                Result.a aVar3 = Result.a;
                continuation3.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a((Throwable) new V3(e2))));
            }
        }

        @Override // io.didomi.drawable.InterfaceC1730c3
        public void b(String response) {
            Intrinsics.checkNotNullParameter(response, "response");
            Log.e$default("Error syncing data from server. Request: " + this.c + " / Response: " + response, null, 2, null);
            try {
                SyncError syncError = (SyncError) C1733c6.this.j.fromJson(response, SyncError.class);
                if (syncError.getCode() == 404 && Intrinsics.areEqual(syncError.getName(), "NotFound")) {
                    Continuation<C1946y<SyncResponse>> continuation = this.b;
                    Result.a aVar = Result.a;
                    continuation.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a((Throwable) new C1743d6())));
                } else {
                    Continuation<C1946y<SyncResponse>> continuation2 = this.b;
                    Result.a aVar2 = Result.a;
                    continuation2.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a(response)));
                }
            } catch (Exception e2) {
                Continuation<C1946y<SyncResponse>> continuation3 = this.b;
                Result.a aVar3 = Result.a;
                continuation3.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a((Throwable) new V3(e2))));
            }
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$h */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1733c6.this.a.b().h().getEnabled());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.c6$i */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.user.sync.SyncRepository$nonBlockingSync$1", f = "SyncRepository.kt", i = {}, l = {268}, m = "invokeSuspend", n = {}, s = {})
    static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ SyncParams c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(SyncParams syncParams, Continuation<? super i> continuation) {
            super(2, continuation);
            this.c = syncParams;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return C1733c6.this.new i(this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                C1733c6 c1733c6 = C1733c6.this;
                SyncParams syncParams = this.c;
                this.a = 1;
                if (c1733c6.a(syncParams, this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: io.didomi.sdk.c6$j */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<v> {
        final /* synthetic */ SyncReadyEvent b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(SyncReadyEvent syncReadyEvent) {
            super(0);
            this.b = syncReadyEvent;
        }

        public final void a() {
            B8.a.a("Syncing done");
            C1733c6.this.b();
            C1733c6.this.a(this.b);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ v invoke() {
            a();
            return v.a;
        }
    }

    public C1733c6(H configurationRepository, V consentRepository, io.didomi.drawable.apiEvents.b apiEventsRepository, M2 eventsRepository, Z2 httpRequestHelper, P3 organizationUserRepository, P8 userStatusRepository, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(httpRequestHelper, "httpRequestHelper");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = configurationRepository;
        this.b = consentRepository;
        this.c = apiEventsRepository;
        this.f8524d = eventsRepository;
        this.f8525e = httpRequestHelper;
        this.f8526f = organizationUserRepository;
        this.f8527g = userStatusRepository;
        this.h = coroutineDispatcher;
        this.i = LazyKt__LazyJVMKt.lazy(new h());
        this.j = new Gson();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(SyncReadyEvent syncReadyEvent) {
        this.f8524d.c(syncReadyEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b() {
        M2 m2 = this.f8524d;
        UserAuth userAuth = this.f8526f.getUserAuth();
        m2.c(new SyncDoneEvent(userAuth != null ? userAuth.getId() : null));
    }

    private final void b(SyncReadyEvent syncReadyEvent) {
        this.b.a(new j(syncReadyEvent));
        V v = this.b;
        Date dateA = C1917v0.a.a();
        UserAuth userAuth = this.f8526f.getUserAuth();
        v.a(dateA, userAuth != null ? userAuth.getId() : null);
        this.b.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(io.didomi.drawable.SyncParams r7, kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 332
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1733c6.a(io.didomi.sdk.b6, kotlin.coroutines.d):java.lang.Object");
    }

    public final void a(SyncParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        BuildersKt__BuildersKt.runBlocking$default(null, new a(params, null), 1, null);
    }

    public final boolean a() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    public final boolean a(int i2, Date date) {
        return date == null || C1917v0.a.b(date) >= i2;
    }

    public final boolean a(boolean z, int i2, Date date) {
        if (z) {
            UserAuth userAuth = this.f8526f.getUserAuth();
            String id = userAuth != null ? userAuth.getId() : null;
            if (id != null && !StringsKt__StringsJVMKt.isBlank(id) && a(i2, date)) {
                return true;
            }
        }
        return false;
    }

    public final Object b(SyncParams syncParams, Continuation<? super C1946y<SyncResponse>> continuation) throws Throwable {
        ArrayList arrayList;
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        C1917v0 c1917v0 = C1917v0.a;
        String strD = c1917v0.d(syncParams.getCreated());
        String str = strD == null ? "" : strD;
        String strD2 = c1917v0.d(syncParams.getUpdated());
        RequestToken requestToken = new RequestToken(str, strD2 == null ? "" : strD2, syncParams.getConsentPurposes(), syncParams.getLiPurposes(), syncParams.getConsentVendors(), syncParams.getLiVendors());
        String userId = syncParams.getUserId();
        UserAuth userAuth = this.f8526f.getUserAuth();
        String id = userAuth != null ? userAuth.getId() : null;
        String str2 = id == null ? "" : id;
        UserAuth userAuth2 = this.f8526f.getUserAuth();
        UserAuthParams userAuthParams = userAuth2 instanceof UserAuthParams ? (UserAuthParams) userAuth2 : null;
        String algorithm = userAuthParams != null ? userAuthParams.getAlgorithm() : null;
        UserAuth userAuth3 = this.f8526f.getUserAuth();
        UserAuthParams userAuthParams2 = userAuth3 instanceof UserAuthParams ? (UserAuthParams) userAuth3 : null;
        String secretId = userAuthParams2 != null ? userAuthParams2.getSecretId() : null;
        UserAuth userAuth4 = this.f8526f.getUserAuth();
        UserAuthParams userAuthParams3 = userAuth4 instanceof UserAuthParams ? (UserAuthParams) userAuth4 : null;
        Long expiration = userAuthParams3 != null ? userAuthParams3.getExpiration() : null;
        UserAuth userAuth5 = this.f8526f.getUserAuth();
        UserAuthWithHashParams userAuthWithHashParams = userAuth5 instanceof UserAuthWithHashParams ? (UserAuthWithHashParams) userAuth5 : null;
        String salt = userAuthWithHashParams != null ? userAuthWithHashParams.getSalt() : null;
        UserAuth userAuth6 = this.f8526f.getUserAuth();
        UserAuthWithHashParams userAuthWithHashParams2 = userAuth6 instanceof UserAuthWithHashParams ? (UserAuthWithHashParams) userAuth6 : null;
        String digest = userAuthWithHashParams2 != null ? userAuthWithHashParams2.getDigest() : null;
        UserAuth userAuth7 = this.f8526f.getUserAuth();
        UserAuthWithEncryptionParams userAuthWithEncryptionParams = userAuth7 instanceof UserAuthWithEncryptionParams ? (UserAuthWithEncryptionParams) userAuth7 : null;
        String initializationVector = userAuthWithEncryptionParams != null ? userAuthWithEncryptionParams.getInitializationVector() : null;
        List<UserAuth> listB = this.f8526f.b();
        if (listB != null) {
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
            for (UserAuth userAuth8 : listB) {
                String id2 = userAuth8.getId();
                boolean z = userAuth8 instanceof UserAuthParams;
                UserAuthParams userAuthParams4 = z ? (UserAuthParams) userAuth8 : null;
                String algorithm2 = userAuthParams4 != null ? userAuthParams4.getAlgorithm() : null;
                UserAuthParams userAuthParams5 = z ? (UserAuthParams) userAuth8 : null;
                String secretId2 = userAuthParams5 != null ? userAuthParams5.getSecretId() : null;
                UserAuthParams userAuthParams6 = z ? (UserAuthParams) userAuth8 : null;
                Long expiration2 = userAuthParams6 != null ? userAuthParams6.getExpiration() : null;
                boolean z2 = userAuth8 instanceof UserAuthWithHashParams;
                UserAuthWithHashParams userAuthWithHashParams3 = z2 ? (UserAuthWithHashParams) userAuth8 : null;
                String salt2 = userAuthWithHashParams3 != null ? userAuthWithHashParams3.getSalt() : null;
                UserAuthWithHashParams userAuthWithHashParams4 = z2 ? (UserAuthWithHashParams) userAuth8 : null;
                String digest2 = userAuthWithHashParams4 != null ? userAuthWithHashParams4.getDigest() : null;
                UserAuthWithEncryptionParams userAuthWithEncryptionParams2 = userAuth8 instanceof UserAuthWithEncryptionParams ? (UserAuthWithEncryptionParams) userAuth8 : null;
                arrayList.add(new RequestSynchronizedUser(id2, algorithm2, secretId2, salt2, digest2, expiration2, userAuthWithEncryptionParams2 != null ? userAuthWithEncryptionParams2.getInitializationVector() : null));
            }
        } else {
            arrayList = null;
        }
        String requestBody = this.j.toJson(new SyncRequest(new RequestSource(syncParams.getDomain(), syncParams.getApiKey(), syncParams.getSdkVersion(), syncParams.getSourceType()), new RequestUser(userId, str2, algorithm, secretId, salt, digest, expiration, initializationVector, arrayList, syncParams.getAgent(), requestToken, syncParams.getTcfcs(), syncParams.getTcfv(), C1917v0.a.d(syncParams.getLastSyncDate()), SetsKt__SetsJVMKt.setOf(this.a.e().getValue()))));
        g gVar = new g(safeContinuation, requestBody);
        Z2 z22 = this.f8525e;
        String str3 = syncParams.getApiBaseURL() + "sync";
        Intrinsics.checkNotNullExpressionValue(requestBody, "requestBody");
        z22.a(str3, requestBody, gVar, syncParams.getConfig().getTimeout());
        Object objB = safeContinuation.b();
        if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objB;
    }

    public final void b(SyncParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.h), null, null, new i(params, null), 3, null);
    }
}
