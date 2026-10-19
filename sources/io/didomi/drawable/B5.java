package io.didomi.drawable;

import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1806k;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

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
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\"\u0010\u0005\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001a\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\f\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u001cR\u0011\u0010\u001f\u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001cR\u0011\u0010 \u001a\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u001cR\u0011\u0010#\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\n\u0010\"R#\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0%0$8F¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lio/didomi/sdk/B5;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/C3;", "logoProvider", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)V", "a", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/v3;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/v3;", "setLanguagesHelper", "(Lio/didomi/sdk/v3;)V", "c", "Lio/didomi/sdk/C3;", "g", "()Lio/didomi/sdk/C3;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "()Z", "dcsIsEnabled", "", "()Ljava/lang/String;", "duration", "h", "title", "description", "Lio/didomi/sdk/a;", "()Lio/didomi/sdk/a;", "closeButtonAccessibility", "", "Lkotlin/Pair;", "e", "()Ljava/util/List;", "keys", "android_release"}, mv = {1, 8, 0})
public class B5 extends ViewModel {
    private final H a;
    private C1920v3 b;
    private final C3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f8182d;

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<Boolean> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            boolean z = false;
            if (B5.this.a.b().b().a()) {
                C1806k.a.DCSConfig dCSConfigD = B5.this.a.b().a().d();
                if ((dCSConfigD != null ? dCSConfigD.getSchemaVersion() : 0) > 0) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public B5(H configurationRepository, C1920v3 languagesHelper, C3 logoProvider) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        this.a = configurationRepository;
        this.b = languagesHelper;
        this.c = logoProvider;
        this.f8182d = LazyKt__LazyJVMKt.lazy(new a());
    }

    private final boolean b() {
        return ((Boolean) this.f8182d.getValue()).booleanValue();
    }

    private final String d() {
        return C1917v0.a(C1917v0.a, this.b, C1816l.a(this.a.b().a()), (String) null, false, 12, (Object) null);
    }

    public final Accessibility a() {
        return new Accessibility(C1920v3.a(this.b, "close", null, null, null, 14, null), C1920v3.a(this.b, "go_back_to_purposes_list", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    public final String c() {
        return C1920v3.a(this.b, "sdk_storage_disclosure_description", null, null, null, 14, null);
    }

    public final List<Pair<String, String>> e() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair("IABTCF_TCString", d()));
        arrayList.add(new Pair(this.a.e().getTokenKey(), d()));
        if (b()) {
            arrayList.add(new Pair(this.a.e().getDcsKey(), d()));
        }
        return arrayList;
    }

    protected final C1920v3 f() {
        return this.b;
    }

    public final C3 g() {
        return this.c;
    }

    public final String h() {
        return C1920v3.a(this.b, "sdk_storage_disclosure_title", null, null, null, 14, null);
    }
}
