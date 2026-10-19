package io.didomi.drawable;

import androidx.core.view.GravityCompat;
import com.applovin.sdk.AppLovinEventTypes;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.json.o2;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import io.didomi.drawable.config.app.SyncConfiguration;
import io.didomi.drawable.models.GoogleConfig;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.k;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.k, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b+\b\u0086\b\u0018\u0000 N2\u00020\u0001:\u000b'*.,06;9=@3B£\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012 \b\u0002\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0016\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0018\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010!\u001a\u00020 HÖ\u0001¢\u0006\u0004\b!\u0010\"J\u001a\u0010%\u001a\u00020$2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b%\u0010&R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b'\u0010)R\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u001a\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001a\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b,\u00102\u001a\u0004\b3\u00104R\u001a\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b0\u00105\u001a\u0004\b6\u00107R\u001a\u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b6\u00108\u001a\u0004\b9\u0010:R2\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001a\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b9\u0010?\u001a\u0004\b@\u0010AR\u001a\u0010\u0014\u001a\u00020\u00138\u0006X\u0087\u0004¢\u0006\f\n\u0004\b=\u0010B\u001a\u0004\bC\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b@\u0010E\u001a\u0004\bF\u0010\u001fR\u001a\u0010\u0017\u001a\u00020\u00168\u0006X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010G\u001a\u0004\b;\u0010HR\u001a\u0010\u0019\u001a\u00020\u00188\u0006X\u0087\u0004¢\u0006\f\n\u0004\bC\u0010I\u001a\u0004\b.\u0010JR\u001a\u0010\u001b\u001a\u00020\u001a8\u0006X\u0087\u0004¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\b*\u0010M¨\u0006O"}, d2 = {"Lio/didomi/sdk/k;", "", "Lio/didomi/sdk/k$a;", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "Lio/didomi/sdk/k$e;", "languages", "Lio/didomi/sdk/k$f;", "notice", "Lio/didomi/sdk/k$j;", "underageNotice", "Lio/didomi/sdk/k$g;", "preferences", "Lio/didomi/sdk/config/app/SyncConfiguration;", "sync", "", "", "textsConfiguration", "Lio/didomi/sdk/k$i;", "theme", "Lio/didomi/sdk/k$k;", "user", "version", "Lio/didomi/sdk/k$h;", "regulation", "Lio/didomi/sdk/k$d;", "integrations", "Lio/didomi/sdk/k$c;", "featureFlags", "<init>", "(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$a;", "()Lio/didomi/sdk/k$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/k$e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/k$e;", "c", "Lio/didomi/sdk/k$f;", "e", "()Lio/didomi/sdk/k$f;", "Lio/didomi/sdk/k$j;", CampaignEx.JSON_KEY_AD_K, "()Lio/didomi/sdk/k$j;", "Lio/didomi/sdk/k$g;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/k$g;", "Lio/didomi/sdk/config/app/SyncConfiguration;", "h", "()Lio/didomi/sdk/config/app/SyncConfiguration;", "g", "Ljava/util/Map;", "i", "()Ljava/util/Map;", "Lio/didomi/sdk/k$i;", "j", "()Lio/didomi/sdk/k$i;", "Lio/didomi/sdk/k$k;", "l", "()Lio/didomi/sdk/k$k;", "Ljava/lang/String;", MobileAdsBridge.versionMethodName, "Lio/didomi/sdk/k$h;", "()Lio/didomi/sdk/k$h;", "Lio/didomi/sdk/k$d;", "()Lio/didomi/sdk/k$d;", InneractiveMediationDefs.GENDER_MALE, "Lio/didomi/sdk/k$c;", "()Lio/didomi/sdk/k$c;", b4.p, "android_release"}, mv = {1, 8, 0})
public final class C1806k {
    public static final b n = new b(null);

    @com.google.gson.r.c(MBridgeConstans.DYNAMIC_VIEW_WX_APP)
    private final a a;

    @com.google.gson.r.c("languages")
    private final e b;

    @com.google.gson.r.c("notice")
    private final f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.gson.r.c("underageNotice")
    private final j f8609d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @com.google.gson.r.c("preferences")
    private final g f8610e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @com.google.gson.r.c("sync")
    private final SyncConfiguration f8611f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @com.google.gson.r.c("texts")
    private final Map<String, Map<String, String>> f8612g;

    @com.google.gson.r.c("theme")
    private final i h;

    @com.google.gson.r.c("user")
    private final C0494k i;

    @com.google.gson.r.c("version")
    private final String j;

    @com.google.gson.r.c("regulation")
    private final h k;

    @com.google.gson.r.c("integrations")
    private final d l;

    @com.google.gson.r.c("featureFlags")
    private final c m;

    /* JADX INFO: renamed from: io.didomi.sdk.k$a */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b \b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u001f\"B\u0099\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0001\u0012\b\b\u0002\u0010\f\u001a\u00020\u0001\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019HÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u000e2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010 \u001a\u0004\b#\u0010\u0018R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b$\u0010*R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010)\u001a\u0004\b,\u0010*R\u001a\u0010\u000b\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b\u001f\u0010/R\u001a\u0010\f\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\f\n\u0004\b,\u0010.\u001a\u0004\b+\u0010/R\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010 \u001a\u0004\b0\u0010\u0018R\u001a\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u00101\u001a\u0004\b2\u00103R\"\u0010\u0010\u001a\u00020\u00028\u0000@\u0000X\u0081\u000e¢\u0006\u0012\n\u0004\b4\u0010 \u001a\u0004\b\"\u0010\u0018\"\u0004\b5\u00106R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010 \u001a\u0004\b-\u0010\u0018R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\f\n\u0004\b2\u00107\u001a\u0004\b(\u00108R\u001a\u0010\u0014\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u00101\u001a\u0004\b4\u00103¨\u00069"}, d2 = {"Lio/didomi/sdk/k$a;", "", "", "name", "privacyPolicyURL", "Lio/didomi/sdk/k$a$b;", Didomi.VIEW_VENDORS, "", "Lio/didomi/sdk/CustomPurpose;", "customPurposes", "essentialPurposes", "consentDuration", "deniedConsentDuration", "logoUrl", "", "shouldHideDidomiLogo", "country", "deploymentId", "Lio/didomi/sdk/k$a$a;", "dcsConfig", "ouidAsPrimaryIfPresent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "i", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, CampaignEx.JSON_KEY_AD_K, "c", "Lio/didomi/sdk/k$a$b;", InneractiveMediationDefs.GENDER_MALE, "()Lio/didomi/sdk/k$a$b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "()Ljava/util/List;", "e", "g", InneractiveMediationDefs.GENDER_FEMALE, "Ljava/lang/Object;", "()Ljava/lang/Object;", "h", "Z", "l", "()Z", "j", "setCountry$android_release", "(Ljava/lang/String;)V", "Lio/didomi/sdk/k$a$a;", "()Lio/didomi/sdk/k$a$a;", "android_release"}, mv = {1, 8, 0})
    public static final class a {

        @com.google.gson.r.c("name")
        private final String a;

        @com.google.gson.r.c("privacyPolicyURL")
        private final String b;

        @com.google.gson.r.c(Didomi.VIEW_VENDORS)
        private final b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @com.google.gson.r.c("customPurposes")
        private final List<CustomPurpose> f8613d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @com.google.gson.r.c("essentialPurposes")
        private final List<String> f8614e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @com.google.gson.r.c("consentDuration")
        private final Object f8615f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @com.google.gson.r.c("deniedConsentDuration")
        private final Object f8616g;

        @com.google.gson.r.c("logoUrl")
        private final String h;

        @com.google.gson.r.c("shouldHideDidomiLogo")
        private final boolean i;

        @com.google.gson.r.c("country")
        private String j;

        @com.google.gson.r.c("deploymentId")
        private final String k;

        @com.google.gson.r.c("consentString")
        private final DCSConfig l;

        @com.google.gson.r.c("ouidAsPrimaryIfPresent")
        private final boolean m;

        /* JADX INFO: renamed from: io.didomi.sdk.k$a$a, reason: collision with other inner class name and from toString */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\fR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/k$a$a;", "", "", "schemaVersion", "", "signatureEnabled", "<init>", "(IZ)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "getSignatureEnabled", "()Z", "android_release"}, mv = {1, 8, 0})
        public static final /* data */ class DCSConfig {

            /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
            @com.google.gson.r.c("version")
            private final int schemaVersion;

            /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
            @com.google.gson.r.c("signatureEnabled")
            private final boolean signatureEnabled;

            /* JADX WARN: Multi-variable type inference failed */
            public DCSConfig() {
                this(0, 0 == true ? 1 : 0, 3, null);
            }

            public DCSConfig(int i, boolean z) {
                this.schemaVersion = i;
                this.signatureEnabled = z;
            }

            public /* synthetic */ DCSConfig(int i, boolean z, int i2, n nVar) {
                this((i2 & 1) != 0 ? 2 : i, (i2 & 2) != 0 ? false : z);
            }

            /* JADX INFO: renamed from: a, reason: from getter */
            public final int getSchemaVersion() {
                return this.schemaVersion;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof DCSConfig)) {
                    return false;
                }
                DCSConfig dCSConfig = (DCSConfig) other;
                return this.schemaVersion == dCSConfig.schemaVersion && this.signatureEnabled == dCSConfig.signatureEnabled;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v1, types: [int] */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v3 */
            public int hashCode() {
                int i = this.schemaVersion * 31;
                boolean z = this.signatureEnabled;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                return i + r1;
            }

            public String toString() {
                return "DCSConfig(schemaVersion=" + this.schemaVersion + ", signatureEnabled=" + this.signatureEnabled + ')';
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$a$b */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001cR\u001c\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001fR \u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u001b\u001a\u0004\b\u0016\u0010\u001c¨\u0006 "}, d2 = {"Lio/didomi/sdk/k$a$b;", "", "Lio/didomi/sdk/k$a$b$a;", "iab", "", "", "didomi", "Lio/didomi/sdk/models/GoogleConfig;", "googleConfig", "Lio/didomi/sdk/C;", "custom", "<init>", "(Lio/didomi/sdk/k$a$b$a;Ljava/util/Set;Lio/didomi/sdk/models/GoogleConfig;Ljava/util/Set;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$a$b$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/k$a$b$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Set;", "()Ljava/util/Set;", "c", "Lio/didomi/sdk/models/GoogleConfig;", "()Lio/didomi/sdk/models/GoogleConfig;", "android_release"}, mv = {1, 8, 0})
        public static final class b {

            @com.google.gson.r.c("iab")
            private final C0481a a;

            @com.google.gson.r.c("didomi")
            private final Set<String> b;

            @com.google.gson.r.c(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE)
            private final GoogleConfig c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            @com.google.gson.r.c("custom")
            private final Set<ConfigVendor> f8617d;

            /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b,\b\u0086\b\u0018\u0000 82\u00020\u0001:\u0002\u001c\u001fB\u008d\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u001a\u001a\u00020\u00022\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001c\u0010\u001eR\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010\u0018R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010'\u001a\u0004\b&\u0010)R\u001a\u0010\u000b\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010 \u001a\u0004\b#\u0010\"R \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u001a\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b/\u0010$\u001a\u0004\b+\u0010\u0018R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u00100\u001a\u0004\b/\u00101R\u001a\u0010\u0011\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010$\u001a\u0004\b*\u0010\u0018R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b%\u00100R\"\u00104\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010 \u001a\u0004\b\u001f\u0010\"\"\u0004\b\u001c\u00103R\u001d\u00107\u001a\u0004\u0018\u00010\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b2\u00101¨\u00069"}, d2 = {"Lio/didomi/sdk/k$a$b$a;", "", "", "all", "requireUpdatedGVL", "", "updateGVLTimeout", "", "", "include", "exclude", b4.r, "", "Lio/didomi/sdk/k$a$b$a$b;", "restrictions", "majorVersion", "minorVersion", "gvlSpecificationVersion", "internalCmpId", "<init>", "(Ljava/lang/Boolean;ZILjava/util/Set;Ljava/util/Set;ZLjava/util/List;ILjava/lang/Integer;ILjava/lang/Integer;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/Boolean;", "()Ljava/lang/Boolean;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "i", "()Z", "c", "I", CampaignEx.JSON_KEY_AD_K, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/Set;", InneractiveMediationDefs.GENDER_FEMALE, "()Ljava/util/Set;", "e", "g", "Ljava/util/List;", "j", "()Ljava/util/List;", "h", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", "l", "(Z)V", "canBeEnabled", InneractiveMediationDefs.GENDER_MALE, "Lkotlin/Lazy;", "validCmpId", b4.p, "android_release"}, mv = {1, 8, 0})
            public static final class C0481a {
                public static final C0482a n = new C0482a(null);

                @com.google.gson.r.c("all")
                private final Boolean a;

                @com.google.gson.r.c("requireUpdatedGVL")
                private final boolean b;

                @com.google.gson.r.c("updateGVLTimeout")
                private final int c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                @com.google.gson.r.c("include")
                private final Set<String> f8618d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                @com.google.gson.r.c("exclude")
                private final Set<String> f8619e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                @com.google.gson.r.c(b4.r)
                private final boolean f8620f;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                @com.google.gson.r.c("restrictions")
                private final List<C0483b> f8621g;

                @com.google.gson.r.c("version")
                private final int h;

                @com.google.gson.r.c("minorVersion")
                private final Integer i;

                @com.google.gson.r.c("gvlSpecificationVersion")
                private final int j;

                @com.google.gson.r.c("cmpId")
                private final Integer k;
                private boolean l;
                private final Lazy m;

                /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$a, reason: collision with other inner class name */
                @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lio/didomi/sdk/k$a$b$a$a;", "", "<init>", "()V", "", "maxCmpId", "I", "minCmpId", "android_release"}, mv = {1, 8, 0})
                public static final class C0482a {
                    private C0482a() {
                    }

                    public /* synthetic */ C0482a(n nVar) {
                        this();
                    }
                }

                /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b, reason: collision with other inner class name */
                @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\f\u000fJ\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\f\u0010\u0004R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\r\u001a\u0004\b\u000f\u0010\u0004R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u00118\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\r\u001a\u0004\b\u0012\u0010\u0004¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "id", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "purposeId", "Lio/didomi/sdk/k$a$b$a$b$a;", "c", "Lio/didomi/sdk/k$a$b$a$b$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/k$a$b$a$b$a;", Didomi.VIEW_VENDORS, "restrictionType", "android_release"}, mv = {1, 8, 0})
                public static final class C0483b {

                    @com.google.gson.r.c("id")
                    private final String a;

                    @com.google.gson.r.c("purposeId")
                    private final String b;

                    @com.google.gson.r.c(Didomi.VIEW_VENDORS)
                    private final C0484a c;

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    @com.google.gson.r.c("restrictionType")
                    private final String f8622d;

                    /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$a, reason: collision with other inner class name */
                    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B!\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0015R\u001b\u0010\u001a\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0013\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$a;", "", "", "typeAsString", "", "ids", "<init>", "(Ljava/lang/String;Ljava/util/Set;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/Set;", "()Ljava/util/Set;", "Lio/didomi/sdk/k$a$b$a$b$a$a;", "c", "Lkotlin/Lazy;", "()Lio/didomi/sdk/k$a$b$a$b$a$a;", "restrictionVendorsType", "android_release"}, mv = {1, 8, 0})
                    public static final class C0484a {

                        @com.google.gson.r.c("type")
                        private final String a;

                        @com.google.gson.r.c("ids")
                        private final Set<String> b;
                        private final Lazy c;

                        /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$a$a, reason: collision with other inner class name */
                        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$a$a;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "android_release"}, mv = {1, 8, 0})
                        public enum EnumC0485a {
                            ALL("all"),
                            LIST("list"),
                            UNKNOWN("unknown");


                            /* JADX INFO: renamed from: b, reason: from kotlin metadata */
                            public static final Companion INSTANCE = new Companion(null);

                            /* JADX INFO: renamed from: a, reason: from kotlin metadata */
                            private final String value;

                            /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$a$a$a, reason: collision with other inner class name and from kotlin metadata */
                            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$a$a$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/k$a$b$a$b$a$a;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k$a$b$a$b$a$a;", "android_release"}, mv = {1, 8, 0})
                            public static final class Companion {
                                private Companion() {
                                }

                                public /* synthetic */ Companion(n nVar) {
                                    this();
                                }

                                public final EnumC0485a a(String value) {
                                    Intrinsics.checkNotNullParameter(value, "value");
                                    Locale ENGLISH = Locale.ENGLISH;
                                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                                    String lowerCase = value.toLowerCase(ENGLISH);
                                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                    EnumC0485a enumC0485a = EnumC0485a.ALL;
                                    if (Intrinsics.areEqual(lowerCase, enumC0485a.getValue())) {
                                        return enumC0485a;
                                    }
                                    EnumC0485a enumC0485a2 = EnumC0485a.LIST;
                                    return Intrinsics.areEqual(lowerCase, enumC0485a2.getValue()) ? enumC0485a2 : EnumC0485a.UNKNOWN;
                                }
                            }

                            EnumC0485a(String str) {
                                this.value = str;
                            }

                            /* JADX INFO: renamed from: b, reason: from getter */
                            public final String getValue() {
                                return this.value;
                            }
                        }

                        /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$a$b, reason: collision with other inner class name */
                        @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$a$a;", "a", "()Lio/didomi/sdk/k$a$b$a$b$a$a;"}, mv = {1, 8, 0})
                        static final class C0487b extends Lambda implements Function0<EnumC0485a> {
                            C0487b() {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                            public final EnumC0485a invoke() {
                                return EnumC0485a.INSTANCE.a(C0484a.this.a);
                            }
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        public C0484a() {
                            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
                        }

                        public C0484a(String typeAsString, Set<String> ids) {
                            Intrinsics.checkNotNullParameter(typeAsString, "typeAsString");
                            Intrinsics.checkNotNullParameter(ids, "ids");
                            this.a = typeAsString;
                            this.b = ids;
                            this.c = LazyKt__LazyJVMKt.lazy(new C0487b());
                        }

                        public /* synthetic */ C0484a(String str, Set set, int i, n nVar) {
                            this((i & 1) != 0 ? EnumC0485a.UNKNOWN.getValue() : str, (i & 2) != 0 ? SetsKt__SetsKt.emptySet() : set);
                        }

                        public final Set<String> a() {
                            return this.b;
                        }

                        public final EnumC0485a b() {
                            return (EnumC0485a) this.c.getValue();
                        }

                        public boolean equals(Object obj) {
                            if (this == obj) {
                                return true;
                            }
                            if (!(obj instanceof C0484a)) {
                                return false;
                            }
                            C0484a c0484a = (C0484a) obj;
                            return Intrinsics.areEqual(this.a, c0484a.a) && Intrinsics.areEqual(this.b, c0484a.b);
                        }

                        public int hashCode() {
                            return (this.a.hashCode() * 31) + this.b.hashCode();
                        }

                        public String toString() {
                            return "RestrictionVendors(typeAsString=" + this.a + ", ids=" + this.b + ')';
                        }
                    }

                    /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$b, reason: collision with other inner class name */
                    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$b;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "android_release"}, mv = {1, 8, 0})
                    public enum EnumC0488b {
                        ALLOW("allow"),
                        DISALLOW("disallow"),
                        REQUIRE_CONSENT("req-consent"),
                        REQUIRE_LI("req-li"),
                        UNKNOWN("unknown");

                        public static final C0489a b = new C0489a(null);
                        private final String a;

                        /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$b$b$a, reason: collision with other inner class name */
                        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/k$a$b$a$b$b$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/k$a$b$a$b$b;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k$a$b$a$b$b;", "android_release"}, mv = {1, 8, 0})
                        public static final class C0489a {
                            private C0489a() {
                            }

                            public /* synthetic */ C0489a(n nVar) {
                                this();
                            }

                            public final EnumC0488b a(String value) {
                                Intrinsics.checkNotNullParameter(value, "value");
                                Locale ENGLISH = Locale.ENGLISH;
                                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                                String lowerCase = value.toLowerCase(ENGLISH);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                EnumC0488b enumC0488b = EnumC0488b.ALLOW;
                                if (Intrinsics.areEqual(lowerCase, enumC0488b.b())) {
                                    return enumC0488b;
                                }
                                EnumC0488b enumC0488b2 = EnumC0488b.DISALLOW;
                                if (Intrinsics.areEqual(lowerCase, enumC0488b2.b())) {
                                    return enumC0488b2;
                                }
                                EnumC0488b enumC0488b3 = EnumC0488b.REQUIRE_CONSENT;
                                if (Intrinsics.areEqual(lowerCase, enumC0488b3.b())) {
                                    return enumC0488b3;
                                }
                                EnumC0488b enumC0488b4 = EnumC0488b.REQUIRE_LI;
                                return Intrinsics.areEqual(lowerCase, enumC0488b4.b()) ? enumC0488b4 : EnumC0488b.UNKNOWN;
                            }
                        }

                        EnumC0488b(String str) {
                            this.a = str;
                        }

                        public final String b() {
                            return this.a;
                        }
                    }

                    public final String a() {
                        return this.a;
                    }

                    public final String b() {
                        return this.b;
                    }

                    public final String c() {
                        return this.f8622d;
                    }

                    public final C0484a d() {
                        return this.c;
                    }

                    public boolean equals(Object obj) {
                        if (this == obj) {
                            return true;
                        }
                        if (!(obj instanceof C0483b)) {
                            return false;
                        }
                        C0483b c0483b = (C0483b) obj;
                        return Intrinsics.areEqual(this.a, c0483b.a) && Intrinsics.areEqual(this.b, c0483b.b) && Intrinsics.areEqual(this.c, c0483b.c) && Intrinsics.areEqual(this.f8622d, c0483b.f8622d);
                    }

                    public int hashCode() {
                        String str = this.a;
                        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                        String str2 = this.b;
                        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                        C0484a c0484a = this.c;
                        int iHashCode3 = (iHashCode2 + (c0484a == null ? 0 : c0484a.hashCode())) * 31;
                        String str3 = this.f8622d;
                        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
                    }

                    public String toString() {
                        return "PublisherRestriction(id=" + this.a + ", purposeId=" + this.b + ", vendors=" + this.c + ", restrictionType=" + this.f8622d + ')';
                    }
                }

                /* JADX INFO: renamed from: io.didomi.sdk.k$a$b$a$c */
                @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
                static final class c extends Lambda implements Function0<Integer> {
                    c() {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public final Integer invoke() {
                        Integer num = C0481a.this.k;
                        if (num == null) {
                            return null;
                        }
                        int iIntValue = num.intValue();
                        if (2 > iIntValue || iIntValue >= 4096) {
                            num = null;
                        }
                        if (num == null) {
                            return null;
                        }
                        Log.i$default("Using CMP Id " + num.intValue(), null, 2, null);
                        return num;
                    }
                }

                public C0481a() {
                    this(null, false, 0, null, null, false, null, 0, null, 0, null, 2047, null);
                }

                public C0481a(Boolean bool, boolean z, int i, Set<String> include, Set<String> exclude, boolean z2, List<C0483b> restrictions, int i2, Integer num, int i3, Integer num2) {
                    Intrinsics.checkNotNullParameter(include, "include");
                    Intrinsics.checkNotNullParameter(exclude, "exclude");
                    Intrinsics.checkNotNullParameter(restrictions, "restrictions");
                    this.a = bool;
                    this.b = z;
                    this.c = i;
                    this.f8618d = include;
                    this.f8619e = exclude;
                    this.f8620f = z2;
                    this.f8621g = restrictions;
                    this.h = i2;
                    this.i = num;
                    this.j = i3;
                    this.k = num2;
                    this.l = true;
                    this.m = LazyKt__LazyJVMKt.lazy(new c());
                }

                public /* synthetic */ C0481a(Boolean bool, boolean z, int i, Set set, Set set2, boolean z2, List list, int i2, Integer num, int i3, Integer num2, int i4, n nVar) {
                    this((i4 & 1) != 0 ? null : bool, (i4 & 2) != 0 ? true : z, (i4 & 4) != 0 ? 0 : i, (i4 & 8) != 0 ? SetsKt__SetsKt.emptySet() : set, (i4 & 16) != 0 ? SetsKt__SetsKt.emptySet() : set2, (i4 & 32) == 0 ? z2 : true, (i4 & 64) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i4 & 128) != 0 ? 2 : i2, (i4 & 256) != 0 ? null : num, (i4 & 512) != 0 ? 3 : i3, (i4 & 1024) == 0 ? num2 : null);
                }

                public final Boolean a() {
                    return this.a;
                }

                public final void a(boolean z) {
                    this.l = z;
                }

                public final boolean b() {
                    return this.l;
                }

                public final boolean c() {
                    return this.f8620f;
                }

                public final Set<String> d() {
                    return this.f8619e;
                }

                public final int e() {
                    return this.j;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof C0481a)) {
                        return false;
                    }
                    C0481a c0481a = (C0481a) obj;
                    return Intrinsics.areEqual(this.a, c0481a.a) && this.b == c0481a.b && this.c == c0481a.c && Intrinsics.areEqual(this.f8618d, c0481a.f8618d) && Intrinsics.areEqual(this.f8619e, c0481a.f8619e) && this.f8620f == c0481a.f8620f && Intrinsics.areEqual(this.f8621g, c0481a.f8621g) && this.h == c0481a.h && Intrinsics.areEqual(this.i, c0481a.i) && this.j == c0481a.j && Intrinsics.areEqual(this.k, c0481a.k);
                }

                public final Set<String> f() {
                    return this.f8618d;
                }

                public final int g() {
                    return this.h;
                }

                public final Integer h() {
                    return this.i;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v1, types: [int] */
                /* JADX WARN: Type inference failed for: r2v17 */
                /* JADX WARN: Type inference failed for: r2v18 */
                /* JADX WARN: Type inference failed for: r3v0 */
                /* JADX WARN: Type inference failed for: r3v1, types: [int] */
                /* JADX WARN: Type inference failed for: r3v2 */
                public int hashCode() {
                    Boolean bool = this.a;
                    int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
                    boolean z = this.b;
                    ?? r2 = z;
                    if (z) {
                        r2 = 1;
                    }
                    int iHashCode2 = (((((((iHashCode + r2) * 31) + this.c) * 31) + this.f8618d.hashCode()) * 31) + this.f8619e.hashCode()) * 31;
                    boolean z2 = this.f8620f;
                    int iHashCode3 = (((((iHashCode2 + (z2 ? 1 : z2)) * 31) + this.f8621g.hashCode()) * 31) + this.h) * 31;
                    Integer num = this.i;
                    int iHashCode4 = (((iHashCode3 + (num == null ? 0 : num.hashCode())) * 31) + this.j) * 31;
                    Integer num2 = this.k;
                    return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
                }

                public final boolean i() {
                    return this.b;
                }

                public final List<C0483b> j() {
                    return this.f8621g;
                }

                public final int k() {
                    return this.c;
                }

                public final Integer l() {
                    return (Integer) this.m.getValue();
                }

                public String toString() {
                    return "IABVendors(all=" + this.a + ", requireUpdatedGVL=" + this.b + ", updateGVLTimeout=" + this.c + ", include=" + this.f8618d + ", exclude=" + this.f8619e + ", enabled=" + this.f8620f + ", restrictions=" + this.f8621g + ", majorVersion=" + this.h + ", minorVersion=" + this.i + ", gvlSpecificationVersion=" + this.j + ", internalCmpId=" + this.k + ')';
                }
            }

            public b() {
                this(null, null, null, null, 15, null);
            }

            public b(C0481a iab, Set<String> didomi, GoogleConfig googleConfig, Set<ConfigVendor> custom) {
                Intrinsics.checkNotNullParameter(iab, "iab");
                Intrinsics.checkNotNullParameter(didomi, "didomi");
                Intrinsics.checkNotNullParameter(custom, "custom");
                this.a = iab;
                this.b = didomi;
                this.c = googleConfig;
                this.f8617d = custom;
            }

            public /* synthetic */ b(C0481a c0481a, Set set, GoogleConfig googleConfig, Set set2, int i, n nVar) {
                this((i & 1) != 0 ? new C0481a(null, false, 0, null, null, false, null, 0, null, 0, null, 2047, null) : c0481a, (i & 2) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 4) != 0 ? null : googleConfig, (i & 8) != 0 ? SetsKt__SetsKt.emptySet() : set2);
            }

            public final Set<ConfigVendor> a() {
                return this.f8617d;
            }

            public final Set<String> b() {
                return this.b;
            }

            public final GoogleConfig c() {
                return this.c;
            }

            public final C0481a d() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c) && Intrinsics.areEqual(this.f8617d, bVar.f8617d);
            }

            public int hashCode() {
                int iHashCode = ((this.a.hashCode() * 31) + this.b.hashCode()) * 31;
                GoogleConfig googleConfig = this.c;
                return ((iHashCode + (googleConfig == null ? 0 : googleConfig.hashCode())) * 31) + this.f8617d.hashCode();
            }

            public String toString() {
                return "Vendors(iab=" + this.a + ", didomi=" + this.b + ", googleConfig=" + this.c + ", custom=" + this.f8617d + ')';
            }
        }

        public a() {
            this(null, null, null, null, null, null, null, null, false, null, null, null, false, 8191, null);
        }

        public a(String name, String privacyPolicyURL, b vendors, List<CustomPurpose> customPurposes, List<String> essentialPurposes, Object consentDuration, Object deniedConsentDuration, String logoUrl, boolean z, String country, String str, DCSConfig dCSConfig, boolean z2) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(privacyPolicyURL, "privacyPolicyURL");
            Intrinsics.checkNotNullParameter(vendors, "vendors");
            Intrinsics.checkNotNullParameter(customPurposes, "customPurposes");
            Intrinsics.checkNotNullParameter(essentialPurposes, "essentialPurposes");
            Intrinsics.checkNotNullParameter(consentDuration, "consentDuration");
            Intrinsics.checkNotNullParameter(deniedConsentDuration, "deniedConsentDuration");
            Intrinsics.checkNotNullParameter(logoUrl, "logoUrl");
            Intrinsics.checkNotNullParameter(country, "country");
            this.a = name;
            this.b = privacyPolicyURL;
            this.c = vendors;
            this.f8613d = customPurposes;
            this.f8614e = essentialPurposes;
            this.f8615f = consentDuration;
            this.f8616g = deniedConsentDuration;
            this.h = logoUrl;
            this.i = z;
            this.j = country;
            this.k = str;
            this.l = dCSConfig;
            this.m = z2;
        }

        public /* synthetic */ a(String str, String str2, b bVar, List list, List list2, Object obj, Object obj2, String str3, boolean z, String str4, String str5, DCSConfig dCSConfig, boolean z2, int i, n nVar) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? new b(null, null, null, null, 15, null) : bVar, (i & 8) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 32) != 0 ? 31622400L : obj, (i & 64) != 0 ? -1L : obj2, (i & 128) == 0 ? str3 : "", (i & 256) != 0 ? false : z, (i & 512) != 0 ? "AA" : str4, (i & 1024) != 0 ? null : str5, (i & 2048) == 0 ? dCSConfig : null, (i & 4096) == 0 ? z2 : false);
        }

        public final Object a() {
            return this.f8615f;
        }

        public final String b() {
            return this.j;
        }

        public final List<CustomPurpose> c() {
            return this.f8613d;
        }

        public final DCSConfig d() {
            return this.l;
        }

        public final Object e() {
            return this.f8616g;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.f8613d, aVar.f8613d) && Intrinsics.areEqual(this.f8614e, aVar.f8614e) && Intrinsics.areEqual(this.f8615f, aVar.f8615f) && Intrinsics.areEqual(this.f8616g, aVar.f8616g) && Intrinsics.areEqual(this.h, aVar.h) && this.i == aVar.i && Intrinsics.areEqual(this.j, aVar.j) && Intrinsics.areEqual(this.k, aVar.k) && Intrinsics.areEqual(this.l, aVar.l) && this.m == aVar.m;
        }

        public final String f() {
            return this.k;
        }

        public final List<String> g() {
            return this.f8614e;
        }

        public final String h() {
            return this.h;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v15, types: [int] */
        /* JADX WARN: Type inference failed for: r1v24 */
        /* JADX WARN: Type inference failed for: r1v25 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iHashCode = ((((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.f8613d.hashCode()) * 31) + this.f8614e.hashCode()) * 31) + this.f8615f.hashCode()) * 31) + this.f8616g.hashCode()) * 31) + this.h.hashCode()) * 31;
            boolean z = this.i;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int iHashCode2 = (((iHashCode + r1) * 31) + this.j.hashCode()) * 31;
            String str = this.k;
            int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
            DCSConfig dCSConfig = this.l;
            int iHashCode4 = (iHashCode3 + (dCSConfig != null ? dCSConfig.hashCode() : 0)) * 31;
            boolean z2 = this.m;
            return iHashCode4 + (z2 ? 1 : z2);
        }

        public final String i() {
            return this.a;
        }

        public final boolean j() {
            return this.m;
        }

        public final String k() {
            return this.b;
        }

        public final boolean l() {
            return this.i;
        }

        public final b m() {
            return this.c;
        }

        public String toString() {
            return "App(name=" + this.a + ", privacyPolicyURL=" + this.b + ", vendors=" + this.c + ", customPurposes=" + this.f8613d + ", essentialPurposes=" + this.f8614e + ", consentDuration=" + this.f8615f + ", deniedConsentDuration=" + this.f8616g + ", logoUrl=" + this.h + ", shouldHideDidomiLogo=" + this.i + ", country=" + this.j + ", deploymentId=" + this.k + ", dcsConfig=" + this.l + ", ouidAsPrimaryIfPresent=" + this.m + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$b */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0000X\u0080T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0000X\u0080T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0006¨\u0006\f"}, d2 = {"Lio/didomi/sdk/k$b;", "", "<init>", "()V", "", "DEFAULT_COMPANY_COUNTRY_CODE", "Ljava/lang/String;", "", "DEFAULT_CONSENT_DURATION_IN_SECONDS", "J", "DEFAULT_DENY_CONSENT_DURATION_IN_SECONDS", "DEFAULT_LANGUAGE_CODE", "android_release"}, mv = {1, 8, 0})
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$c */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000e\u001a\u00020\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0011\u001a\u0004\b\u0013\u0010\u0012¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/k$c;", "", "", "enableDCS", "testUCPA", "<init>", "(ZZ)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
    public static final class c {

        @com.google.gson.r.c("enableDCS")
        private final boolean a;

        @com.google.gson.r.c("testUCPA")
        private final boolean b;

        /* JADX WARN: Illegal instructions before constructor call */
        public c() {
            boolean z = false;
            this(z, z, 3, null);
        }

        public c(boolean z, boolean z2) {
            this.a = z;
            this.b = z2;
        }

        public /* synthetic */ c(boolean z, boolean z2, int i, n nVar) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2);
        }

        public final boolean a() {
            return this.a;
        }

        public final boolean b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.a == cVar.a && this.b == cVar.b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        public int hashCode() {
            boolean z = this.a;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int i = r0 * 31;
            boolean z2 = this.b;
            return i + (z2 ? 1 : z2);
        }

        public String toString() {
            return "FeatureFlags(enableDCS=" + this.a + ", testUCPA=" + this.b + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$d */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/k$d;", "", "Lio/didomi/sdk/k$d$a;", Didomi.VIEW_VENDORS, "<init>", "(Lio/didomi/sdk/k$d$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$d$a;", "()Lio/didomi/sdk/k$d$a;", "android_release"}, mv = {1, 8, 0})
    public static final class d {

        @com.google.gson.r.c(Didomi.VIEW_VENDORS)
        private final a a;

        /* JADX INFO: renamed from: io.didomi.sdk.k$d$a */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/k$d$a;", "", "Lio/didomi/sdk/k$d$a$a;", "gcm", "<init>", "(Lio/didomi/sdk/k$d$a$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$d$a$a;", "()Lio/didomi/sdk/k$d$a$a;", "android_release"}, mv = {1, 8, 0})
        public static final class a {

            @com.google.gson.r.c("gcm")
            private final C0490a a;

            /* JADX INFO: renamed from: io.didomi.sdk.k$d$a$a, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\r\u001a\u00020\u00022\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u000f\u0010\u0011¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/k$d$a$a;", "", "", "enableTcfAdvertiserConsentMode", "<init>", "(Z)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "()Z", "android_release"}, mv = {1, 8, 0})
            public static final class C0490a {

                @com.google.gson.r.c("enableTCFAdvertiserConsentMode")
                private final boolean a;

                public C0490a() {
                    this(false, 1, null);
                }

                public C0490a(boolean z) {
                    this.a = z;
                }

                public /* synthetic */ C0490a(boolean z, int i, n nVar) {
                    this((i & 1) != 0 ? false : z);
                }

                public final boolean a() {
                    return this.a;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0490a) && this.a == ((C0490a) obj).a;
                }

                public int hashCode() {
                    boolean z = this.a;
                    if (z) {
                        return 1;
                    }
                    return z ? 1 : 0;
                }

                public String toString() {
                    return "Gcm(enableTcfAdvertiserConsentMode=" + this.a + ')';
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public a(C0490a gcm) {
                Intrinsics.checkNotNullParameter(gcm, "gcm");
                this.a = gcm;
            }

            public /* synthetic */ a(C0490a c0490a, int i, n nVar) {
                this((i & 1) != 0 ? new C0490a(false, 1, null) : c0490a);
            }

            public final C0490a a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Vendors(gcm=" + this.a + ')';
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public d() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public d(a vendors) {
            Intrinsics.checkNotNullParameter(vendors, "vendors");
            this.a = vendors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ d(a aVar, int i, n nVar) {
            this((i & 1) != 0 ? new a(null, 1, 0 == true ? 1 : 0) : aVar);
        }

        public final a a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.areEqual(this.a, ((d) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Integrations(vendors=" + this.a + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$e */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0015\u001a\u0004\b\u0011\u0010\t¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/k$e;", "", "", "", b4.r, "defaultLanguage", "<init>", "(Ljava/util/Set;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/util/Set;", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class e {

        @com.google.gson.r.c(b4.r)
        private final Set<String> a;

        @com.google.gson.r.c("default")
        private final String b;

        /* JADX WARN: Multi-variable type inference failed */
        public e() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public e(Set<String> enabled, String defaultLanguage) {
            Intrinsics.checkNotNullParameter(enabled, "enabled");
            Intrinsics.checkNotNullParameter(defaultLanguage, "defaultLanguage");
            this.a = enabled;
            this.b = defaultLanguage;
        }

        public /* synthetic */ e(Set set, String str, int i, n nVar) {
            this((i & 1) != 0 ? SetsKt__SetsKt.emptySet() : set, (i & 2) != 0 ? "en" : str);
        }

        public final String a() {
            return this.b;
        }

        public final Set<String> b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return Intrinsics.areEqual(this.a, eVar.a) && Intrinsics.areEqual(this.b, eVar.b);
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + this.b.hashCode();
        }

        public String toString() {
            return "Languages(enabled=" + this.a + ", defaultLanguage=" + this.b + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$f */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\"\b\u0086\b\u0018\u0000 .2\u00020\u0001:\u0004\u001a\u001c\"%Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0018\u001a\u00020\u00042\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0018\u0010\u0019R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u0016\"\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001f\u001a\u0004\b \u0010!R\u001a\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b\u001a\u0010$R\u001a\u0010\t\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010\u0014R\u001c\u0010\n\u001a\u0004\u0018\u00010\b8\u0000X\u0081\u0004¢\u0006\f\n\u0004\b(\u0010&\u001a\u0004\b)\u0010\u0014R\u001a\u0010\u000b\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\f\n\u0004\b*\u0010\u001f\u001a\u0004\b(\u0010!R\u001a\u0010\f\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\f\n\u0004\b+\u0010\u001f\u001a\u0004\b%\u0010!R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0000X\u0081\u0004¢\u0006\f\n\u0004\b \u0010,\u001a\u0004\b*\u0010-R\u001a\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010\u001f\u001a\u0004\b\"\u0010!R\u001a\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b)\u0010\u001f\u001a\u0004\b+\u0010!¨\u0006/"}, d2 = {"Lio/didomi/sdk/k$f;", "", "", "daysBeforeShowingAgain", "", b4.r, "Lio/didomi/sdk/k$f$b;", AppLovinEventTypes.USER_VIEWED_CONTENT, "", "positionAsString", "type", "denyAsPrimary", "denyAsLink", "Lio/didomi/sdk/k$f$c;", "denyOptions", "denyAppliesToLI", "enableBulkActionOnPurposes", "<init>", "(IZLio/didomi/sdk/k$f$b;Ljava/lang/String;Ljava/lang/String;ZZLio/didomi/sdk/k$f$c;ZZ)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "setDaysBeforeShowingAgain", "(I)V", "Z", "h", "()Z", "c", "Lio/didomi/sdk/k$f$b;", "()Lio/didomi/sdk/k$f$b;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "i", "e", "j", InneractiveMediationDefs.GENDER_FEMALE, "g", "Lio/didomi/sdk/k$f$c;", "()Lio/didomi/sdk/k$f$c;", CampaignEx.JSON_KEY_AD_K, "android_release"}, mv = {1, 8, 0})
    public static final class f {
        public static final a k = new a(null);

        @com.google.gson.r.c("daysBeforeShowingAgain")
        private int a;

        @com.google.gson.r.c(com.json.mediationsdk.metadata.a.i)
        private final boolean b;

        @com.google.gson.r.c(AppLovinEventTypes.USER_VIEWED_CONTENT)
        private final b c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @com.google.gson.r.c(o2.h.L)
        private final String f8630d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @com.google.gson.r.c("type")
        private final String f8631e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @com.google.gson.r.c("denyAsPrimary")
        private final boolean f8632f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @com.google.gson.r.c("denyAsLink")
        private final boolean f8633g;

        @com.google.gson.r.c("denyOptions")
        private final c h;

        @com.google.gson.r.c("denyAppliesToLI")
        private final boolean i;

        @com.google.gson.r.c("enableBulkActionOnPurposes")
        private final boolean j;

        /* JADX INFO: renamed from: io.didomi.sdk.k$f$a */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/k$f$a;", "", "<init>", "()V", "", "TYPE_OPTIN", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(n nVar) {
                this();
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$f$b */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B·\u0001\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u0018\u001a\u0004\b\u0017\u0010\u001aR&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001d\u0010\u001aR&\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u0018\u001a\u0004\b\u001e\u0010\u001aR&\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR&\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0018\u001a\u0004\b \u0010\u001aR&\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a¨\u0006\""}, d2 = {"Lio/didomi/sdk/k$f$b;", "", "", "", "title", "noticeText", "agreeButtonLabel", "learnMoreButtonLabel", "manageSpiChoicesButtonLabel", "disagreeButtonLabel", "partnersButtonLabel", "privacyPolicyLabel", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Map;", "g", "()Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "e", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "getPartnersButtonLabel", "h", "android_release"}, mv = {1, 8, 0})
        public static final class b {

            @com.google.gson.r.c("title")
            private final Map<String, String> a;

            @com.google.gson.r.c("notice")
            private final Map<String, String> b;

            @com.google.gson.r.c("dismiss")
            private final Map<String, String> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            @com.google.gson.r.c("learnMore")
            private final Map<String, String> f8634d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            @com.google.gson.r.c("manageSpiChoices")
            private final Map<String, String> f8635e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            @com.google.gson.r.c("deny")
            private final Map<String, String> f8636f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            @com.google.gson.r.c("viewOurPartners")
            private final Map<String, String> f8637g;

            @com.google.gson.r.c("privacyPolicy")
            private final Map<String, String> h;

            public b() {
                this(null, null, null, null, null, null, null, null, 255, null);
            }

            public b(Map<String, String> title, Map<String, String> noticeText, Map<String, String> agreeButtonLabel, Map<String, String> learnMoreButtonLabel, Map<String, String> manageSpiChoicesButtonLabel, Map<String, String> disagreeButtonLabel, Map<String, String> partnersButtonLabel, Map<String, String> privacyPolicyLabel) {
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(noticeText, "noticeText");
                Intrinsics.checkNotNullParameter(agreeButtonLabel, "agreeButtonLabel");
                Intrinsics.checkNotNullParameter(learnMoreButtonLabel, "learnMoreButtonLabel");
                Intrinsics.checkNotNullParameter(manageSpiChoicesButtonLabel, "manageSpiChoicesButtonLabel");
                Intrinsics.checkNotNullParameter(disagreeButtonLabel, "disagreeButtonLabel");
                Intrinsics.checkNotNullParameter(partnersButtonLabel, "partnersButtonLabel");
                Intrinsics.checkNotNullParameter(privacyPolicyLabel, "privacyPolicyLabel");
                this.a = title;
                this.b = noticeText;
                this.c = agreeButtonLabel;
                this.f8634d = learnMoreButtonLabel;
                this.f8635e = manageSpiChoicesButtonLabel;
                this.f8636f = disagreeButtonLabel;
                this.f8637g = partnersButtonLabel;
                this.h = privacyPolicyLabel;
            }

            public /* synthetic */ b(Map map, Map map2, Map map3, Map map4, Map map5, Map map6, Map map7, Map map8, int i, n nVar) {
                this((i & 1) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map2, (i & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map3, (i & 8) != 0 ? MapsKt__MapsKt.emptyMap() : map4, (i & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map5, (i & 32) != 0 ? MapsKt__MapsKt.emptyMap() : map6, (i & 64) != 0 ? MapsKt__MapsKt.emptyMap() : map7, (i & 128) != 0 ? MapsKt__MapsKt.emptyMap() : map8);
            }

            public final Map<String, String> a() {
                return this.c;
            }

            public final Map<String, String> b() {
                return this.f8636f;
            }

            public final Map<String, String> c() {
                return this.f8634d;
            }

            public final Map<String, String> d() {
                return this.f8635e;
            }

            public final Map<String, String> e() {
                return this.b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b) && Intrinsics.areEqual(this.c, bVar.c) && Intrinsics.areEqual(this.f8634d, bVar.f8634d) && Intrinsics.areEqual(this.f8635e, bVar.f8635e) && Intrinsics.areEqual(this.f8636f, bVar.f8636f) && Intrinsics.areEqual(this.f8637g, bVar.f8637g) && Intrinsics.areEqual(this.h, bVar.h);
            }

            public final Map<String, String> f() {
                return this.h;
            }

            public final Map<String, String> g() {
                return this.a;
            }

            public int hashCode() {
                return (((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.f8634d.hashCode()) * 31) + this.f8635e.hashCode()) * 31) + this.f8636f.hashCode()) * 31) + this.f8637g.hashCode()) * 31) + this.h.hashCode();
            }

            public String toString() {
                return "Content(title=" + this.a + ", noticeText=" + this.b + ", agreeButtonLabel=" + this.c + ", learnMoreButtonLabel=" + this.f8634d + ", manageSpiChoicesButtonLabel=" + this.f8635e + ", disagreeButtonLabel=" + this.f8636f + ", partnersButtonLabel=" + this.f8637g + ", privacyPolicyLabel=" + this.h + ')';
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$f$c */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\nR\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0013\u0010\u0015R\u001a\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0016\u0010\u0015¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/k$f$c;", "", "", "buttonAsString", "", "cross", "link", "<init>", "(Ljava/lang/String;ZZ)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "()Z", "c", "android_release"}, mv = {1, 8, 0})
        public static final class c {

            @com.google.gson.r.c("button")
            private final String a;

            @com.google.gson.r.c("cross")
            private final boolean b;

            @com.google.gson.r.c("link")
            private final boolean c;

            public c() {
                this(null, false, false, 7, null);
            }

            public c(String buttonAsString, boolean z, boolean z2) {
                Intrinsics.checkNotNullParameter(buttonAsString, "buttonAsString");
                this.a = buttonAsString;
                this.b = z;
                this.c = z2;
            }

            public /* synthetic */ c(String str, boolean z, boolean z2, int i, n nVar) {
                this((i & 1) != 0 ? i.a.NONE.b() : str, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
            }

            public final String a() {
                return this.a;
            }

            public final boolean b() {
                return this.b;
            }

            public final boolean c() {
                return this.c;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return Intrinsics.areEqual(this.a, cVar.a) && this.b == cVar.b && this.c == cVar.c;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v1, types: [int] */
            /* JADX WARN: Type inference failed for: r1v3 */
            /* JADX WARN: Type inference failed for: r1v4 */
            /* JADX WARN: Type inference failed for: r2v0 */
            /* JADX WARN: Type inference failed for: r2v1, types: [int] */
            /* JADX WARN: Type inference failed for: r2v2 */
            public int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                boolean z = this.b;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                int i = (iHashCode + r1) * 31;
                boolean z2 = this.c;
                return i + (z2 ? 1 : z2);
            }

            public String toString() {
                return "DenyOptions(buttonAsString=" + this.a + ", cross=" + this.b + ", link=" + this.c + ')';
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$f$d */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lio/didomi/sdk/k$f$d;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "android_release"}, mv = {1, 8, 0})
        public enum d {
            BOTTOM("bottom"),
            POPUP("popup");

            public static final a b = new a(null);
            private final String a;

            /* JADX INFO: renamed from: io.didomi.sdk.k$f$d$a */
            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/k$f$d$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/k$f$d;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k$f$d;", "android_release"}, mv = {1, 8, 0})
            public static final class a {
                private a() {
                }

                public /* synthetic */ a(n nVar) {
                    this();
                }

                public final d a(String value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Locale ENGLISH = Locale.ENGLISH;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    String lowerCase = value.toLowerCase(ENGLISH);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    d dVar = d.POPUP;
                    return Intrinsics.areEqual(lowerCase, dVar.b()) ? dVar : d.BOTTOM;
                }
            }

            d(String str) {
                this.a = str;
            }

            public final String b() {
                return this.a;
            }
        }

        public f() {
            this(0, false, null, null, null, false, false, null, false, false, 1023, null);
        }

        public f(int i, boolean z, b content, String positionAsString, String str, boolean z2, boolean z3, c cVar, boolean z4, boolean z5) {
            Intrinsics.checkNotNullParameter(content, "content");
            Intrinsics.checkNotNullParameter(positionAsString, "positionAsString");
            this.a = i;
            this.b = z;
            this.c = content;
            this.f8630d = positionAsString;
            this.f8631e = str;
            this.f8632f = z2;
            this.f8633g = z3;
            this.h = cVar;
            this.i = z4;
            this.j = z5;
        }

        public /* synthetic */ f(int i, boolean z, b bVar, String str, String str2, boolean z2, boolean z3, c cVar, boolean z4, boolean z5, int i2, n nVar) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? true : z, (i2 & 4) != 0 ? new b(null, null, null, null, null, null, null, null, 255, null) : bVar, (i2 & 8) != 0 ? d.POPUP.b() : str, (i2 & 16) != 0 ? null : str2, (i2 & 32) != 0 ? false : z2, (i2 & 64) != 0 ? false : z3, (i2 & 128) == 0 ? cVar : null, (i2 & 256) == 0 ? z4 : false, (i2 & 512) == 0 ? z5 : true);
        }

        public final b a() {
            return this.c;
        }

        public final int b() {
            return this.a;
        }

        public final boolean c() {
            return this.i;
        }

        public final boolean d() {
            return this.f8633g;
        }

        public final boolean e() {
            return this.f8632f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.a == fVar.a && this.b == fVar.b && Intrinsics.areEqual(this.c, fVar.c) && Intrinsics.areEqual(this.f8630d, fVar.f8630d) && Intrinsics.areEqual(this.f8631e, fVar.f8631e) && this.f8632f == fVar.f8632f && this.f8633g == fVar.f8633g && Intrinsics.areEqual(this.h, fVar.h) && this.i == fVar.i && this.j == fVar.j;
        }

        public final c f() {
            return this.h;
        }

        public final boolean g() {
            return this.j;
        }

        public final boolean h() {
            return this.b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v10, types: [int] */
        /* JADX WARN: Type inference failed for: r1v12, types: [int] */
        /* JADX WARN: Type inference failed for: r1v15, types: [int] */
        /* JADX WARN: Type inference failed for: r1v17 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v21 */
        /* JADX WARN: Type inference failed for: r1v22 */
        /* JADX WARN: Type inference failed for: r1v23 */
        /* JADX WARN: Type inference failed for: r1v24 */
        /* JADX WARN: Type inference failed for: r1v25 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int i = this.a * 31;
            boolean z = this.b;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int iHashCode = (((((i + r1) * 31) + this.c.hashCode()) * 31) + this.f8630d.hashCode()) * 31;
            String str = this.f8631e;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            boolean z2 = this.f8632f;
            ?? r12 = z2;
            if (z2) {
                r12 = 1;
            }
            int i2 = (iHashCode2 + r12) * 31;
            boolean z3 = this.f8633g;
            ?? r13 = z3;
            if (z3) {
                r13 = 1;
            }
            int i3 = (i2 + r13) * 31;
            c cVar = this.h;
            int iHashCode3 = (i3 + (cVar != null ? cVar.hashCode() : 0)) * 31;
            boolean z4 = this.i;
            ?? r14 = z4;
            if (z4) {
                r14 = 1;
            }
            int i4 = (iHashCode3 + r14) * 31;
            boolean z5 = this.j;
            return i4 + (z5 ? 1 : z5);
        }

        public final String i() {
            return this.f8630d;
        }

        public final String j() {
            return this.f8631e;
        }

        public String toString() {
            return "Notice(daysBeforeShowingAgain=" + this.a + ", enabled=" + this.b + ", content=" + this.c + ", positionAsString=" + this.f8630d + ", type=" + this.f8631e + ", denyAsPrimary=" + this.f8632f + ", denyAsLink=" + this.f8633g + ", denyOptions=" + this.h + ", denyAppliesToLI=" + this.i + ", enableBulkActionOnPurposes=" + this.j + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$g */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019BU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0019\u0010\u001bR\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001c\u0010\u001e\"\u0004\b\u001f\u0010 R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b!\u0010\u001a\u001a\u0004\b\"\u0010\u001b\"\u0004\b#\u0010$R\"\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u001a\u001a\u0004\b!\u0010\u001b\"\u0004\b%\u0010$R\u001a\u0010\b\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010\u001a\u001a\u0004\b'\u0010\u001bR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b&\u0010*R\u001c\u0010\r\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010+\u001a\u0004\b(\u0010,¨\u0006-"}, d2 = {"Lio/didomi/sdk/k$g;", "", "", "canCloseWhenConsentIsMissing", "Lio/didomi/sdk/k$g$a;", AppLovinEventTypes.USER_VIEWED_CONTENT, "disableButtonsUntilScroll", "denyAppliesToLI", "showWhenConsentIsMissing", "", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "purposeCategories", "Lio/didomi/sdk/S5;", "sensitivePersonalInformation", "<init>", "(ZLio/didomi/sdk/k$g$a;ZZZLjava/util/List;Lio/didomi/sdk/S5;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/k$g$a;", "()Lio/didomi/sdk/k$g$a;", "setContent", "(Lio/didomi/sdk/k$g$a;)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "setDisableButtonsUntilScroll", "(Z)V", "setDenyAppliesToLI", "e", "g", InneractiveMediationDefs.GENDER_FEMALE, "Ljava/util/List;", "()Ljava/util/List;", "Lio/didomi/sdk/S5;", "()Lio/didomi/sdk/S5;", "android_release"}, mv = {1, 8, 0})
    public static final class g {

        @com.google.gson.r.c("canCloseWhenConsentIsMissing")
        private final boolean a;

        @com.google.gson.r.c(AppLovinEventTypes.USER_VIEWED_CONTENT)
        private a b;

        @com.google.gson.r.c("disableButtonsUntilScroll")
        private boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @com.google.gson.r.c("denyAppliesToLI")
        private boolean f8640d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @com.google.gson.r.c("showWhenConsentIsMissing")
        private final boolean f8641e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @com.google.gson.r.c("categories")
        private final List<PurposeCategory> f8642f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @com.google.gson.r.c("sensitivePersonalInformation")
        private final SensitivePersonalInformation f8643g;

        /* JADX INFO: renamed from: io.didomi.sdk.k$g$a */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B§\u0002\u0012\u0016\b\u0002\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR(\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u001dR(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001c\u001a\u0004\b\u001f\u0010\u001dR(\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\u001dR(\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b\"\u0010\u001dR(\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010\u001c\u001a\u0004\b$\u0010\u001dR(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u001dR(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b'\u0010\u001dR(\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010\u001c\u001a\u0004\b(\u0010\u001dR(\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010\u001c\u001a\u0004\b%\u0010\u001dR(\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010\u001c\u001a\u0004\b\u001e\u0010\u001dR(\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010\u001c\u001a\u0004\b#\u0010\u001dR(\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010\u001c\u001a\u0004\b \u0010\u001d¨\u0006)"}, d2 = {"Lio/didomi/sdk/k$g$a;", "", "", "", "agreeToAll", "disagreeToAll", "save", "saveAndClose", "text", "title", "textVendors", "subTextVendors", "purposesTitleLabel", "bulkActionLabel", "ourPartnersLabel", "bulkActionOnVendorsLabel", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Map;", "()Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", "g", "h", "e", "j", InneractiveMediationDefs.GENDER_FEMALE, "l", CampaignEx.JSON_KEY_AD_K, "i", "android_release"}, mv = {1, 8, 0})
        public static final class a {

            @com.google.gson.r.c("agreeToAll")
            private final Map<String, String> a;

            @com.google.gson.r.c("disagreeToAll")
            private final Map<String, String> b;

            @com.google.gson.r.c("save")
            private final Map<String, String> c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            @com.google.gson.r.c("saveAndClose")
            private final Map<String, String> f8644d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            @com.google.gson.r.c("text")
            private final Map<String, String> f8645e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            @com.google.gson.r.c("title")
            private final Map<String, String> f8646f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            @com.google.gson.r.c("textVendors")
            private final Map<String, String> f8647g;

            @com.google.gson.r.c("subTextVendors")
            private final Map<String, String> h;

            @com.google.gson.r.c("viewAllPurposes")
            private final Map<String, String> i;

            @com.google.gson.r.c("bulkActionOnPurposes")
            private final Map<String, String> j;

            @com.google.gson.r.c("viewOurPartners")
            private final Map<String, String> k;

            @com.google.gson.r.c("bulkActionOnVendors")
            private final Map<String, String> l;

            public a() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null);
            }

            public a(Map<String, String> map, Map<String, String> map2, Map<String, String> map3, Map<String, String> map4, Map<String, String> map5, Map<String, String> map6, Map<String, String> map7, Map<String, String> map8, Map<String, String> map9, Map<String, String> map10, Map<String, String> map11, Map<String, String> map12) {
                this.a = map;
                this.b = map2;
                this.c = map3;
                this.f8644d = map4;
                this.f8645e = map5;
                this.f8646f = map6;
                this.f8647g = map7;
                this.h = map8;
                this.i = map9;
                this.j = map10;
                this.k = map11;
                this.l = map12;
            }

            public /* synthetic */ a(Map map, Map map2, Map map3, Map map4, Map map5, Map map6, Map map7, Map map8, Map map9, Map map10, Map map11, Map map12, int i, n nVar) {
                this((i & 1) != 0 ? null : map, (i & 2) != 0 ? null : map2, (i & 4) != 0 ? null : map3, (i & 8) != 0 ? null : map4, (i & 16) != 0 ? null : map5, (i & 32) != 0 ? null : map6, (i & 64) != 0 ? null : map7, (i & 128) != 0 ? null : map8, (i & 256) != 0 ? null : map9, (i & 512) != 0 ? null : map10, (i & 1024) != 0 ? null : map11, (i & 2048) == 0 ? map12 : null);
            }

            public final Map<String, String> a() {
                return this.a;
            }

            public final Map<String, String> b() {
                return this.j;
            }

            public final Map<String, String> c() {
                return this.l;
            }

            public final Map<String, String> d() {
                return this.b;
            }

            public final Map<String, String> e() {
                return this.k;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.f8644d, aVar.f8644d) && Intrinsics.areEqual(this.f8645e, aVar.f8645e) && Intrinsics.areEqual(this.f8646f, aVar.f8646f) && Intrinsics.areEqual(this.f8647g, aVar.f8647g) && Intrinsics.areEqual(this.h, aVar.h) && Intrinsics.areEqual(this.i, aVar.i) && Intrinsics.areEqual(this.j, aVar.j) && Intrinsics.areEqual(this.k, aVar.k) && Intrinsics.areEqual(this.l, aVar.l);
            }

            public final Map<String, String> f() {
                return this.i;
            }

            public final Map<String, String> g() {
                return this.c;
            }

            public final Map<String, String> h() {
                return this.f8644d;
            }

            public int hashCode() {
                Map<String, String> map = this.a;
                int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
                Map<String, String> map2 = this.b;
                int iHashCode2 = (iHashCode + (map2 == null ? 0 : map2.hashCode())) * 31;
                Map<String, String> map3 = this.c;
                int iHashCode3 = (iHashCode2 + (map3 == null ? 0 : map3.hashCode())) * 31;
                Map<String, String> map4 = this.f8644d;
                int iHashCode4 = (iHashCode3 + (map4 == null ? 0 : map4.hashCode())) * 31;
                Map<String, String> map5 = this.f8645e;
                int iHashCode5 = (iHashCode4 + (map5 == null ? 0 : map5.hashCode())) * 31;
                Map<String, String> map6 = this.f8646f;
                int iHashCode6 = (iHashCode5 + (map6 == null ? 0 : map6.hashCode())) * 31;
                Map<String, String> map7 = this.f8647g;
                int iHashCode7 = (iHashCode6 + (map7 == null ? 0 : map7.hashCode())) * 31;
                Map<String, String> map8 = this.h;
                int iHashCode8 = (iHashCode7 + (map8 == null ? 0 : map8.hashCode())) * 31;
                Map<String, String> map9 = this.i;
                int iHashCode9 = (iHashCode8 + (map9 == null ? 0 : map9.hashCode())) * 31;
                Map<String, String> map10 = this.j;
                int iHashCode10 = (iHashCode9 + (map10 == null ? 0 : map10.hashCode())) * 31;
                Map<String, String> map11 = this.k;
                int iHashCode11 = (iHashCode10 + (map11 == null ? 0 : map11.hashCode())) * 31;
                Map<String, String> map12 = this.l;
                return iHashCode11 + (map12 != null ? map12.hashCode() : 0);
            }

            public final Map<String, String> i() {
                return this.h;
            }

            public final Map<String, String> j() {
                return this.f8645e;
            }

            public final Map<String, String> k() {
                return this.f8647g;
            }

            public final Map<String, String> l() {
                return this.f8646f;
            }

            public String toString() {
                return "Content(agreeToAll=" + this.a + ", disagreeToAll=" + this.b + ", save=" + this.c + ", saveAndClose=" + this.f8644d + ", text=" + this.f8645e + ", title=" + this.f8646f + ", textVendors=" + this.f8647g + ", subTextVendors=" + this.h + ", purposesTitleLabel=" + this.i + ", bulkActionLabel=" + this.j + ", ourPartnersLabel=" + this.k + ", bulkActionOnVendorsLabel=" + this.l + ')';
            }
        }

        public g() {
            this(false, null, false, false, false, null, null, 127, null);
        }

        public g(boolean z, a content, boolean z2, boolean z3, boolean z4, List<PurposeCategory> purposeCategories, SensitivePersonalInformation sensitivePersonalInformation) {
            Intrinsics.checkNotNullParameter(content, "content");
            Intrinsics.checkNotNullParameter(purposeCategories, "purposeCategories");
            this.a = z;
            this.b = content;
            this.c = z2;
            this.f8640d = z3;
            this.f8641e = z4;
            this.f8642f = purposeCategories;
            this.f8643g = sensitivePersonalInformation;
        }

        public /* synthetic */ g(boolean z, a aVar, boolean z2, boolean z3, boolean z4, List list, SensitivePersonalInformation sensitivePersonalInformation, int i, n nVar) {
            this((i & 1) != 0 ? true : z, (i & 2) != 0 ? new a(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null) : aVar, (i & 4) != 0 ? false : z2, (i & 8) == 0 ? z3 : true, (i & 16) == 0 ? z4 : false, (i & 32) != 0 ? new ArrayList() : list, (i & 64) != 0 ? null : sensitivePersonalInformation);
        }

        public final boolean a() {
            return this.a;
        }

        public final a b() {
            return this.b;
        }

        public final boolean c() {
            return this.f8640d;
        }

        public final boolean d() {
            return this.c;
        }

        public final List<PurposeCategory> e() {
            return this.f8642f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.a == gVar.a && Intrinsics.areEqual(this.b, gVar.b) && this.c == gVar.c && this.f8640d == gVar.f8640d && this.f8641e == gVar.f8641e && Intrinsics.areEqual(this.f8642f, gVar.f8642f) && Intrinsics.areEqual(this.f8643g, gVar.f8643g);
        }

        public final SensitivePersonalInformation f() {
            return this.f8643g;
        }

        public final boolean g() {
            return this.f8641e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v14 */
        /* JADX WARN: Type inference failed for: r0v15 */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r2v10 */
        /* JADX WARN: Type inference failed for: r2v3, types: [int] */
        /* JADX WARN: Type inference failed for: r2v5, types: [int] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8 */
        /* JADX WARN: Type inference failed for: r2v9 */
        public int hashCode() {
            boolean z = this.a;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int iHashCode = ((r0 * 31) + this.b.hashCode()) * 31;
            boolean z2 = this.c;
            ?? r2 = z2;
            if (z2) {
                r2 = 1;
            }
            int i = (iHashCode + r2) * 31;
            boolean z3 = this.f8640d;
            ?? r22 = z3;
            if (z3) {
                r22 = 1;
            }
            int i2 = (i + r22) * 31;
            boolean z4 = this.f8641e;
            int iHashCode2 = (((i2 + (z4 ? 1 : z4)) * 31) + this.f8642f.hashCode()) * 31;
            SensitivePersonalInformation sensitivePersonalInformation = this.f8643g;
            return iHashCode2 + (sensitivePersonalInformation == null ? 0 : sensitivePersonalInformation.hashCode());
        }

        public String toString() {
            return "Preferences(canCloseWhenConsentIsMissing=" + this.a + ", content=" + this.b + ", disableButtonsUntilScroll=" + this.c + ", denyAppliesToLI=" + this.f8640d + ", showWhenConsentIsMissing=" + this.f8641e + ", purposeCategories=" + this.f8642f + ", sensitivePersonalInformation=" + this.f8643g + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$h */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001:\u0002\u0013\u0015B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0017R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/k$h;", "", "", "name", "Lio/didomi/sdk/k$h$a;", "ccpa", "Lio/didomi/sdk/k$h$b;", "group", "<init>", "(Ljava/lang/String;Lio/didomi/sdk/k$h$a;Lio/didomi/sdk/k$h$b;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/k$h$a;", "()Lio/didomi/sdk/k$h$a;", "c", "Lio/didomi/sdk/k$h$b;", "getGroup", "()Lio/didomi/sdk/k$h$b;", "android_release"}, mv = {1, 8, 0})
    public static final class h {

        @com.google.gson.r.c("name")
        private final String a;

        @com.google.gson.r.c("ccpa")
        private final a b;

        @com.google.gson.r.c("group")
        private final b c;

        /* JADX INFO: renamed from: io.didomi.sdk.k$h$a */
        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/k$h$a;", "", "", "lspa", "Lio/didomi/sdk/k$h$a$a;", "uspString", "<init>", "(ZLio/didomi/sdk/k$h$a$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/k$h$a$a;", "getUspString", "()Lio/didomi/sdk/k$h$a$a;", "android_release"}, mv = {1, 8, 0})
        public static final class a {

            @com.google.gson.r.c("lspa")
            private final boolean a;

            @com.google.gson.r.c("uspString")
            private final C0491a b;

            /* JADX INFO: renamed from: io.didomi.sdk.k$h$a$a, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\n¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/k$h$a$a;", "", "", "version", "<init>", "(I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", MobileAdsBridge.versionMethodName, "android_release"}, mv = {1, 8, 0})
            public static final class C0491a {

                @com.google.gson.r.c("version")
                private final int a;

                public C0491a() {
                    this(0, 1, null);
                }

                public C0491a(int i) {
                    this.a = i;
                }

                public /* synthetic */ C0491a(int i, int i2, n nVar) {
                    this((i2 & 1) != 0 ? 1 : i);
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof C0491a) && this.a == ((C0491a) obj).a;
                }

                public int hashCode() {
                    return this.a;
                }

                public String toString() {
                    return "UspString(version=" + this.a + ')';
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(false, null, 3, 0 == true ? 1 : 0);
            }

            public a(boolean z, C0491a uspString) {
                Intrinsics.checkNotNullParameter(uspString, "uspString");
                this.a = z;
                this.b = uspString;
            }

            public /* synthetic */ a(boolean z, C0491a c0491a, int i, n nVar) {
                this((i & 1) != 0 ? false : z, (i & 2) != 0 ? new C0491a(0, 1, null) : c0491a);
            }

            public final boolean a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return this.a == aVar.a && Intrinsics.areEqual(this.b, aVar.b);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v1, types: [int] */
            /* JADX WARN: Type inference failed for: r0v4 */
            /* JADX WARN: Type inference failed for: r0v5 */
            public int hashCode() {
                boolean z = this.a;
                ?? r0 = z;
                if (z) {
                    r0 = 1;
                }
                return (r0 * 31) + this.b.hashCode();
            }

            public String toString() {
                return "Ccpa(lspa=" + this.a + ", uspString=" + this.b + ')';
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$h$b */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\r\u0010\u000eR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0007¨\u0006\u0012"}, d2 = {"Lio/didomi/sdk/k$h$b;", "", "", "name", "<init>", "(Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "getName", "android_release"}, mv = {1, 8, 0})
        public static final class b {

            @com.google.gson.r.c("name")
            private final String a;

            /* JADX WARN: Multi-variable type inference failed */
            public b() {
                this(null, 1, 0 == true ? 1 : 0);
            }

            public b(String name) {
                Intrinsics.checkNotNullParameter(name, "name");
                this.a = name;
            }

            public /* synthetic */ b(String str, int i, n nVar) {
                this((i & 1) != 0 ? "" : str);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Group(name=" + this.a + ')';
            }
        }

        public h() {
            this(null, null, null, 7, null);
        }

        public h(String str, a aVar, b bVar) {
            this.a = str;
            this.b = aVar;
            this.c = bVar;
        }

        public /* synthetic */ h(String str, a aVar, b bVar, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : aVar, (i & 4) != 0 ? null : bVar);
        }

        public final a a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return Intrinsics.areEqual(this.a, hVar.a) && Intrinsics.areEqual(this.b, hVar.b) && Intrinsics.areEqual(this.c, hVar.c);
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            a aVar = this.b;
            int iHashCode2 = (iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
            b bVar = this.c;
            return iHashCode2 + (bVar != null ? bVar.hashCode() : 0);
        }

        public String toString() {
            return "Regulation(name=" + this.a + ", ccpa=" + this.b + ", group=" + this.c + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$i */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\b\u0018\u00002\u00020\u0001:\u0003\u0017\u0019\u001aBM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0015\u001a\u00020\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0017\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0018\u001a\u0004\b\u001a\u0010\u0010R\u001a\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0018\u001a\u0004\b\u001b\u0010\u0010R\u001a\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u0019\u0010\u001eR\u001a\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001f\u001a\u0004\b \u0010!R\u001a\u0010\n\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b \u0010\u001f\u001a\u0004\b\"\u0010!R\u001a\u0010\f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b\u001c\u0010$¨\u0006%"}, d2 = {"Lio/didomi/sdk/k$i;", "", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "color", "linkColor", "Lio/didomi/sdk/k$i$b;", "buttonsThemeConfig", "Lio/didomi/sdk/k$i$c;", "notice", "preferences", "", WebPreferenceConstants.FULL_SCREEN, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$i$b;Lio/didomi/sdk/k$i$c;Lio/didomi/sdk/k$i$c;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/k$i$b;", "()Lio/didomi/sdk/k$i$b;", "Lio/didomi/sdk/k$i$c;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/k$i$c;", "g", "Z", "()Z", "android_release"}, mv = {1, 8, 0})
    public static final class i {

        @com.google.gson.r.c(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)
        private final String a;

        @com.google.gson.r.c("color")
        private final String b;

        @com.google.gson.r.c("linkColor")
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @com.google.gson.r.c("buttons")
        private final b f8648d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @com.google.gson.r.c("notice")
        private final c f8649e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @com.google.gson.r.c("preferences")
        private final c f8650f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @com.google.gson.r.c(WebPreferenceConstants.FULL_SCREEN)
        private final boolean f8651g;

        /* JADX INFO: renamed from: io.didomi.sdk.k$i$a */
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0013\b\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lio/didomi/sdk/k$i$a;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "android_release"}, mv = {1, 8, 0})
        public enum a {
            PRIMARY("primary"),
            SECONDARY(o2.h.Y),
            NONE("none");

            public static final C0492a b = new C0492a(null);
            private final String a;

            /* JADX INFO: renamed from: io.didomi.sdk.k$i$a$a, reason: collision with other inner class name */
            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/k$i$a$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/k$i$a;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k$i$a;", "android_release"}, mv = {1, 8, 0})
            public static final class C0492a {
                private C0492a() {
                }

                public /* synthetic */ C0492a(n nVar) {
                    this();
                }

                public final a a(String value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    Locale ENGLISH = Locale.ENGLISH;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    String lowerCase = value.toLowerCase(ENGLISH);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    a aVar = a.PRIMARY;
                    if (Intrinsics.areEqual(lowerCase, aVar.b())) {
                        return aVar;
                    }
                    a aVar2 = a.SECONDARY;
                    return Intrinsics.areEqual(lowerCase, aVar2.b()) ? aVar2 : a.NONE;
                }
            }

            a(String str) {
                this.a = str;
            }

            public final String b() {
                return this.a;
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$i$b */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0011\u0010\u0014¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/k$i$b;", "", "Lio/didomi/sdk/k$i$b$a;", "regular", "highlight", "<init>", "(Lio/didomi/sdk/k$i$b$a;Lio/didomi/sdk/k$i$b$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$i$b$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Lio/didomi/sdk/k$i$b$a;", "android_release"}, mv = {1, 8, 0})
        public static final class b {

            @com.google.gson.r.c("regularButtons")
            private final a a;

            @com.google.gson.r.c("highlightButtons")
            private final a b;

            /* JADX INFO: renamed from: io.didomi.sdk.k$i$b$a */
            @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\f\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\rJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0017\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u0016\u001a\u0004\b\u0018\u0010\rR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0016\u001a\u0004\b\u0019\u0010\rR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u001a\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001b\u0010\rR\u001a\u0010\t\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/k$i$b$a;", "", "", TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "textColor", "borderColor", "borderWidth", "borderRadius", "", "sizesInDp", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "a", "()Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "toString", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "c", "getTextColor", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "e", "Z", "g", "()Z", "android_release"}, mv = {1, 8, 0})
            public static final class a {

                @com.google.gson.r.c(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)
                private final String a;

                @com.google.gson.r.c("textColor")
                private final String b;

                @com.google.gson.r.c("borderColor")
                private final String c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                @com.google.gson.r.c("borderWidth")
                private final String f8655d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                @com.google.gson.r.c("borderRadius")
                private final String f8656e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                @com.google.gson.r.c("sizesInDp")
                private final boolean f8657f;

                public a() {
                    this(null, null, null, null, null, false, 63, null);
                }

                public a(String str, String str2, String str3, String str4, String str5, boolean z) {
                    this.a = str;
                    this.b = str2;
                    this.c = str3;
                    this.f8655d = str4;
                    this.f8656e = str5;
                    this.f8657f = z;
                }

                public /* synthetic */ a(String str, String str2, String str3, String str4, String str5, boolean z, int i, n nVar) {
                    this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) == 0 ? str5 : null, (i & 32) != 0 ? false : z);
                }

                public final String a() {
                    return this.a;
                }

                public final String b() {
                    return this.b;
                }

                public final String c() {
                    return this.a;
                }

                public final String d() {
                    return this.c;
                }

                public final String e() {
                    return this.f8656e;
                }

                public boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (!(obj instanceof a)) {
                        return false;
                    }
                    a aVar = (a) obj;
                    return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.f8655d, aVar.f8655d) && Intrinsics.areEqual(this.f8656e, aVar.f8656e) && this.f8657f == aVar.f8657f;
                }

                public final String f() {
                    return this.f8655d;
                }

                public final boolean g() {
                    return this.f8657f;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v3, types: [int] */
                /* JADX WARN: Type inference failed for: r1v4 */
                /* JADX WARN: Type inference failed for: r1v6 */
                public int hashCode() {
                    String str = this.a;
                    int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                    String str2 = this.b;
                    int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                    String str3 = this.c;
                    int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                    String str4 = this.f8655d;
                    int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
                    String str5 = this.f8656e;
                    int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
                    boolean z = this.f8657f;
                    ?? r1 = z;
                    if (z) {
                        r1 = 1;
                    }
                    return iHashCode5 + r1;
                }

                public String toString() {
                    return "ButtonTheme(backgroundColor=" + this.a + ", textColor=" + this.b + ", borderColor=" + this.c + ", borderWidth=" + this.f8655d + ", borderRadius=" + this.f8656e + ", sizesInDp=" + this.f8657f + ')';
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            public b() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public b(a regular, a highlight) {
                Intrinsics.checkNotNullParameter(regular, "regular");
                Intrinsics.checkNotNullParameter(highlight, "highlight");
                this.a = regular;
                this.b = highlight;
            }

            public /* synthetic */ b(a aVar, a aVar2, int i, n nVar) {
                this((i & 1) != 0 ? new a(null, null, null, null, null, false, 63, null) : aVar, (i & 2) != 0 ? new a(null, null, null, null, null, false, 63, null) : aVar2);
            }

            public final a a() {
                return this.b;
            }

            public final a b() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof b)) {
                    return false;
                }
                b bVar = (b) obj;
                return Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b);
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return "ButtonsThemeConfig(regular=" + this.a + ", highlight=" + this.b + ')';
            }
        }

        /* JADX INFO: renamed from: io.didomi.sdk.k$i$c */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u001d\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001bB\u009f\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u0019\u001a\u00020\u00102\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u0015R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001c\u001a\u0004\b\u001e\u0010\u0015R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b\u001d\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b \u0010\u001c\u001a\u0004\b!\u0010\u0015R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010\u001c\u001a\u0004\b#\u0010\u0015R\u001c\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\u001f\u0010\u0015R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b$\u0010\u001c\u001a\u0004\b%\u0010\u0015R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010\u001c\u001a\u0004\b&\u0010\u0015R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010\u001c\u001a\u0004\b \u0010\u0015R\u001c\u0010\r\u001a\u0004\u0018\u00010\f8\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u001e\u0010(\u001a\u0004\b'\u0010)R\u001c\u0010\u000e\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010(\u001a\u0004\b*\u0010)R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010(\u001a\u0004\b\"\u0010)R\u001a\u0010\u0011\u001a\u00020\u00108\u0006X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b$\u0010,¨\u0006-"}, d2 = {"Lio/didomi/sdk/k$i$c;", "", "", "alignment", "titleAlignment", "descriptionAlignment", TtmlNode.ATTR_TTS_FONT_FAMILY, "titleFontFamily", "descriptionFontFamily", "textColor", "titleTextColor", "descriptionTextColor", "", "textSize", "titleTextSize", "descriptionTextSize", "", "stickyButtons", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "j", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, InneractiveMediationDefs.GENDER_FEMALE, "e", CampaignEx.JSON_KEY_AD_K, "g", "h", "l", "i", "Ljava/lang/Integer;", "()Ljava/lang/Integer;", InneractiveMediationDefs.GENDER_MALE, "Z", "()Z", "android_release"}, mv = {1, 8, 0})
        public static final class c {

            @com.google.gson.r.c("alignment")
            private final String a;

            @com.google.gson.r.c("titleAlignment")
            private final String b;

            @com.google.gson.r.c("descriptionAlignment")
            private final String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            @com.google.gson.r.c(TtmlNode.ATTR_TTS_FONT_FAMILY)
            private final String f8658d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            @com.google.gson.r.c("titleFontFamily")
            private final String f8659e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            @com.google.gson.r.c("descriptionFontFamily")
            private final String f8660f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            @com.google.gson.r.c("textColor")
            private final String f8661g;

            @com.google.gson.r.c("titleTextColor")
            private final String h;

            @com.google.gson.r.c("descriptionTextColor")
            private final String i;

            @com.google.gson.r.c("textSize")
            private final Integer j;

            @com.google.gson.r.c("titleTextSize")
            private final Integer k;

            @com.google.gson.r.c("descriptionTextSize")
            private final Integer l;

            @com.google.gson.r.c("stickyButtons")
            private final boolean m;

            /* JADX INFO: renamed from: io.didomi.sdk.k$i$c$a */
            @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u000f\b\u0086\u0001\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB%\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u0004\"\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001f\u0010\u0006\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\r\u001a\u0004\b\u000e\u0010\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/k$i$c$a;", "", "", "gravity", "", "", "values", "<init>", "(Ljava/lang/String;II[Ljava/lang/String;)V", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()I", "[Ljava/lang/String;", "c", "()[Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "android_release"}, mv = {1, 8, 0})
            public enum a {
                CENTER(17, TtmlNode.CENTER, "middle"),
                START(GravityCompat.START, "start", "left"),
                END(GravityCompat.END, TtmlNode.END, TtmlNode.RIGHT),
                JUSTIFY(GravityCompat.START, "justify", "justified");

                public static final C0493a c = new C0493a(null);
                private final int a;
                private final String[] b;

                /* JADX INFO: renamed from: io.didomi.sdk.k$i$c$a$a, reason: collision with other inner class name */
                @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/k$i$c$a$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/k$i$c$a;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/k$i$c$a;", "android_release"}, mv = {1, 8, 0})
                public static final class C0493a {
                    private C0493a() {
                    }

                    public /* synthetic */ C0493a(n nVar) {
                        this();
                    }

                    public final a a(String value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        a aVar = a.CENTER;
                        String[] strArrC = aVar.c();
                        Locale locale = Locale.ROOT;
                        String lowerCase = value.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        if (ArraysKt___ArraysKt.contains(strArrC, lowerCase)) {
                            return aVar;
                        }
                        a aVar2 = a.START;
                        String[] strArrC2 = aVar2.c();
                        String lowerCase2 = value.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                        if (ArraysKt___ArraysKt.contains(strArrC2, lowerCase2)) {
                            return aVar2;
                        }
                        a aVar3 = a.END;
                        String[] strArrC3 = aVar3.c();
                        String lowerCase3 = value.toLowerCase(locale);
                        Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
                        if (!ArraysKt___ArraysKt.contains(strArrC3, lowerCase3)) {
                            aVar3 = a.JUSTIFY;
                            String[] strArrC4 = aVar3.c();
                            String lowerCase4 = value.toLowerCase(locale);
                            Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                            if (!ArraysKt___ArraysKt.contains(strArrC4, lowerCase4)) {
                                return aVar2;
                            }
                        }
                        return aVar3;
                    }
                }

                a(int i, String... strArr) {
                    this.a = i;
                    this.b = strArr;
                }

                public final int b() {
                    return this.a;
                }

                public final String[] c() {
                    return this.b;
                }
            }

            public c() {
                this(null, null, null, null, null, null, null, null, null, null, null, null, false, 8191, null);
            }

            public c(String alignment, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Integer num, Integer num2, Integer num3, boolean z) {
                Intrinsics.checkNotNullParameter(alignment, "alignment");
                this.a = alignment;
                this.b = str;
                this.c = str2;
                this.f8658d = str3;
                this.f8659e = str4;
                this.f8660f = str5;
                this.f8661g = str6;
                this.h = str7;
                this.i = str8;
                this.j = num;
                this.k = num2;
                this.l = num3;
                this.m = z;
            }

            public /* synthetic */ c(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Integer num, Integer num2, Integer num3, boolean z, int i, n nVar) {
                this((i & 1) != 0 ? (String) k.first(a.START.c()) : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : str6, (i & 64) != 0 ? null : str7, (i & 128) != 0 ? null : str8, (i & 256) != 0 ? null : str9, (i & 512) != 0 ? null : num, (i & 1024) != 0 ? null : num2, (i & 2048) == 0 ? num3 : null, (i & 4096) != 0 ? false : z);
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.c;
            }

            public final String c() {
                return this.f8660f;
            }

            public final String d() {
                return this.i;
            }

            public final Integer e() {
                return this.l;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                return Intrinsics.areEqual(this.a, cVar.a) && Intrinsics.areEqual(this.b, cVar.b) && Intrinsics.areEqual(this.c, cVar.c) && Intrinsics.areEqual(this.f8658d, cVar.f8658d) && Intrinsics.areEqual(this.f8659e, cVar.f8659e) && Intrinsics.areEqual(this.f8660f, cVar.f8660f) && Intrinsics.areEqual(this.f8661g, cVar.f8661g) && Intrinsics.areEqual(this.h, cVar.h) && Intrinsics.areEqual(this.i, cVar.i) && Intrinsics.areEqual(this.j, cVar.j) && Intrinsics.areEqual(this.k, cVar.k) && Intrinsics.areEqual(this.l, cVar.l) && this.m == cVar.m;
            }

            public final String f() {
                return this.f8658d;
            }

            public final boolean g() {
                return this.m;
            }

            public final String h() {
                return this.f8661g;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v32, types: [int] */
            /* JADX WARN: Type inference failed for: r1v33 */
            /* JADX WARN: Type inference failed for: r1v44 */
            public int hashCode() {
                int iHashCode = this.a.hashCode() * 31;
                String str = this.b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.c;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f8658d;
                int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.f8659e;
                int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.f8660f;
                int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
                String str6 = this.f8661g;
                int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
                String str7 = this.h;
                int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
                String str8 = this.i;
                int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
                Integer num = this.j;
                int iHashCode10 = (iHashCode9 + (num == null ? 0 : num.hashCode())) * 31;
                Integer num2 = this.k;
                int iHashCode11 = (iHashCode10 + (num2 == null ? 0 : num2.hashCode())) * 31;
                Integer num3 = this.l;
                int iHashCode12 = (iHashCode11 + (num3 != null ? num3.hashCode() : 0)) * 31;
                boolean z = this.m;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                return iHashCode12 + r1;
            }

            public final Integer i() {
                return this.j;
            }

            public final String j() {
                return this.b;
            }

            public final String k() {
                return this.f8659e;
            }

            public final String l() {
                return this.h;
            }

            public final Integer m() {
                return this.k;
            }

            public String toString() {
                return "ContentThemeConfig(alignment=" + this.a + ", titleAlignment=" + this.b + ", descriptionAlignment=" + this.c + ", fontFamily=" + this.f8658d + ", titleFontFamily=" + this.f8659e + ", descriptionFontFamily=" + this.f8660f + ", textColor=" + this.f8661g + ", titleTextColor=" + this.h + ", descriptionTextColor=" + this.i + ", textSize=" + this.j + ", titleTextSize=" + this.k + ", descriptionTextSize=" + this.l + ", stickyButtons=" + this.m + ')';
            }
        }

        public i() {
            this(null, null, null, null, null, null, false, 127, null);
        }

        public i(String backgroundColor, String color, String linkColor, b buttonsThemeConfig, c notice, c preferences, boolean z) {
            Intrinsics.checkNotNullParameter(backgroundColor, "backgroundColor");
            Intrinsics.checkNotNullParameter(color, "color");
            Intrinsics.checkNotNullParameter(linkColor, "linkColor");
            Intrinsics.checkNotNullParameter(buttonsThemeConfig, "buttonsThemeConfig");
            Intrinsics.checkNotNullParameter(notice, "notice");
            Intrinsics.checkNotNullParameter(preferences, "preferences");
            this.a = backgroundColor;
            this.b = color;
            this.c = linkColor;
            this.f8648d = buttonsThemeConfig;
            this.f8649e = notice;
            this.f8650f = preferences;
            this.f8651g = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ i(String str, String str2, String str3, b bVar, c cVar, c cVar2, boolean z, int i, n nVar) {
            this((i & 1) != 0 ? "#FFFFFF" : str, (i & 2) != 0 ? "#05687b" : str2, (i & 4) == 0 ? str3 : "#05687b", (i & 8) != 0 ? new b(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0) : bVar, (i & 16) != 0 ? new c(null, null, null, null, null, null, null, null, null, null, null, null, false, 8191, null) : cVar, (i & 32) != 0 ? new c(null, null, null, null, null, null, null, null, null, null, null, null, false, 8191, null) : cVar2, (i & 64) != 0 ? false : z);
        }

        public final String a() {
            return this.a;
        }

        public final b b() {
            return this.f8648d;
        }

        public final String c() {
            return this.b;
        }

        public final boolean d() {
            return this.f8651g;
        }

        public final String e() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Intrinsics.areEqual(this.a, iVar.a) && Intrinsics.areEqual(this.b, iVar.b) && Intrinsics.areEqual(this.c, iVar.c) && Intrinsics.areEqual(this.f8648d, iVar.f8648d) && Intrinsics.areEqual(this.f8649e, iVar.f8649e) && Intrinsics.areEqual(this.f8650f, iVar.f8650f) && this.f8651g == iVar.f8651g;
        }

        public final c f() {
            return this.f8649e;
        }

        public final c g() {
            return this.f8650f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v11, types: [int] */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        public int hashCode() {
            int iHashCode = ((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.f8648d.hashCode()) * 31) + this.f8649e.hashCode()) * 31) + this.f8650f.hashCode()) * 31;
            boolean z = this.f8651g;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode + r1;
        }

        public String toString() {
            return "Theme(backgroundColor=" + this.a + ", color=" + this.b + ", linkColor=" + this.c + ", buttonsThemeConfig=" + this.f8648d + ", notice=" + this.f8649e + ", preferences=" + this.f8650f + ", fullscreen=" + this.f8651g + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$j */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0010\u0010\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/k$j;", "", "Lio/didomi/sdk/k$j$a;", AppLovinEventTypes.USER_VIEWED_CONTENT, "<init>", "(Lio/didomi/sdk/k$j$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/k$j$a;", "()Lio/didomi/sdk/k$j$a;", "android_release"}, mv = {1, 8, 0})
    public static final class j {

        @com.google.gson.r.c(AppLovinEventTypes.USER_VIEWED_CONTENT)
        private final a a;

        /* JADX INFO: renamed from: io.didomi.sdk.k$j$a */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\u0013R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0014\u0010\u0013¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/k$j$a;", "", "", "", "description", "disagree", "<init>", "(Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Map;", "()Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
        public static final class a {

            @com.google.gson.r.c("description")
            private final Map<String, String> a;

            @com.google.gson.r.c("disagree")
            private final Map<String, String> b;

            /* JADX WARN: Multi-variable type inference failed */
            public a() {
                this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }

            public a(Map<String, String> description, Map<String, String> disagree) {
                Intrinsics.checkNotNullParameter(description, "description");
                Intrinsics.checkNotNullParameter(disagree, "disagree");
                this.a = description;
                this.b = disagree;
            }

            public /* synthetic */ a(Map map, Map map2, int i, n nVar) {
                this((i & 1) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map2);
            }

            public final Map<String, String> a() {
                return this.a;
            }

            public final Map<String, String> b() {
                return this.b;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b);
            }

            public int hashCode() {
                return (this.a.hashCode() * 31) + this.b.hashCode();
            }

            public String toString() {
                return "Content(description=" + this.a + ", disagree=" + this.b + ')';
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public j() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public j(a content) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.a = content;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ j(a aVar, int i, n nVar) {
            if ((i & 1) != 0) {
                aVar = new a(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
            }
            this(aVar);
        }

        public final a a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof j) && Intrinsics.areEqual(this.a, ((j) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "UnderageNotice(content=" + this.a + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.k$k, reason: collision with other inner class name */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0012\u001a\u0004\b\u0011\u0010\tR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0012\u001a\u0004\b\u0015\u0010\t¨\u0006\u0016"}, d2 = {"Lio/didomi/sdk/k$k;", "", "", "ignoreConsentBeforeAsString", "country", TtmlNode.TAG_REGION, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "getRegion$android_release", "android_release"}, mv = {1, 8, 0})
    public static final class C0494k {

        @com.google.gson.r.c("ignoreConsentBefore")
        private final String a;

        @com.google.gson.r.c("country")
        private final String b;

        @com.google.gson.r.c(TtmlNode.TAG_REGION)
        private final String c;

        public C0494k() {
            this(null, null, null, 7, null);
        }

        public C0494k(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        public /* synthetic */ C0494k(String str, String str2, String str3, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
        }

        public final String a() {
            return this.b;
        }

        public final String b() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0494k)) {
                return false;
            }
            C0494k c0494k = (C0494k) obj;
            return Intrinsics.areEqual(this.a, c0494k.a) && Intrinsics.areEqual(this.b, c0494k.b) && Intrinsics.areEqual(this.c, c0494k.c);
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "User(ignoreConsentBeforeAsString=" + this.a + ", country=" + this.b + ", region=" + this.c + ')';
        }
    }

    public C1806k() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, 8191, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1806k(a app2, e languages, f notice, j underageNotice, g preferences, SyncConfiguration sync, Map<String, ? extends Map<String, String>> textsConfiguration, i theme, C0494k user, String str, h regulation, d integrations, c featureFlags) {
        Intrinsics.checkNotNullParameter(app2, "app");
        Intrinsics.checkNotNullParameter(languages, "languages");
        Intrinsics.checkNotNullParameter(notice, "notice");
        Intrinsics.checkNotNullParameter(underageNotice, "underageNotice");
        Intrinsics.checkNotNullParameter(preferences, "preferences");
        Intrinsics.checkNotNullParameter(sync, "sync");
        Intrinsics.checkNotNullParameter(textsConfiguration, "textsConfiguration");
        Intrinsics.checkNotNullParameter(theme, "theme");
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(regulation, "regulation");
        Intrinsics.checkNotNullParameter(integrations, "integrations");
        Intrinsics.checkNotNullParameter(featureFlags, "featureFlags");
        this.a = app2;
        this.b = languages;
        this.c = notice;
        this.f8609d = underageNotice;
        this.f8610e = preferences;
        this.f8611f = sync;
        this.f8612g = textsConfiguration;
        this.h = theme;
        this.i = user;
        this.j = str;
        this.k = regulation;
        this.l = integrations;
        this.m = featureFlags;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C1806k(a aVar, e eVar, f fVar, j jVar, g gVar, SyncConfiguration syncConfiguration, Map map, i iVar, C0494k c0494k, String str, h hVar, d dVar, c cVar, int i2, n nVar) {
        c cVar2;
        a aVar2 = (i2 & 1) != 0 ? new a(null, null, null, null, null, null, null, null, false, null, null, null, false, 8191, null) : aVar;
        int i3 = 3;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        e eVar2 = (i2 & 2) != 0 ? new e(null, 0 == true ? 1 : 0, i3, 0 == true ? 1 : 0) : eVar;
        f fVar2 = (i2 & 4) != 0 ? new f(0, false, null, null, null, false, false, null, false, false, 1023, null) : fVar;
        int i4 = 1;
        j jVar2 = (i2 & 8) != 0 ? new j(objArr5 == true ? 1 : 0, i4, objArr4 == true ? 1 : 0) : jVar;
        g gVar2 = (i2 & 16) != 0 ? new g(false, null, false, false, false, null, null, 127, null) : gVar;
        SyncConfiguration syncConfiguration2 = (i2 & 32) != 0 ? new SyncConfiguration(false, 0, 0, 7, null) : syncConfiguration;
        Map mapEmptyMap = (i2 & 64) != 0 ? MapsKt__MapsKt.emptyMap() : map;
        i iVar2 = (i2 & 128) != 0 ? new i(null, null, null, null, null, null, false, 127, null) : iVar;
        C0494k c0494k2 = (i2 & 256) != 0 ? new C0494k(null, null, null, 7, null) : c0494k;
        String str2 = (i2 & 512) != 0 ? null : str;
        h hVar2 = (i2 & 1024) != 0 ? new h(null, null, null, 7, null) : hVar;
        d dVar2 = (i2 & 2048) != 0 ? new d(objArr3 == true ? 1 : 0, i4, objArr2 == true ? 1 : 0) : dVar;
        if ((i2 & 4096) != 0) {
            boolean z = false;
            cVar2 = new c(z, z, i3, objArr == true ? 1 : 0);
        } else {
            cVar2 = cVar;
        }
        this(aVar2, eVar2, fVar2, jVar2, gVar2, syncConfiguration2, mapEmptyMap, iVar2, c0494k2, str2, hVar2, dVar2, cVar2);
    }

    public final a a() {
        return this.a;
    }

    public final c b() {
        return this.m;
    }

    public final d c() {
        return this.l;
    }

    public final e d() {
        return this.b;
    }

    public final f e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1806k)) {
            return false;
        }
        C1806k c1806k = (C1806k) obj;
        return Intrinsics.areEqual(this.a, c1806k.a) && Intrinsics.areEqual(this.b, c1806k.b) && Intrinsics.areEqual(this.c, c1806k.c) && Intrinsics.areEqual(this.f8609d, c1806k.f8609d) && Intrinsics.areEqual(this.f8610e, c1806k.f8610e) && Intrinsics.areEqual(this.f8611f, c1806k.f8611f) && Intrinsics.areEqual(this.f8612g, c1806k.f8612g) && Intrinsics.areEqual(this.h, c1806k.h) && Intrinsics.areEqual(this.i, c1806k.i) && Intrinsics.areEqual(this.j, c1806k.j) && Intrinsics.areEqual(this.k, c1806k.k) && Intrinsics.areEqual(this.l, c1806k.l) && Intrinsics.areEqual(this.m, c1806k.m);
    }

    public final g f() {
        return this.f8610e;
    }

    public final h g() {
        return this.k;
    }

    public final SyncConfiguration h() {
        return this.f8611f;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.f8609d.hashCode()) * 31) + this.f8610e.hashCode()) * 31) + this.f8611f.hashCode()) * 31) + this.f8612g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31;
        String str = this.j;
        return ((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.k.hashCode()) * 31) + this.l.hashCode()) * 31) + this.m.hashCode();
    }

    public final Map<String, Map<String, String>> i() {
        return this.f8612g;
    }

    public final i j() {
        return this.h;
    }

    public final j k() {
        return this.f8609d;
    }

    public final C0494k l() {
        return this.i;
    }

    public String toString() {
        return "AppConfiguration(app=" + this.a + ", languages=" + this.b + ", notice=" + this.c + ", underageNotice=" + this.f8609d + ", preferences=" + this.f8610e + ", sync=" + this.f8611f + ", textsConfiguration=" + this.f8612g + ", theme=" + this.h + ", user=" + this.i + ", version=" + this.j + ", regulation=" + this.k + ", integrations=" + this.l + ", featureFlags=" + this.m + ')';
    }
}
