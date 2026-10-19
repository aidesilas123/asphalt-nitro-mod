package io.didomi.drawable;

import android.content.Context;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.Gson;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalVendor;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
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
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 V2\u00020\u0001:\u0001\u001cB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\u001c\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\u001c\u0010#J\u0015\u0010\u001c\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u001c\u0010$J\u0015\u0010\u001c\u001a\u00020\"2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b\u001c\u0010'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010)R\u0017\u0010+\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0013\u0010*\u001a\u0004\b\u001c\u0010\u001aR\u0016\u0010-\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*R\u0016\u0010/\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010*R\u0016\u00101\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010*R\u0016\u00102\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010*R\u0014\u00103\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010*R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u0010*R\u0018\u0010:\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010*R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u001b\u0010C\u001a\u00020?8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\b.\u0010BR$\u0010G\u001a\u00020;2\u0006\u0010D\u001a\u00020;8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0011\u0010S\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b0\u0010RR\u0011\u0010T\u001a\u00020\u00158F¢\u0006\u0006\u001a\u0004\b,\u0010\u0017R\u0011\u0010!\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010 R\u0013\u0010U\u001a\u0004\u0018\u00010\u00188F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u001a¨\u0006W"}, d2 = {"Lio/didomi/sdk/H;", "", "Lio/didomi/sdk/l5;", "remoteFilesHelper", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/z3;", "localPropertiesRepository", "Lio/didomi/sdk/DidomiInitializeParameters;", "parameters", "<init>", "(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V", "Landroid/content/Context;", "context", "Lio/didomi/sdk/u5;", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/content/Context;)Lio/didomi/sdk/u5;", "Lio/didomi/sdk/w5;", "c", "(Landroid/content/Context;)Lio/didomi/sdk/w5;", "Lio/didomi/sdk/d3;", "h", "()Lio/didomi/sdk/d3;", "", "i", "()Ljava/lang/String;", "iabConfigurationJson", "a", "(Ljava/lang/String;)Lio/didomi/sdk/d3;", "Lio/didomi/sdk/k;", "g", "()Lio/didomi/sdk/k;", "appConfiguration", "", "(Lio/didomi/sdk/k;)V", "(Landroid/content/Context;)V", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;)V", "Lio/didomi/sdk/l5;", "Lio/didomi/sdk/Z;", "Ljava/lang/String;", "apiKey", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "providerId", "e", "noticeId", InneractiveMediationDefs.GENDER_FEMALE, "countryCode", "regionCode", "cacheFileName", "Lcom/google/gson/Gson;", "Lcom/google/gson/Gson;", "gson", "j", "localConfigurationPath", CampaignEx.JSON_KEY_AD_K, "remoteConfigurationUrl", "", "l", "Ljava/lang/Boolean;", "disableDidomiRemoteConfig", "Lio/didomi/sdk/Regulation;", InneractiveMediationDefs.GENDER_MALE, "Lkotlin/Lazy;", "()Lio/didomi/sdk/Regulation;", "regulation", "<set-?>", b4.p, "Z", "isConfigLoadedFromDidomi", "()Z", "o", "Lio/didomi/sdk/u5;", "internalSdkConfiguration", TtmlNode.TAG_P, "Lio/didomi/sdk/d3;", "internalIabConfiguration", CampaignEx.JSON_KEY_AD_Q, "Lio/didomi/sdk/k;", "internalAppConfiguration", "()Lio/didomi/sdk/u5;", "sdkConfiguration", "iabConfiguration", "deploymentId", "r", "android_release"}, mv = {1, 8, 0})
public final class H {
    public static final a r = new a(null);
    private final C1822l5 a;
    private final Z b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f8231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f8232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f8233f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f8234g;
    private final String h;
    private final Gson i;
    private String j;
    private String k;
    private Boolean l;
    private final Lazy m;
    private boolean n;
    private InterfaceC1912u5 o;
    private InterfaceC1740d3 p;
    private C1806k q;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\t¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/H$a;", "", "<init>", "()V", "", "CACHE_FILE_NAME", "Ljava/lang/String;", "", "DEFAULT_CACHE_IN_SECONDS", "I", "IAB_CONFIG_CACHE_IN_SECONDS", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/Regulation;", "a", "()Lio/didomi/sdk/Regulation;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Regulation> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Regulation invoke() {
            return C1816l.c(H.this.b());
        }
    }

    public H(C1822l5 remoteFilesHelper, Z contextHelper, C1960z3 localPropertiesRepository, DidomiInitializeParameters parameters) {
        Intrinsics.checkNotNullParameter(remoteFilesHelper, "remoteFilesHelper");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(localPropertiesRepository, "localPropertiesRepository");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        this.a = remoteFilesHelper;
        this.b = contextHelper;
        String str = parameters.apiKey;
        this.c = str;
        this.i = new Gson();
        this.m = LazyKt__LazyJVMKt.lazy(new b());
        if (contextHelper.g()) {
            if (parameters.localConfigurationPath != null || parameters.remoteConfigurationUrl != null || parameters.disableDidomiRemoteConfig) {
                Log.w$default("TV device detected: Only remote console configuration is allowed", null, 2, null);
            }
            this.j = null;
            this.k = null;
            this.l = Boolean.FALSE;
        } else {
            String str2 = parameters.localConfigurationPath;
            this.j = str2 == null ? "didomi_config.json" : str2;
            this.k = parameters.remoteConfigurationUrl;
            this.l = Boolean.valueOf(parameters.disableDidomiRemoteConfig);
        }
        this.f8231d = parameters.providerId;
        String str3 = contextHelper.g() ? parameters.tvNoticeId : parameters.noticeId;
        this.f8232e = str3;
        String str4 = parameters.countryCode;
        this.f8233f = str4;
        String str5 = str4 != null ? parameters.regionCode : null;
        this.f8234g = str5;
        String strB = localPropertiesRepository.b();
        String strJoinToString$default = CollectionsKt___CollectionsKt.joinToString$default(CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new String[]{str, str3, strB == null ? "1.0.0" : strB, str4, str5, localPropertiesRepository.a()}), "_", null, null, 0, null, null, 62, null);
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str6 = String.format("didomi_config_cache_%s.json", Arrays.copyOf(new Object[]{strJoinToString$default}, 1));
        Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
        this.h = str6;
    }

    private final InterfaceC1740d3 a(String str) {
        Object objFromJson = this.i.fromJson(str, (Class<Object>) C1760f3.class);
        Intrinsics.checkNotNullExpressionValue(objFromJson, "gson.fromJson(\n         …FV2::class.java\n        )");
        return (InterfaceC1740d3) objFromJson;
    }

    private final void a(C1806k c1806k) {
        c1806k.a().m().d().a(this.n);
    }

    private final InterfaceC1912u5 b(Context context) {
        InterfaceC1912u5 interfaceC1912u5 = this.o;
        return interfaceC1912u5 == null ? c(context) : interfaceC1912u5;
    }

    private final C1932w5 c(Context context) {
        return (C1932w5) this.i.fromJson(C1707a0.a(context, "didomi_master_config.json"), C1932w5.class);
    }

    private final C1806k g() {
        RemoteFile remoteFile;
        C1806k c1806k = this.q;
        if (c1806k != null) {
            a(c1806k);
            return c1806k;
        }
        this.n = false;
        String str = this.k;
        if (str != null) {
            remoteFile = new RemoteFile(str, true, this.h, 3600, this.j, false, 0L, false, 224, null);
        } else if (Intrinsics.areEqual(this.l, Boolean.FALSE)) {
            this.n = true;
            remoteFile = new RemoteFile(this.b.a(this.c, this.f8232e, this.f8233f, this.f8234g), true, this.h, 3600, this.j, false, 0L, false, 224, null);
        } else {
            Log.e$default("The parameter `disableDidomiRemoteConfig` is deprecated, in the future it will be mandatory to create your notice from the console (see https://developers.didomi.io/cmp/mobile-sdk/android/setup#from-the-console-recommended for more information).", null, 2, null);
            remoteFile = new RemoteFile(null, false, this.h, 3600, this.j, false, 0L, false, 224, null);
        }
        C1806k appConfiguration = (C1806k) this.i.fromJson(this.a.b(remoteFile), C1806k.class);
        Intrinsics.checkNotNullExpressionValue(appConfiguration, "appConfiguration");
        a(appConfiguration);
        return appConfiguration;
    }

    private final InterfaceC1740d3 h() {
        InterfaceC1740d3 interfaceC1740d3A = this.p;
        if (interfaceC1740d3A == null) {
            interfaceC1740d3A = a(i());
        }
        C1750e3.a(interfaceC1740d3A, f());
        return interfaceC1740d3A;
    }

    private final String i() throws Exception {
        String str;
        int iE = b().a().m().d().e();
        boolean zI = b().a().m().d().i();
        int iK = b().a().m().d().k() * 1000;
        String strA = this.b.a(iE);
        String str2 = "didomi_iab_config_v" + iE;
        if (zI) {
            str = null;
        } else {
            str = "didomi_iab_config_v" + iE + ".json";
        }
        String strB = this.a.b(new RemoteFile(strA, true, str2, 604800, str, false, iK, iK == 0 && zI));
        if (strB != null) {
            return strB;
        }
        Log.e$default("Unable to download the IAB vendors list", null, 2, null);
        throw new Exception("Unable to download the IAB vendors list");
    }

    public final String a() {
        return this.c;
    }

    public final void a(Context context) throws Exception {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            this.q = g();
            this.o = b(context);
            this.p = h();
        } catch (Exception e2) {
            Log.e("Unable to load the configuration for the Didomi SDK", e2);
            throw new Exception("Unable to load the configuration for the Didomi SDK", e2);
        }
    }

    public final void a(InternalVendor vendor) {
        DeviceStorageDisclosures deviceStorageDisclosures;
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        String deviceStorageDisclosureUrl = vendor.getDeviceStorageDisclosureUrl();
        if (deviceStorageDisclosureUrl == null) {
            return;
        }
        DeviceStorageDisclosures deviceStorageDisclosures2 = null;
        try {
            deviceStorageDisclosures = (DeviceStorageDisclosures) this.i.fromJson(this.a.b(new RemoteFile(deviceStorageDisclosureUrl, true, null, 0, null, false, 0L, false, 224, null)), DeviceStorageDisclosures.class);
        } catch (Exception e2) {
            Log.e$default("Error while loading vendor device storage disclosures : " + e2, null, 2, null);
            deviceStorageDisclosures = null;
        }
        if (deviceStorageDisclosures != null && deviceStorageDisclosures.isValid()) {
            deviceStorageDisclosures2 = deviceStorageDisclosures;
        }
        C1870q3.a(vendor, deviceStorageDisclosures2);
    }

    public final C1806k b() {
        C1806k c1806k = this.q;
        if (c1806k != null) {
            return c1806k;
        }
        throw new IllegalStateException("Configuration was not loaded");
    }

    public final String c() {
        return b().a().f();
    }

    public final InterfaceC1740d3 d() {
        InterfaceC1740d3 interfaceC1740d3 = this.p;
        if (interfaceC1740d3 != null) {
            return interfaceC1740d3;
        }
        throw new IllegalStateException("Configuration was not loaded");
    }

    public final Regulation e() {
        return (Regulation) this.m.getValue();
    }

    public final InterfaceC1912u5 f() {
        InterfaceC1912u5 interfaceC1912u5 = this.o;
        if (interfaceC1912u5 != null) {
            return interfaceC1912u5;
        }
        throw new IllegalStateException("Configuration was not loaded");
    }
}
