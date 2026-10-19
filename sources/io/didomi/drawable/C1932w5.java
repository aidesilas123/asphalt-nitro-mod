package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.InterfaceC1912u5;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.SpecialFeature;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.w5, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010%\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001c\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u0019R\u001c\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001c\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00028\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u0019R.\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\u001c\u0010\"\"\u0004\b#\u0010$R.\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001f8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b&\u0010!\u001a\u0004\b\u001e\u0010\"\"\u0004\b'\u0010$R!\u0010-\u001a\b\u0012\u0004\u0012\u00020)0\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b\u001b\u0010,R!\u00100\u001a\b\u0012\u0004\u0012\u00020.0\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b\u0018\u0010,R!\u00103\u001a\b\u0012\u0004\u0012\u0002010\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b2\u0010+\u001a\u0004\b\u001a\u0010,R\u001b\u00106\u001a\u00020\b8VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b4\u0010+\u001a\u0004\b \u00105R!\u00109\u001a\b\u0012\u0004\u0012\u00020\n0\u00028VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b7\u0010+\u001a\u0004\b8\u0010,¨\u0006:"}, d2 = {"Lio/didomi/sdk/w5;", "Lio/didomi/sdk/u5;", "", "Lio/didomi/sdk/A;", "configPurposes", "Lio/didomi/sdk/C;", "configVendors", "internalSpecialFeatures", "Lio/didomi/sdk/u5$a;", "internalLanguages", "", "internalGdprCountryCodes", "<init>", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lio/didomi/sdk/u5$a;Ljava/util/List;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/u5$a;", "e", "", InneractiveMediationDefs.GENDER_FEMALE, "Ljava/util/Map;", "()Ljava/util/Map;", "setIabPurposeIdsToDidomi", "(Ljava/util/Map;)V", "iabPurposeIdsToDidomi", "g", "setDidomiPurposeIdsToIab", "didomiPurposeIdsToIab", "Lio/didomi/sdk/models/InternalPurpose;", "h", "Lkotlin/Lazy;", "()Ljava/util/List;", Didomi.VIEW_PURPOSES, "Lio/didomi/sdk/models/InternalVendor;", "i", Didomi.VIEW_VENDORS, "Lio/didomi/sdk/models/SpecialFeature;", "j", "specialFeatures", CampaignEx.JSON_KEY_AD_K, "()Lio/didomi/sdk/u5$a;", "languages", "l", "getGdprCountryCodes", "gdprCountryCodes", "android_release"}, mv = {1, 8, 0})
public final class C1932w5 implements InterfaceC1912u5 {

    @com.google.gson.r.c(Didomi.VIEW_PURPOSES)
    private final List<ConfigPurpose> a;

    @com.google.gson.r.c(Didomi.VIEW_VENDORS)
    private final List<ConfigVendor> b;

    @com.google.gson.r.c("specialFeatures")
    private final List<ConfigPurpose> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @com.google.gson.r.c("languages")
    private final InterfaceC1912u5.Languages f8798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @com.google.gson.r.c("gdprCountryCodes")
    private final List<String> f8799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f8800f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Map<String, String> f8801g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;
    private final Lazy k;
    private final Lazy l;

    /* JADX INFO: renamed from: io.didomi.sdk.w5$a */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function0<List<? extends String>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<String> invoke() {
            List<String> list = C1932w5.this.f8799e;
            return list == null ? CollectionsKt__CollectionsKt.emptyList() : list;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.w5$b */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/u5$a;", "a", "()Lio/didomi/sdk/u5$a;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<InterfaceC1912u5.Languages> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InterfaceC1912u5.Languages invoke() {
            InterfaceC1912u5.Languages languages = C1932w5.this.f8798d;
            return languages == null ? new InterfaceC1912u5.Languages(null, null, null, null, 15, null) : languages;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.w5$c */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/models/InternalPurpose;", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<List<? extends InternalPurpose>> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<InternalPurpose> invoke() {
            List<InternalPurpose> listA;
            List list = C1932w5.this.a;
            return (list == null || (listA = B.a(list)) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.w5$d */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/models/SpecialFeature;", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<List<? extends SpecialFeature>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SpecialFeature> invoke() {
            List<SpecialFeature> listB;
            List list = C1932w5.this.c;
            return (list == null || (listB = B.b(list)) == null) ? CollectionsKt__CollectionsKt.emptyList() : listB;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.w5$e */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/models/InternalVendor;", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<List<? extends InternalVendor>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<InternalVendor> invoke() {
            List<InternalVendor> listA;
            List list = C1932w5.this.b;
            return (list == null || (listA = D.a(list)) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
        }
    }

    public C1932w5() {
        this(null, null, null, null, null, 31, null);
    }

    public C1932w5(List<ConfigPurpose> list, List<ConfigVendor> list2, List<ConfigPurpose> list3, InterfaceC1912u5.Languages languages, List<String> list4) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.f8798d = languages;
        this.f8799e = list4;
        this.f8800f = new LinkedHashMap();
        this.f8801g = new LinkedHashMap();
        this.h = LazyKt__LazyJVMKt.lazy(new c());
        this.i = LazyKt__LazyJVMKt.lazy(new e());
        this.j = LazyKt__LazyJVMKt.lazy(new d());
        this.k = LazyKt__LazyJVMKt.lazy(new b());
        this.l = LazyKt__LazyJVMKt.lazy(new a());
    }

    public /* synthetic */ C1932w5(List list, List list2, List list3, InterfaceC1912u5.Languages languages, List list4, int i, n nVar) {
        this((i & 1) != 0 ? null : list, (i & 2) != 0 ? null : list2, (i & 4) != 0 ? null : list3, (i & 8) != 0 ? null : languages, (i & 16) != 0 ? null : list4);
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public List<InternalVendor> a() {
        return (List) this.i.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public List<SpecialFeature> b() {
        return (List) this.j.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public List<InternalPurpose> c() {
        return (List) this.h.getValue();
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public Map<String, String> d() {
        return this.f8800f;
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public Map<String, String> e() {
        return this.f8801g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1932w5)) {
            return false;
        }
        C1932w5 c1932w5 = (C1932w5) obj;
        return Intrinsics.areEqual(this.a, c1932w5.a) && Intrinsics.areEqual(this.b, c1932w5.b) && Intrinsics.areEqual(this.c, c1932w5.c) && Intrinsics.areEqual(this.f8798d, c1932w5.f8798d) && Intrinsics.areEqual(this.f8799e, c1932w5.f8799e);
    }

    @Override // io.didomi.drawable.InterfaceC1912u5
    public InterfaceC1912u5.Languages f() {
        return (InterfaceC1912u5.Languages) this.k.getValue();
    }

    public int hashCode() {
        List<ConfigPurpose> list = this.a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        List<ConfigVendor> list2 = this.b;
        int iHashCode2 = (iHashCode + (list2 == null ? 0 : list2.hashCode())) * 31;
        List<ConfigPurpose> list3 = this.c;
        int iHashCode3 = (iHashCode2 + (list3 == null ? 0 : list3.hashCode())) * 31;
        InterfaceC1912u5.Languages languages = this.f8798d;
        int iHashCode4 = (iHashCode3 + (languages == null ? 0 : languages.hashCode())) * 31;
        List<String> list4 = this.f8799e;
        return iHashCode4 + (list4 != null ? list4.hashCode() : 0);
    }

    public String toString() {
        return "SDKConfigurationTCFV2(configPurposes=" + this.a + ", configVendors=" + this.b + ", internalSpecialFeatures=" + this.c + ", internalLanguages=" + this.f8798d + ", internalGdprCountryCodes=" + this.f8799e + ')';
    }
}
