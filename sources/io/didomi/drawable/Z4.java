package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

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
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 +2\u00020\u0001:\u0001\u000fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0014\u0010\u0013R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0015R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001aR\u001b\u0010\u001e\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u001c\u001a\u0004\b\u0016\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R(\u0010(\u001a\u0004\u0018\u00010#2\b\u0010$\u001a\u0004\u0018\u00010#8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b\u0018\u0010'R\u0014\u0010*\u001a\u00020\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010)¨\u0006,"}, d2 = {"Lio/didomi/sdk/Z4;", "", "Lio/didomi/sdk/l5;", "remoteFilesHelper", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/H;", "configurationRepository", "<init>", "(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/H;)V", "", "locale", "Lio/didomi/sdk/k5;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k5;", "", "e", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/l5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/Z;", "c", "Lio/didomi/sdk/v3;", "Lio/didomi/sdk/H;", "", "Lkotlin/Lazy;", "()I", "gvlVersion", "Lcom/google/gson/Gson;", InneractiveMediationDefs.GENDER_FEMALE, "Lcom/google/gson/Gson;", "gson", "Lio/didomi/sdk/Y4;", "<set-?>", "g", "Lio/didomi/sdk/Y4;", "()Lio/didomi/sdk/Y4;", "translations", "()Ljava/lang/String;", "currentLanguageCode", "h", "android_release"}, mv = {1, 8, 0})
public final class Z4 {
    public static final a h = new a(null);
    private final C1822l5 a;
    private final Z b;
    private final C1920v3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final H f8472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Gson f8474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Y4 f8475g;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lio/didomi/sdk/Z4$a;", "", "<init>", "()V", "", "TRANSLATIONS_TIMEOUT", "J", "", "TRANSLATION_CACHE_IN_SECONDS", "I", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Integer> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(Z4.this.f8472d.b().a().m().d().e());
        }
    }

    public Z4(C1822l5 remoteFilesHelper, Z contextHelper, C1920v3 languagesHelper, H configurationRepository) {
        Intrinsics.checkNotNullParameter(remoteFilesHelper, "remoteFilesHelper");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        this.a = remoteFilesHelper;
        this.b = contextHelper;
        this.c = languagesHelper;
        this.f8472d = configurationRepository;
        this.f8473e = LazyKt__LazyJVMKt.lazy(new b());
        this.f8474f = new Gson();
    }

    private final RemoteFile a(String str) {
        return new RemoteFile(this.b.a(b(), str), true, "didomi_iab_purposes_translations_v" + b() + '_' + str, 604800, "didomi_iab_purposes_v" + b() + '_' + str + ".json", false, 1000L, false, 160, null);
    }

    private final String a() {
        return this.c.f();
    }

    private final int b() {
        return ((Number) this.f8473e.getValue()).intValue();
    }

    private final void e() {
        InterfaceC1740d3 interfaceC1740d3D = this.f8472d.d();
        this.f8475g = new Y4(interfaceC1740d3D.c(), interfaceC1740d3D.d(), interfaceC1740d3D.g(), interfaceC1740d3D.b(), null, 16, null);
    }

    public final Y4 c() {
        return this.f8475g;
    }

    public final void d() {
        if (Intrinsics.areEqual(A3.a.b(a()), "en")) {
            e();
            return;
        }
        String strA = a();
        try {
            String strB = this.a.b(a(strA));
            if (strB == null) {
                strA = this.c.b(a());
                if (!Intrinsics.areEqual(strA, a())) {
                    Log.e$default("Unable to download the purpose translations for `" + a() + "`, using `" + strA + "` as fallback", null, 2, null);
                    strB = this.a.b(a(strA));
                }
            }
            if (strB != null) {
                this.f8475g = (Y4) this.f8474f.fromJson(strB, Y4.class);
                return;
            }
            Log.e$default("Unable to download the purpose translations for `" + strA + "`, using `english` as fallback", null, 2, null);
            e();
        } catch (Exception e2) {
            Log.e("Unable to load the purpose translations for `" + strA + "`, using `english` as fallback", e2);
            e();
        }
    }
}
