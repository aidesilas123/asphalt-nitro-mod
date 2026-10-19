package io.didomi.drawable;

import androidx.core.app.FrameMetricsAggregator;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import io.didomi.drawable.models.InternalVendor;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.f3, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B»\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0016\b\u0002\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010\u0013R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b \u0010!R(\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010!\u001a\u0004\b#\u0010$R(\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b%\u0010!\u001a\u0004\b&\u0010$R\"\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b'\u0010!R\"\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b(\u0010!R\"\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b#\u0010!R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b&\u0010\u001cR\u001b\u0010,\u001a\u00020\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\u0015R'\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b-\u0010*\u001a\u0004\b(\u0010$R'\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020/0\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b0\u0010*\u001a\u0004\b\u001b\u0010$R'\u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b2\u0010*\u001a\u0004\b \u0010$R'\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b4\u0010*\u001a\u0004\b\u001d\u0010$R'\u00107\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b6\u0010*\u001a\u0004\b\"\u0010$R'\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b8\u0010*\u001a\u0004\b%\u0010$R\u001b\u0010<\u001a\u00020\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b:\u0010*\u001a\u0004\b;\u0010\u0015R\u001d\u0010A\u001a\u0004\u0018\u00010=8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b>\u0010*\u001a\u0004\b?\u0010@R\"\u0010E\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bB\u0010C\u001a\u0004\b'\u0010\u0015\"\u0004\b\u001b\u0010D¨\u0006F"}, d2 = {"Lio/didomi/sdk/f3;", "Lio/didomi/sdk/d3;", "", "internalVersion", "", "lastUpdated", "", "Lio/didomi/sdk/A;", "internalFeatures", "configPurposes", "internalSpecialFeatures", "Lio/didomi/sdk/C;", "configVendors", "internalSpecialPurposes", "internalDataCategories", "internalTcfPolicyVersion", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/Integer;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getLastUpdated", "c", "Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "h", "()Ljava/util/Map;", "e", "i", InneractiveMediationDefs.GENDER_FEMALE, "g", "j", "Lkotlin/Lazy;", MobileAdsBridge.versionMethodName, "version", CampaignEx.JSON_KEY_AD_K, "features", "Lio/didomi/sdk/models/InternalVendor;", "l", Didomi.VIEW_VENDORS, InneractiveMediationDefs.GENDER_MALE, Didomi.VIEW_PURPOSES, b4.p, "specialFeatures", "o", "specialPurposes", TtmlNode.TAG_P, "dataCategories", CampaignEx.JSON_KEY_AD_Q, "getTcfPolicyVersion", "tcfPolicyVersion", "Ljava/util/Date;", "r", "getLastUpdatedDate", "()Ljava/util/Date;", "lastUpdatedDate", "s", "I", "(I)V", "maxVendorId", "android_release"}, mv = {1, 8, 0})
public final class C1760f3 implements InterfaceC1740d3 {

    @com.google.gson.r.c("vendorListVersion")
    private final Integer a;

    @com.google.gson.r.c("lastUpdated")
    private final String b;

    @com.google.gson.r.c("features")
    private final Map<String, ConfigPurpose> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.gson.r.c(Didomi.VIEW_PURPOSES)
    private final Map<String, ConfigPurpose> f8549d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @com.google.gson.r.c("specialFeatures")
    private final Map<String, ConfigPurpose> f8550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @com.google.gson.r.c(Didomi.VIEW_VENDORS)
    private final Map<String, ConfigVendor> f8551f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @com.google.gson.r.c("specialPurposes")
    private final Map<String, ConfigPurpose> f8552g;

    @com.google.gson.r.c("dataCategories")
    private final Map<String, ConfigPurpose> h;

    @com.google.gson.r.c("tcfPolicyVersion")
    private final Integer i;
    private final Lazy j;
    private final Lazy k;
    private final Lazy l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    private final Lazy p;
    private final Lazy q;
    private final Lazy r;
    private int s;

    /* JADX INFO: renamed from: io.didomi.sdk.f3$a */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = C1760f3.this.h;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$b */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = C1760f3.this.c;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$c */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ljava/util/Date;", "a", "()Ljava/util/Date;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Date> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Date invoke() {
            return C1750e3.a(C1760f3.this);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$d */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> mapH = C1760f3.this.h();
            return mapH == null ? MapsKt__MapsKt.emptyMap() : mapH;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$e */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> mapI = C1760f3.this.i();
            return mapI == null ? MapsKt__MapsKt.emptyMap() : mapI;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$f */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = C1760f3.this.f8552g;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$g */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Integer> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Integer num = C1760f3.this.i;
            return Integer.valueOf(num != null ? num.intValue() : 2);
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$h */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/models/InternalVendor;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Map<String, ? extends InternalVendor>> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, InternalVendor> invoke() {
            Map map = C1760f3.this.f8551f;
            if (map == null) {
                return MapsKt__MapsKt.emptyMap();
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(map.size()));
            for (Map.Entry entry : map.entrySet()) {
                linkedHashMap.put(entry.getKey(), D.a((ConfigVendor) entry.getValue()));
            }
            return linkedHashMap;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.f3$i */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<Integer> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Integer num = C1760f3.this.a;
            return Integer.valueOf(num != null ? num.intValue() : 0);
        }
    }

    public C1760f3() {
        this(null, null, null, null, null, null, null, null, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public C1760f3(Integer num, String str, Map<String, ConfigPurpose> map, Map<String, ConfigPurpose> map2, Map<String, ConfigPurpose> map3, Map<String, ConfigVendor> map4, Map<String, ConfigPurpose> map5, Map<String, ConfigPurpose> map6, Integer num2) {
        this.a = num;
        this.b = str;
        this.c = map;
        this.f8549d = map2;
        this.f8550e = map3;
        this.f8551f = map4;
        this.f8552g = map5;
        this.h = map6;
        this.i = num2;
        this.j = LazyKt__LazyJVMKt.lazy(new i());
        this.k = LazyKt__LazyJVMKt.lazy(new b());
        this.l = LazyKt__LazyJVMKt.lazy(new h());
        this.m = LazyKt__LazyJVMKt.lazy(new d());
        this.n = LazyKt__LazyJVMKt.lazy(new e());
        this.o = LazyKt__LazyJVMKt.lazy(new f());
        this.p = LazyKt__LazyJVMKt.lazy(new a());
        this.q = LazyKt__LazyJVMKt.lazy(new g());
        this.r = LazyKt__LazyJVMKt.lazy(new c());
    }

    public /* synthetic */ C1760f3(Integer num, String str, Map map, Map map2, Map map3, Map map4, Map map5, Map map6, Integer num2, int i2, n nVar) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : map, (i2 & 8) != 0 ? null : map2, (i2 & 16) != 0 ? null : map3, (i2 & 32) != 0 ? null : map4, (i2 & 64) != 0 ? null : map5, (i2 & 128) != 0 ? null : map6, (i2 & 256) == 0 ? num2 : null);
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, InternalVendor> a() {
        return (Map) this.l.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public void a(int i2) {
        this.s = i2;
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, ConfigPurpose> b() {
        return (Map) this.n.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, ConfigPurpose> c() {
        return (Map) this.m.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, ConfigPurpose> d() {
        return (Map) this.o.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, ConfigPurpose> e() {
        return (Map) this.p.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1760f3)) {
            return false;
        }
        C1760f3 c1760f3 = (C1760f3) obj;
        return Intrinsics.areEqual(this.a, c1760f3.a) && Intrinsics.areEqual(this.b, c1760f3.b) && Intrinsics.areEqual(this.c, c1760f3.c) && Intrinsics.areEqual(this.f8549d, c1760f3.f8549d) && Intrinsics.areEqual(this.f8550e, c1760f3.f8550e) && Intrinsics.areEqual(this.f8551f, c1760f3.f8551f) && Intrinsics.areEqual(this.f8552g, c1760f3.f8552g) && Intrinsics.areEqual(this.h, c1760f3.h) && Intrinsics.areEqual(this.i, c1760f3.i);
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public int f() {
        return this.s;
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public Map<String, ConfigPurpose> g() {
        return (Map) this.k.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public String getLastUpdated() {
        return this.b;
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public int getTcfPolicyVersion() {
        return ((Number) this.q.getValue()).intValue();
    }

    @Override // io.didomi.drawable.InterfaceC1740d3
    public int getVersion() {
        return ((Number) this.j.getValue()).intValue();
    }

    public final Map<String, ConfigPurpose> h() {
        return this.f8549d;
    }

    public int hashCode() {
        Integer num = this.a;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Map<String, ConfigPurpose> map = this.c;
        int iHashCode3 = (iHashCode2 + (map == null ? 0 : map.hashCode())) * 31;
        Map<String, ConfigPurpose> map2 = this.f8549d;
        int iHashCode4 = (iHashCode3 + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, ConfigPurpose> map3 = this.f8550e;
        int iHashCode5 = (iHashCode4 + (map3 == null ? 0 : map3.hashCode())) * 31;
        Map<String, ConfigVendor> map4 = this.f8551f;
        int iHashCode6 = (iHashCode5 + (map4 == null ? 0 : map4.hashCode())) * 31;
        Map<String, ConfigPurpose> map5 = this.f8552g;
        int iHashCode7 = (iHashCode6 + (map5 == null ? 0 : map5.hashCode())) * 31;
        Map<String, ConfigPurpose> map6 = this.h;
        int iHashCode8 = (iHashCode7 + (map6 == null ? 0 : map6.hashCode())) * 31;
        Integer num2 = this.i;
        return iHashCode8 + (num2 != null ? num2.hashCode() : 0);
    }

    public final Map<String, ConfigPurpose> i() {
        return this.f8550e;
    }

    public String toString() {
        return "IABConfigurationTCFV2(internalVersion=" + this.a + ", lastUpdated=" + this.b + ", internalFeatures=" + this.c + ", configPurposes=" + this.f8549d + ", internalSpecialFeatures=" + this.f8550e + ", configVendors=" + this.f8551f + ", internalSpecialPurposes=" + this.f8552g + ", internalDataCategories=" + this.h + ", internalTcfPolicyVersion=" + this.i + ')';
    }
}
