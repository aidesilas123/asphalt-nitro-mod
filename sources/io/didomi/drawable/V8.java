package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.models.DataCategory;
import io.didomi.drawable.models.Feature;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.SpecialPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
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
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0019\u0018\u0000 N2\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u000e¢\u0006\u0004\b\u0017\u0010\u0015J!\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00130\u00182\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00182\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0011\u0010\u001eJ\u0017\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b \u0010!J\u0017\u0010\"\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\"\u0010#J!\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00182\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0018¢\u0006\u0004\b\u0011\u0010\u001bJ\u001b\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020%0\u00182\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u0014\u0010\u001eJ\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020&0\u00182\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001a\u0010\u001eJ\u0017\u0010\u001a\u001a\u0004\u0018\u00010&2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u001a\u0010'J\u001b\u0010\u0014\u001a\u00020\n2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00130\u0018¢\u0006\u0004\b\u0014\u0010)J\r\u0010*\u001a\u00020\n¢\u0006\u0004\b*\u0010\fJ\u0019\u0010+\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0000¢\u0006\u0004\b+\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010-R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010.R#\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00130/8\u0006¢\u0006\f\n\u0004\b\u0017\u00100\u001a\u0004\b \u00101R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00020\u001c038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00104R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00106R#\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001c0/8\u0006¢\u0006\f\n\u0004\b\"\u00100\u001a\u0004\b8\u00101R\u001a\u0010;\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00106R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020<038\u0006¢\u0006\f\n\u0004\b=\u00104\u001a\u0004\b\u0017\u0010>R\u001d\u0010C\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188\u0006¢\u0006\f\n\u0004\b@\u00106\u001a\u0004\bA\u0010BR\u001d\u0010E\u001a\b\u0012\u0004\u0012\u00020\u00130\u00188\u0006¢\u0006\f\n\u0004\bD\u00106\u001a\u0004\bD\u0010BR\u001d\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00100\u00188\u0006¢\u0006\f\n\u0004\bF\u00106\u001a\u0004\bG\u0010BR\u001d\u0010K\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00188\u0006¢\u0006\f\n\u0004\bI\u00106\u001a\u0004\bJ\u0010BR\u001d\u0010O\u001a\b\u0012\u0004\u0012\u00020L038\u0006¢\u0006\f\n\u0004\bM\u00104\u001a\u0004\bN\u0010>R!\u0010R\u001a\b\u0012\u0004\u0012\u00020L038FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bP\u0010Q\u001a\u0004\b+\u0010>R\u0017\u0010W\u001a\u00020S8\u0006¢\u0006\f\n\u0004\bT\u0010U\u001a\u0004\b:\u0010VR\u001b\u0010[\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bA\u0010Q\u001a\u0004\bY\u0010ZR\u001b\u0010]\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\\\u0010Q\u001a\u0004\b\u0011\u0010ZR\u001b\u0010_\u001a\u00020X8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b^\u0010Q\u001a\u0004\b\u0014\u0010ZR!\u0010a\u001a\b\u0012\u0004\u0012\u00020&0\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010Q\u001a\u0004\b\u001a\u0010BR\u0017\u0010b\u001a\b\u0012\u0004\u0012\u00020%0\u00188F¢\u0006\u0006\u001a\u0004\b\"\u0010BR\u0017\u0010c\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\b=\u0010BR\u0017\u0010d\u001a\b\u0012\u0004\u0012\u00020\u00130\u00188F¢\u0006\u0006\u001a\u0004\bF\u0010BR\u0017\u0010e\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\bI\u0010BR\u0017\u0010f\u001a\b\u0012\u0004\u0012\u00020\u00130\u00188F¢\u0006\u0006\u001a\u0004\bM\u0010BR\u0017\u0010g\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\b@\u0010BR\u0017\u0010h\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\b^\u0010BR\u0017\u0010i\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188F¢\u0006\u0006\u001a\u0004\b\\\u0010BR\u0017\u0010j\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\bP\u0010BR\u0017\u0010k\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188F¢\u0006\u0006\u001a\u0004\b`\u0010BR\u0017\u0010l\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\bT\u0010BR\u0017\u0010n\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\bm\u0010BR\u0017\u0010p\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00188F¢\u0006\u0006\u001a\u0004\bo\u0010B¨\u0006q"}, d2 = {"Lio/didomi/sdk/V8;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/Z4;", "purposesTranslationsRepository", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)V", "", "A", "()V", "y", "", "id", "Lio/didomi/sdk/models/Feature;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)Lio/didomi/sdk/models/Feature;", "Lio/didomi/sdk/models/InternalPurpose;", "c", "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;", "iabId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "purposeIds", "a", "(Ljava/util/Set;)Ljava/util/Set;", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "(Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;", "Lio/didomi/sdk/models/SpecialPurpose;", InneractiveMediationDefs.GENDER_FEMALE, "(Ljava/lang/String;)Lio/didomi/sdk/models/SpecialPurpose;", "g", "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;", "vendorIds", "Lio/didomi/sdk/o0;", "Lio/didomi/sdk/models/DataCategory;", "(Ljava/lang/String;)Lio/didomi/sdk/models/DataCategory;", "essentialPurposes", "(Ljava/util/Set;)V", "z", "e", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/v3;", "Lio/didomi/sdk/Z4;", "", "Ljava/util/Map;", "()Ljava/util/Map;", Didomi.VIEW_PURPOSES, "", "Ljava/util/List;", "didomiVendors", "Ljava/util/Set;", "customVendors", "getVendors", Didomi.VIEW_VENDORS, "h", "nonFilteredRequiredVendors", "Lio/didomi/sdk/k4;", "i", "()Ljava/util/List;", "publisherRestrictions", "j", CampaignEx.JSON_KEY_AD_Q, "()Ljava/util/Set;", "requiredVendors", CampaignEx.JSON_KEY_AD_K, "requiredPurposes", "l", "getRequiredFeatures", "requiredFeatures", InneractiveMediationDefs.GENDER_MALE, "getRequiredSpecialPurposes", "requiredSpecialPurposes", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", b4.p, "u", "spiCategories", "o", "Lkotlin/Lazy;", "purposeCategories", "Lio/didomi/sdk/r5;", TtmlNode.TAG_P, "Lio/didomi/sdk/r5;", "()Lio/didomi/sdk/r5;", "requiredIds", "", "v", "()I", "totalVendorCount", "r", "iabVendorCount", "s", "nonIabVendorCount", "t", "dataCategories", "requiredAdditionalDataProcessing", "requiredPurposeIds", "requiredPurposesConsent", "requiredPurposesConsentIds", "requiredPurposesLegInt", "requiredPurposeLegIntIds", "requiredVendorsIds", "requiredVendorsConsent", "requiredVendorConsentIds", "requiredVendorsLegInt", "requiredVendorLegIntIds", "w", "vendorIDsWithEssentialPurposesOnly", "x", "vendorIDsWithNoConsentNorLIPurposes", "android_release"}, mv = {1, 8, 0})
public final class V8 {
    public static final a u = new a(null);
    private final H a;
    private final C1920v3 b;
    private final Z4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, InternalPurpose> f8429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<InternalVendor> f8430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<InternalVendor> f8431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Map<String, InternalVendor> f8432g;
    private final Set<InternalVendor> h;
    private final List<PublisherRestriction> i;
    private final Set<InternalVendor> j;
    private final Set<InternalPurpose> k;
    private final Set<Feature> l;
    private final Set<SpecialPurpose> m;
    private final List<PurposeCategory> n;
    private final Lazy o;
    private final RequiredIds p;
    private final Lazy q;
    private final Lazy r;
    private final Lazy s;
    private final Lazy t;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006¨\u0006\b"}, d2 = {"Lio/didomi/sdk/V8$a;", "", "<init>", "()V", "", "facebookId", "Ljava/lang/String;", "googleId", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/models/DataCategory;", "a", "()Ljava/util/Set;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function0<Set<? extends DataCategory>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<DataCategory> invoke() {
            Collection<ConfigPurpose> collectionValues = V8.this.a.d().e().values();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collectionValues, 10));
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                arrayList.add(B.a((ConfigPurpose) it.next()));
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class c<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((DataCategory) t).getId(), ((DataCategory) t2).getId());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Integer> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Set<InternalVendor> setQ = V8.this.q();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setQ) {
                if (((InternalVendor) obj).isIabVendor()) {
                    arrayList.add(obj);
                }
            }
            return Integer.valueOf(arrayList.size());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Integer> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            Set<InternalVendor> setQ = V8.this.q();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setQ) {
                if (!((InternalVendor) obj).isIabVendor()) {
                    arrayList.add(obj);
                }
            }
            return Integer.valueOf(arrayList.size());
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "a", "()Ljava/util/List;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<List<? extends PurposeCategory>> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<PurposeCategory> invoke() {
            return C1901t4.a(V8.this.a.b().f().e(), V8.this.i());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Integer> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke() {
            return Integer.valueOf(V8.this.q().size());
        }
    }

    public V8(H configurationRepository, C1920v3 languagesHelper, Z4 purposesTranslationsRepository) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(purposesTranslationsRepository, "purposesTranslationsRepository");
        this.a = configurationRepository;
        this.b = languagesHelper;
        this.c = purposesTranslationsRepository;
        this.f8429d = T8.a.a(configurationRepository, languagesHelper);
        List<InternalVendor> listA = configurationRepository.f().a();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listA, 10));
        for (InternalVendor internalVendor : listA) {
            arrayList.add(internalVendor.copy((786431 & 1) != 0 ? internalVendor.id : null, (786431 & 2) != 0 ? internalVendor.name : null, (786431 & 4) != 0 ? internalVendor.privacyPolicyUrl : null, (786431 & 8) != 0 ? internalVendor.namespace : null, (786431 & 16) != 0 ? internalVendor.namespaces : null, (786431 & 32) != 0 ? internalVendor.purposeIds : null, (786431 & 64) != 0 ? internalVendor.legIntPurposeIds : null, (786431 & 128) != 0 ? internalVendor.iabId : null, (786431 & 256) != 0 ? internalVendor.flexiblePurposeIds : null, (786431 & 512) != 0 ? internalVendor.specialPurposeIds : null, (786431 & 1024) != 0 ? internalVendor.featureIds : null, (786431 & 2048) != 0 ? internalVendor.specialFeatureIds : null, (786431 & 4096) != 0 ? internalVendor.cookieMaxAgeSeconds : null, (786431 & 8192) != 0 ? internalVendor.usesNonCookieAccess : false, (786431 & 16384) != 0 ? internalVendor.deviceStorageDisclosureUrl : null, (786431 & 32768) != 0 ? internalVendor.dataDeclaration : null, (786431 & 65536) != 0 ? internalVendor.dataRetention : null, (786431 & 131072) != 0 ? internalVendor.urls : null, (786431 & 262144) != 0 ? internalVendor.didomiId : internalVendor.getId(), (786431 & 524288) != 0 ? internalVendor.deletedDate : null));
        }
        this.f8430e = arrayList;
        Set<InternalVendor> setA = C1816l.a(this.a.b().a().m());
        this.f8431f = setA;
        T8 t8 = T8.a;
        Map<String, InternalVendor> mapA = t8.a(this.f8429d, C1816l.b(this.a.b()), this.a.d().a().values(), arrayList, setA);
        this.f8432g = mapA;
        Set<InternalVendor> setA2 = t8.a(mapA, I.d(this.a), this.a.b().a().m().d(), this.a.b().a().m().b(), setA);
        this.h = setA2;
        this.i = t8.a(this.a, this.f8429d, setA2);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : setA2) {
            if (C1870q3.a((InternalVendor) obj)) {
                arrayList2.add(obj);
            }
        }
        Set<InternalVendor> set = CollectionsKt___CollectionsKt.toSet(arrayList2);
        W8.b(this, set);
        this.j = set;
        T8 t82 = T8.a;
        this.k = t82.a(this.f8429d, set);
        this.l = t82.a(this.a, set);
        this.m = t82.b(this.a, set);
        this.n = t82.a(this.a.b().f().f(), i());
        this.o = LazyKt__LazyJVMKt.lazy(new f());
        this.p = new RequiredIds(m(), j(), o(), p());
        this.q = LazyKt__LazyJVMKt.lazy(new g());
        this.r = LazyKt__LazyJVMKt.lazy(new d());
        this.s = LazyKt__LazyJVMKt.lazy(new e());
        this.t = LazyKt__LazyJVMKt.lazy(new b());
        z();
    }

    private final void A() {
        this.b.a(v(), b(), c());
    }

    private final Set<DataCategory> a() {
        return (Set) this.t.getValue();
    }

    private final void y() {
        Y4 y4C = this.c.c();
        if (y4C == null) {
            return;
        }
        Collection<InternalPurpose> collectionValues = this.f8429d.values();
        ArrayList<InternalPurpose> arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            String iabId = ((InternalPurpose) obj).getIabId();
            if (iabId != null && iabId.length() != 0) {
                arrayList.add(obj);
            }
        }
        for (InternalPurpose internalPurpose : arrayList) {
            String iabId2 = internalPurpose.getIabId();
            Intrinsics.checkNotNull(iabId2, "null cannot be cast to non-null type kotlin.String");
            ConfigPurpose configPurpose = internalPurpose.isSpecialFeature() ? y4C.d().get(iabId2) : y4C.c().get(iabId2);
            if (configPurpose != null) {
                C1887s0.a(internalPurpose, configPurpose);
            }
        }
        C1887s0.a(this.l, y4C.b());
        C1887s0.a(this.m, y4C.e());
        C1887s0.a(a(), y4C.a());
    }

    public final DataCategory a(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = a().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((DataCategory) next).getId(), id)) {
                break;
            }
        }
        return (DataCategory) next;
    }

    public final Set<DataCategory> a(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Set<DataCategory> setA = a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setA) {
            DataCategory dataCategory = (DataCategory) obj;
            Set<String> dataDeclaration = vendor.getDataDeclaration();
            if (dataDeclaration != null && dataDeclaration.contains(dataCategory.getId())) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(CollectionsKt___CollectionsKt.sortedWith(arrayList, new c()));
    }

    public final Set<InternalPurpose> a(Set<String> purposeIds) {
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = purposeIds.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeC = c((String) it.next());
            if (internalPurposeC != null) {
                arrayList.add(internalPurposeC);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final int b() {
        return ((Number) this.r.getValue()).intValue();
    }

    public final Feature b(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.l.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((Feature) next).getId(), id)) {
                break;
            }
        }
        return (Feature) next;
    }

    public final Set<InternalPurpose> b(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        List<String> essentialPurposeIds = vendor.getEssentialPurposeIds();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = essentialPurposeIds.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeC = c((String) it.next());
            if (internalPurposeC != null) {
                arrayList.add(internalPurposeC);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalVendor> b(Set<String> vendorIds) {
        Intrinsics.checkNotNullParameter(vendorIds, "vendorIds");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = vendorIds.iterator();
        while (it.hasNext()) {
            InternalVendor internalVendorG = g((String) it.next());
            if (internalVendorG != null) {
                arrayList.add(internalVendorG);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final int c() {
        return ((Number) this.s.getValue()).intValue();
    }

    public final InternalPurpose c(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.f8429d.get(id);
    }

    public final Set<InterfaceC1847o0> c(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<String> featureIds = vendor.getFeatureIds();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = featureIds.iterator();
        while (it.hasNext()) {
            Feature featureB = b((String) it.next());
            if (featureB != null) {
                arrayList.add(featureB);
            }
        }
        linkedHashSet.addAll(arrayList);
        List<String> specialFeatureIds = vendor.getSpecialFeatureIds();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = specialFeatureIds.iterator();
        while (it2.hasNext()) {
            InternalPurpose internalPurposeE = e((String) it2.next());
            if (internalPurposeE != null) {
                arrayList2.add(internalPurposeE);
            }
        }
        linkedHashSet.addAll(arrayList2);
        List<String> specialPurposeIds = vendor.getSpecialPurposeIds();
        ArrayList arrayList3 = new ArrayList();
        Iterator<T> it3 = specialPurposeIds.iterator();
        while (it3.hasNext()) {
            SpecialPurpose specialPurposeF = f((String) it3.next());
            if (specialPurposeF != null) {
                arrayList3.add(specialPurposeF);
            }
        }
        linkedHashSet.addAll(arrayList3);
        return linkedHashSet;
    }

    public final void c(Set<InternalPurpose> essentialPurposes) {
        Intrinsics.checkNotNullParameter(essentialPurposes, "essentialPurposes");
        for (InternalPurpose internalPurpose : essentialPurposes) {
            internalPurpose.setEssential(true);
            String id = internalPurpose.getId();
            for (InternalVendor internalVendor : this.j) {
                boolean zRemove = internalVendor.getPurposeIds().remove(id);
                boolean zRemove2 = internalVendor.getLegIntPurposeIds().remove(id);
                if (zRemove || zRemove2) {
                    internalVendor.getEssentialPurposeIds().add(id);
                }
            }
        }
    }

    public final InternalPurpose d(String iabId) {
        Object next;
        Intrinsics.checkNotNullParameter(iabId, "iabId");
        Collection<InternalPurpose> collectionValues = this.f8429d.values();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionValues) {
            if (!((InternalPurpose) obj).isSpecialFeature()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((InternalPurpose) next).getIabId(), iabId)) {
                break;
            }
        }
        return (InternalPurpose) next;
    }

    public final List<PublisherRestriction> d() {
        return this.i;
    }

    public final InternalPurpose e(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.f8429d.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            InternalPurpose internalPurpose = (InternalPurpose) next;
            if (internalPurpose.isSpecialFeature() && Intrinsics.areEqual(internalPurpose.getIabId(), id)) {
                break;
            }
        }
        return (InternalPurpose) next;
    }

    public final List<PurposeCategory> e() {
        return (List) this.o.getValue();
    }

    public final SpecialPurpose f(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.m.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((SpecialPurpose) next).getId(), id)) {
                break;
            }
        }
        return (SpecialPurpose) next;
    }

    public final Map<String, InternalPurpose> f() {
        return this.f8429d;
    }

    public final InternalVendor g(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return C1870q3.b(this.f8432g, id);
    }

    public final Set<InterfaceC1847o0> g() {
        return SetsKt___SetsKt.plus((Set) this.m, (Iterable) this.l);
    }

    public final RequiredIds h() {
        return this.p;
    }

    public final Set<String> i() {
        Set<InternalPurpose> set = this.k;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalPurpose) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> j() {
        Set<InternalPurpose> setN = n();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setN, 10));
        Iterator<T> it = setN.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalPurpose) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalPurpose> k() {
        return this.k;
    }

    public final Set<InternalPurpose> l() {
        Set<InternalPurpose> set = this.k;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (((InternalPurpose) obj).isConsentNotEssential()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> m() {
        Set<InternalPurpose> setL = l();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setL, 10));
        Iterator<T> it = setL.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalPurpose) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalPurpose> n() {
        Set<InternalPurpose> set = this.k;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (((InternalPurpose) obj).isLegitimateInterestNotEssential()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> o() {
        Set<InternalVendor> setR = r();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setR, 10));
        Iterator<T> it = setR.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalVendor) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> p() {
        Set<InternalVendor> setT = t();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setT, 10));
        Iterator<T> it = setT.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalVendor) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalVendor> q() {
        return this.j;
    }

    public final Set<InternalVendor> r() {
        Set<InternalVendor> set = this.j;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (!((InternalVendor) obj).getPurposeIds().isEmpty()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<String> s() {
        Set<InternalVendor> set = this.j;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalVendor) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalVendor> t() {
        Set<InternalVendor> set = this.j;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (!((InternalVendor) obj).getLegIntPurposeIds().isEmpty()) {
                arrayList.add(obj);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final List<PurposeCategory> u() {
        return this.n;
    }

    public final int v() {
        return ((Number) this.q.getValue()).intValue();
    }

    public final Set<String> w() {
        Set<InternalVendor> set = this.j;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (C1870q3.b((InternalVendor) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((InternalVendor) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList2);
    }

    public final Set<String> x() {
        Set<InternalVendor> set = this.j;
        ArrayList arrayList = new ArrayList();
        for (Object obj : set) {
            if (C1870q3.c((InternalVendor) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((InternalVendor) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList2);
    }

    public final void z() {
        for (CustomPurpose customPurpose : this.a.b().a().c()) {
            String id = customPurpose.getId();
            Map<String, String> mapComponent2 = customPurpose.component2();
            Map<String, String> mapComponent3 = customPurpose.component3();
            InternalPurpose internalPurpose = this.f8429d.get(id);
            if (internalPurpose != null) {
                internalPurpose.setName(C1920v3.a(this.b, mapComponent2, null, 2, null));
                internalPurpose.setDescription(C1920v3.a(this.b, mapComponent3, null, 2, null));
            }
        }
        y();
        A();
    }
}
