package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002\u0012\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\"\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0016R\"\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0016R\"\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u0016R\"\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0016R'\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u0018\u0010\u001dR'\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u001c\u001a\u0004\b\u001a\u0010\u001dR'\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u001c\u001a\u0004\b\u0017\u0010\u001dR'\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u001c\u001a\u0004\b\u0019\u0010\u001dR'\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001c\u001a\u0004\b\u0015\u0010\u001d¨\u0006'"}, d2 = {"Lio/didomi/sdk/Y4;", "", "", "", "Lio/didomi/sdk/A;", "configPurposes", "internalSpecialPurposes", "internalFeatures", "internalSpecialFeatures", "internalDataCategories", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "Lkotlin/Lazy;", "()Ljava/util/Map;", Didomi.VIEW_PURPOSES, "g", "specialPurposes", "h", "features", "i", "specialFeatures", "j", "dataCategories", "android_release"}, mv = {1, 8, 0})
public final class Y4 {

    @com.google.gson.r.c(Didomi.VIEW_PURPOSES)
    private final Map<String, ConfigPurpose> a;

    @com.google.gson.r.c("specialPurposes")
    private final Map<String, ConfigPurpose> b;

    @com.google.gson.r.c("features")
    private final Map<String, ConfigPurpose> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.gson.r.c("specialFeatures")
    private final Map<String, ConfigPurpose> f8455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @com.google.gson.r.c("dataCategories")
    private final Map<String, ConfigPurpose> f8456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f8457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f8458g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = Y4.this.f8456e;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = Y4.this.c;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = Y4.this.a;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = Y4.this.f8455d;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "", "Lio/didomi/sdk/A;", "a", "()Ljava/util/Map;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Map<String, ? extends ConfigPurpose>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map<String, ConfigPurpose> invoke() {
            Map<String, ConfigPurpose> map = Y4.this.b;
            return map == null ? MapsKt__MapsKt.emptyMap() : map;
        }
    }

    public Y4() {
        this(null, null, null, null, null, 31, null);
    }

    public Y4(Map<String, ConfigPurpose> map, Map<String, ConfigPurpose> map2, Map<String, ConfigPurpose> map3, Map<String, ConfigPurpose> map4, Map<String, ConfigPurpose> map5) {
        this.a = map;
        this.b = map2;
        this.c = map3;
        this.f8455d = map4;
        this.f8456e = map5;
        this.f8457f = LazyKt__LazyJVMKt.lazy(new c());
        this.f8458g = LazyKt__LazyJVMKt.lazy(new e());
        this.h = LazyKt__LazyJVMKt.lazy(new b());
        this.i = LazyKt__LazyJVMKt.lazy(new d());
        this.j = LazyKt__LazyJVMKt.lazy(new a());
    }

    public /* synthetic */ Y4(Map map, Map map2, Map map3, Map map4, Map map5, int i, n nVar) {
        this((i & 1) != 0 ? null : map, (i & 2) != 0 ? null : map2, (i & 4) != 0 ? null : map3, (i & 8) != 0 ? null : map4, (i & 16) != 0 ? null : map5);
    }

    public final Map<String, ConfigPurpose> a() {
        return (Map) this.j.getValue();
    }

    public final Map<String, ConfigPurpose> b() {
        return (Map) this.h.getValue();
    }

    public final Map<String, ConfigPurpose> c() {
        return (Map) this.f8457f.getValue();
    }

    public final Map<String, ConfigPurpose> d() {
        return (Map) this.i.getValue();
    }

    public final Map<String, ConfigPurpose> e() {
        return (Map) this.f8458g.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Y4)) {
            return false;
        }
        Y4 y4 = (Y4) obj;
        return Intrinsics.areEqual(this.a, y4.a) && Intrinsics.areEqual(this.b, y4.b) && Intrinsics.areEqual(this.c, y4.c) && Intrinsics.areEqual(this.f8455d, y4.f8455d) && Intrinsics.areEqual(this.f8456e, y4.f8456e);
    }

    public int hashCode() {
        Map<String, ConfigPurpose> map = this.a;
        int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
        Map<String, ConfigPurpose> map2 = this.b;
        int iHashCode2 = (iHashCode + (map2 == null ? 0 : map2.hashCode())) * 31;
        Map<String, ConfigPurpose> map3 = this.c;
        int iHashCode3 = (iHashCode2 + (map3 == null ? 0 : map3.hashCode())) * 31;
        Map<String, ConfigPurpose> map4 = this.f8455d;
        int iHashCode4 = (iHashCode3 + (map4 == null ? 0 : map4.hashCode())) * 31;
        Map<String, ConfigPurpose> map5 = this.f8456e;
        return iHashCode4 + (map5 != null ? map5.hashCode() : 0);
    }

    public String toString() {
        return "PurposesTranslations(configPurposes=" + this.a + ", internalSpecialPurposes=" + this.b + ", internalFeatures=" + this.c + ", internalSpecialFeatures=" + this.f8455d + ", internalDataCategories=" + this.f8456e + ')';
    }
}
