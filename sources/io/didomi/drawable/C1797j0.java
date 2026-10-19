package io.didomi.drawable;

import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.consent.model.DidomiConsentToken;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: renamed from: io.didomi.sdk.j0, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B3\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0001\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0013R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u0011\u0010\u001fR\u001b\u0010$\u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b\u0014\u0010#R\u001b\u0010(\u001a\u00020%8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010\u001e\u001a\u0004\b\u0016\u0010'R\u0013\u0010)\u001a\u0004\u0018\u00010\u001c8F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u001f¨\u0006*"}, d2 = {"Lio/didomi/sdk/j0;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lio/didomi/sdk/M8;", "userRepository", "Lio/didomi/sdk/h0;", "dcsEncoder", "Lkotlinx/coroutines/CoroutineDispatcher;", "coroutineDispatcher", "<init>", "(Lio/didomi/sdk/H;Landroid/content/SharedPreferences;Lio/didomi/sdk/M8;Lio/didomi/sdk/h0;Lkotlinx/coroutines/CoroutineDispatcher;)V", "Lio/didomi/sdk/consent/model/ConsentToken;", "token", "", "a", "(Lio/didomi/sdk/consent/model/ConsentToken;)V", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/content/SharedPreferences;", "c", "Lio/didomi/sdk/M8;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/h0;", "e", "Lkotlinx/coroutines/CoroutineDispatcher;", "", InneractiveMediationDefs.GENDER_FEMALE, "Lkotlin/Lazy;", "()Ljava/lang/String;", "dcsKey", "", "g", "()I", "dcsSchemaVersion", "", "h", "()Z", "enableDCS", "value", "android_release"}, mv = {1, 8, 0})
public final class C1797j0 {
    private final H a;
    private final SharedPreferences b;
    private final M8 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1777h0 f8592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CoroutineDispatcher f8593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f8594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8595g;
    private final Lazy h;

    /* JADX INFO: renamed from: io.didomi.sdk.j0$a */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/String;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<String> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return C1797j0.this.a.e().getDcsKey();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j0$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Integer> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            C1806k.a.DCSConfig dCSConfigD = C1797j0.this.a.b().a().d();
            return Integer.valueOf(dCSConfigD != null ? dCSConfigD.getSchemaVersion() : 0);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j0$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Boolean> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(C1797j0.this.a.b().b().a());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.j0$d */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "io.didomi.sdk.consent.DCSRepository$save$1", f = "DCSRepository.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
    static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        int a;
        final /* synthetic */ ConsentToken b;
        final /* synthetic */ C1797j0 c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(ConsentToken consentToken, C1797j0 c1797j0, Continuation<? super d> continuation) {
            super(2, continuation);
            this.b = consentToken;
            this.c = c1797j0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new d(this.b, this.c, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                DidomiConsentToken didomiConsentTokenA = X.a(this.b, this.c.c.getUserId());
                C1777h0 c1777h0 = this.c.f8592d;
                String json = new Gson().toJson(didomiConsentTokenA);
                Intrinsics.checkNotNullExpressionValue(json, "Gson().toJson(didomiConsentToken)");
                int iB = this.c.b();
                this.a = 1;
                obj = c1777h0.a(json, iB, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            C1946y c1946y = (C1946y) obj;
            if (c1946y.c()) {
                String message = c1946y.a().getMessage();
                if (message == null) {
                    message = "Unknown error from DCS encoder";
                }
                Log.e(message, c1946y.a());
                return v.a;
            }
            try {
                this.c.b.edit().putString(this.c.a(), (String) c1946y.b()).apply();
            } catch (Exception e2) {
                String message2 = e2.getMessage();
                if (message2 == null) {
                    message2 = "Unknown error while saving DCS";
                }
                Log.e(message2, e2);
            }
            return v.a;
        }
    }

    public C1797j0(H configurationRepository, SharedPreferences sharedPreferences, M8 userRepository, C1777h0 dcsEncoder, CoroutineDispatcher coroutineDispatcher) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(userRepository, "userRepository");
        Intrinsics.checkNotNullParameter(dcsEncoder, "dcsEncoder");
        Intrinsics.checkNotNullParameter(coroutineDispatcher, "coroutineDispatcher");
        this.a = configurationRepository;
        this.b = sharedPreferences;
        this.c = userRepository;
        this.f8592d = dcsEncoder;
        this.f8593e = coroutineDispatcher;
        this.f8594f = LazyKt__LazyJVMKt.lazy(new a());
        this.f8595g = LazyKt__LazyJVMKt.lazy(new b());
        this.h = LazyKt__LazyJVMKt.lazy(new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String a() {
        return (String) this.f8594f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int b() {
        return ((Number) this.f8595g.getValue()).intValue();
    }

    private final boolean c() {
        return ((Boolean) this.h.getValue()).booleanValue();
    }

    public final void a(ConsentToken token) {
        Intrinsics.checkNotNullParameter(token, "token");
        if (b() == 0) {
            Log.d$default("DCS won't be saved because the functionality is not enabled.", null, 2, null);
        } else if (c()) {
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(this.f8593e), null, null, new d(token, this, null), 3, null);
        } else {
            Log.d$default("DCS won't be saved because the feature flag is not enabled.", null, 2, null);
        }
    }

    public final String d() {
        return this.b.getString(a(), null);
    }
}
