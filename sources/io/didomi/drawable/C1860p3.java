package io.didomi.drawable;

import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.SpecialFeature;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: renamed from: io.didomi.sdk.p3, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u001f\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0004*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u001d\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\t0\b*\b\u0012\u0004\u0012\u00020\u00000\u0007¢\u0006\u0004\b\u0002\u0010\n\u001a!\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00000\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u0002\u0010\f\u001a!\u0010\u0002\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00000\u00072\b\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0002\u0010\u000e\u001a\u001f\u0010\u0005\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00000\u000f2\u0006\u0010\u000b\u001a\u00020\u0000¢\u0006\u0004\b\u0005\u0010\f\u001a\u0017\u0010\u0002\u001a\u00020\u0011*\b\u0012\u0004\u0012\u00020\u00000\u0010¢\u0006\u0004\b\u0002\u0010\u0012\u001a9\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00000\u0017*\b\u0012\u0004\u0012\u00020\u00000\u00072\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00000\u00132\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0002\u0010\u0018\u001a7\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00000\u0013*\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00000\u00132\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0007¢\u0006\u0004\b\u0002\u0010\u001b\u001a\u001d\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d*\b\u0012\u0004\u0012\u00020\u00000\u001c¢\u0006\u0004\b\u0002\u0010\u001f¨\u0006 "}, d2 = {"Lio/didomi/sdk/models/InternalPurpose;", "", "a", "(Lio/didomi/sdk/models/InternalPurpose;)Z", "Lio/didomi/sdk/Purpose;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/Purpose;", "", "", "", "(Ljava/util/Collection;)Ljava/util/Set;", "purpose", "(Ljava/util/Collection;Lio/didomi/sdk/models/InternalPurpose;)Z", "purposeId", "(Ljava/util/Collection;Ljava/lang/String;)Z", "", "", "", "(Ljava/util/List;)V", "", "availablePurposes", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "", "(Ljava/util/Collection;Ljava/util/Map;Lio/didomi/sdk/models/InternalVendor;)Ljava/util/Set;", "Lio/didomi/sdk/models/SpecialFeature;", "specialFeatures", "(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;", "", "", "", "(Ljava/lang/Iterable;)Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class C1860p3 {

    /* JADX INFO: renamed from: io.didomi.sdk.p3$a */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            String name = ((InternalPurpose) t).getName();
            Normalizer.Form form = Normalizer.Form.NFD;
            return ComparisonsKt__ComparisonsKt.compareValues(Normalizer.normalize(name, form), Normalizer.normalize(((InternalPurpose) t2).getName(), form));
        }
    }

    public static final List<Integer> a(Iterable<InternalPurpose> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        ArrayList arrayList = new ArrayList();
        for (InternalPurpose internalPurpose : iterable) {
            Integer numValueOf = null;
            try {
                String iabId = internalPurpose.getIabId();
                if (iabId != null) {
                    numValueOf = Integer.valueOf(Integer.parseInt(iabId));
                }
            } catch (Exception e2) {
                Log.e("Invalid IAB purpose ID \"" + internalPurpose.getIabId() + "\" cannot be converted to an integer", e2);
            }
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        return CollectionsKt___CollectionsKt.distinct(arrayList);
    }

    public static final Map<String, InternalPurpose> a(Map<String, InternalPurpose> map, Collection<SpecialFeature> specialFeatures) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(specialFeatures, "specialFeatures");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(specialFeatures, 10)), 16));
        for (SpecialFeature specialFeature : specialFeatures) {
            Pair pair = TuplesKt.to(specialFeature.getId(), U5.a(specialFeature));
            linkedHashMap.put(pair.f(), pair.g());
        }
        return MapsKt__MapsKt.plus(map, linkedHashMap);
    }

    public static final Set<String> a(Collection<InternalPurpose> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((InternalPurpose) it.next()).getId());
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public static final Set<InternalPurpose> a(Collection<InternalPurpose> collection, Map<String, InternalPurpose> availablePurposes, InternalVendor vendor) {
        Object next;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        Set<InternalPurpose> mutableSet = CollectionsKt___CollectionsKt.toMutableSet(collection);
        for (String str : vendor.getSpecialFeatureIds()) {
            Iterator<T> it = availablePurposes.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                InternalPurpose internalPurpose = (InternalPurpose) next;
                if (internalPurpose.isSpecialFeature() && Intrinsics.areEqual(internalPurpose.getIabId(), str)) {
                    break;
                }
            }
            InternalPurpose internalPurpose2 = (InternalPurpose) next;
            if (internalPurpose2 != null) {
                internalPurpose2.setConsent(true);
                if (vendor.isIabVendor()) {
                    internalPurpose2.setIabConsentRequired$android_release(true);
                }
                mutableSet.add(internalPurpose2);
            }
        }
        return mutableSet;
    }

    public static final void a(List<InternalPurpose> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new a());
        }
    }

    public static final boolean a(InternalPurpose internalPurpose) {
        Intrinsics.checkNotNullParameter(internalPurpose, "<this>");
        return Intrinsics.areEqual(internalPurpose.getType$android_release(), InternalPurpose.personalDataType);
    }

    public static final boolean a(Collection<InternalPurpose> collection, InternalPurpose internalPurpose) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return a(collection, internalPurpose != null ? internalPurpose.getId() : null);
    }

    public static final boolean a(Collection<InternalPurpose> collection, String str) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        if (!collection.isEmpty()) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(((InternalPurpose) it.next()).getId(), str)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final Purpose b(InternalPurpose internalPurpose) {
        Intrinsics.checkNotNullParameter(internalPurpose, "<this>");
        return new Purpose(internalPurpose.getId(), internalPurpose.getName(), internalPurpose.getDescription());
    }

    public static final boolean b(Collection<InternalPurpose> collection, InternalPurpose purpose) {
        Object next;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Iterator<T> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((InternalPurpose) next).getId(), purpose.getId())) {
                break;
            }
        }
        InternalPurpose internalPurpose = (InternalPurpose) next;
        if (internalPurpose != null) {
            return collection.remove(internalPurpose);
        }
        return false;
    }
}
