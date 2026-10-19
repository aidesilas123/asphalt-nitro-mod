package io.didomi.drawable;

import android.util.Base64;
import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;

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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001b\u0010\u001f\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001aR\u0017\u0010\"\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u0012\u0010\u001eR\u0011\u0010#\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b \u0010\u001eR\u0011\u0010$\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u001eR\u0011\u0010%\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001eR\u0011\u0010)\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0011\u0010*\u001a\u00020&8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010(¨\u0006+"}, d2 = {"Lio/didomi/sdk/K8;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/M8;", "userRepository", "Lio/didomi/sdk/C3;", "logoProvider", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/M8;Lio/didomi/sdk/C3;)V", "a", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/v3;", "c", "Lio/didomi/sdk/C3;", "e", "()Lio/didomi/sdk/C3;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "sdkVersion", "Lkotlin/Lazy;", "g", "()Ljava/lang/String;", "token", InneractiveMediationDefs.GENDER_FEMALE, "userId", "contentText", "title", "contentTitle", "copiedLabel", "Lio/didomi/sdk/a;", "h", "()Lio/didomi/sdk/a;", "userInfoPanelAccessibility", "closeButtonAccessibility", "android_release"}, mv = {1, 8, 0})
public final class K8 extends ViewModel {
    private final H a;
    private final C1920v3 b;
    private final C3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f8274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f8275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f8277g;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/String;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<String> {
        final /* synthetic */ V a;
        final /* synthetic */ K8 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(V v, K8 k8) {
            super(0);
            this.a = v;
            this.b = k8;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            String string = X.a(this.a.b()).toString();
            Intrinsics.checkNotNullExpressionValue(string, "consentRepository.consentToken.toJSON().toString()");
            byte[] bytes = string.getBytes(Charsets.b);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            return C1920v3.a(this.b.b, "user_information_token", null, null, null, 14, null) + ":\n" + Base64.encodeToString(bytes, 2);
        }
    }

    public K8(H configurationRepository, V consentRepository, Z contextHelper, C1920v3 languagesHelper, M8 userRepository, C3 logoProvider) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(userRepository, "userRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        this.a = configurationRepository;
        this.b = languagesHelper;
        this.c = logoProvider;
        String str = C1920v3.a(languagesHelper, "user_information_sdk_version", null, null, null, 14, null) + ' ' + contextHelper.f();
        this.f8274d = str;
        this.f8275e = LazyKt__LazyJVMKt.lazy(new a(consentRepository, this));
        String str2 = C1920v3.a(languagesHelper, "user_information_user_id", null, null, null, 14, null) + ":\n" + userRepository.getUserId();
        this.f8276f = str2;
        this.f8277g = g() + "\n\n" + str2 + "\n\n" + str;
    }

    private final String g() {
        return (String) this.f8275e.getValue();
    }

    public final Accessibility a() {
        return new Accessibility(C1920v3.a(this.b, "close", null, null, null, 14, null), C1920v3.a(this.b, "go_back_to_partners_list", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final String b() {
        return this.f8277g;
    }

    public final String c() {
        return C1920v3.a(this.b, "user_information_title", null, null, null, 14, null);
    }

    public final String d() {
        return C1920v3.a(this.b, "user_information_copied", null, null, null, 14, null);
    }

    public final C3 e() {
        return this.c;
    }

    public final String f() {
        return C1761f4.a.a(this.a, this.b);
    }

    public final Accessibility h() {
        return new Accessibility(C1920v3.a(this.b, "user_information_description", null, null, null, 14, null), C1920v3.a(this.b, "copy_to_clipboard_action", null, null, null, 14, null), null, false, 0, null, 60, null);
    }
}
