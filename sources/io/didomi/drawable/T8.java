package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.models.Feature;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.models.SpecialPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ+\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\u000f¢\u0006\u0004\b\u000b\u0010\u0013J_\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180\b2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b\u000b\u0010\u001cJ=\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u001e0\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f¢\u0006\u0004\b\u000b\u0010\u001fJ5\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f¢\u0006\u0004\b\u000b\u0010 J)\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f¢\u0006\u0004\b\"\u0010#J)\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020$0\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f¢\u0006\u0004\b\u000b\u0010#JS\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00180\b2\u0006\u0010&\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\t0\u000f2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u000f¢\u0006\u0004\b\u000b\u0010)¨\u0006*"}, d2 = {"Lio/didomi/sdk/T8;", "", "<init>", "()V", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "", "", "Lio/didomi/sdk/models/InternalPurpose;", "a", "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/util/Map;", "Lio/didomi/sdk/S5;", "spi", "", "availablePersonalDataIds", "", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "(Lio/didomi/sdk/S5;Ljava/util/Set;)Ljava/util/List;", "availablePurposes", "", "isTcfEnabled", "", "Lio/didomi/sdk/models/InternalVendor;", "iabVendors", "didomiVendors", "customVendors", "(Ljava/util/Map;ZLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Map;", "requiredVendors", "Lio/didomi/sdk/k4;", "(Lio/didomi/sdk/H;Ljava/util/Map;Ljava/util/Set;)Ljava/util/List;", "(Ljava/util/Map;Ljava/util/Set;)Ljava/util/Set;", "Lio/didomi/sdk/models/SpecialPurpose;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/H;Ljava/util/Set;)Ljava/util/Set;", "Lio/didomi/sdk/models/Feature;", "availableVendors", "allIABVendorsByDefault", "Lio/didomi/sdk/k$a$b$a;", "didomiVendorsID", "(Ljava/util/Map;ZLio/didomi/sdk/k$a$b$a;Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;", "android_release"}, mv = {1, 8, 0})
public final class T8 {
    public static final T8 a = new T8();

    private T8() {
    }

    public final List<PublisherRestriction> a(H configurationRepository, Map<String, InternalPurpose> availablePurposes, Set<InternalVendor> requiredVendors) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        Intrinsics.checkNotNullParameter(requiredVendors, "requiredVendors");
        C1821l4 c1821l4 = new C1821l4(configurationRepository.b().a().m().d().j(), configurationRepository.d(), availablePurposes, requiredVendors);
        c1821l4.a();
        return c1821l4.b();
    }

    public final List<PurposeCategory> a(SensitivePersonalInformation spi, Set<String> availablePersonalDataIds) {
        List<PurposeCategory> listA;
        Intrinsics.checkNotNullParameter(availablePersonalDataIds, "availablePersonalDataIds");
        List<PurposeCategory> listA2 = (spi == null || (listA = spi.a()) == null) ? null : C1901t4.a(listA, availablePersonalDataIds);
        return listA2 == null ? CollectionsKt__CollectionsKt.emptyList() : listA2;
    }

    public final Map<String, InternalPurpose> a(H configurationRepository, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        List<InternalPurpose> listC = configurationRepository.f().c();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listC, 10)), 16));
        for (Object obj : listC) {
            linkedHashMap.put(((InternalPurpose) obj).getId(), obj);
        }
        Map mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        Pattern patternCompile = Pattern.compile("^[A-Za-z\\d-_]+$");
        List<CustomPurpose> listC2 = configurationRepository.b().a().c();
        ArrayList arrayList = new ArrayList();
        for (CustomPurpose customPurpose : listC2) {
            InternalPurpose internalPurpose = null;
            if (patternCompile.matcher(customPurpose.getId()).matches()) {
                internalPurpose = new InternalPurpose(customPurpose.getId(), null, C1920v3.a(languagesHelper, customPurpose.getName(), null, 2, null), C1920v3.a(languagesHelper, customPurpose.getDescription(), null, 2, null), null, null, false, false, false, false, customPurpose.getType(), customPurpose.getNamespaces(), false, false, 13296, null);
            } else {
                Log.e$default("The custom purpose ID " + customPurpose.getId() + " is invalid. It must be a lowercase string with only alphabetical characters, numbers, - or _ ([a-z0-9-_)])", null, 2, null);
            }
            if (internalPurpose != null) {
                arrayList.add(internalPurpose);
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
        for (Object obj2 : arrayList) {
            linkedHashMap2.put(((InternalPurpose) obj2).getId(), obj2);
        }
        mutableMap.putAll(linkedHashMap2);
        return C1860p3.a((Map<String, InternalPurpose>) mutableMap, configurationRepository.f().b());
    }

    public final Map<String, InternalVendor> a(Map<String, InternalPurpose> availablePurposes, boolean isTcfEnabled, Collection<InternalVendor> iabVendors, Collection<InternalVendor> didomiVendors, Collection<InternalVendor> customVendors) {
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        Intrinsics.checkNotNullParameter(iabVendors, "iabVendors");
        Intrinsics.checkNotNullParameter(didomiVendors, "didomiVendors");
        Intrinsics.checkNotNullParameter(customVendors, "customVendors");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (InternalVendor internalVendor : iabVendors) {
            if (internalVendor.getDeletedDate() == null || !isTcfEnabled) {
                C1870q3.a(internalVendor, availablePurposes);
                linkedHashMap.put(internalVendor.getId(), internalVendor);
            }
        }
        Map<String, InternalVendor> mutableMap = MapsKt__MapsKt.toMutableMap(C1870q3.a(linkedHashMap, availablePurposes, didomiVendors));
        for (InternalVendor internalVendor2 : customVendors) {
            C1870q3.a(internalVendor2, availablePurposes);
            mutableMap.put(internalVendor2.getId(), internalVendor2);
        }
        return mutableMap;
    }

    public final Set<Feature> a(H configurationRepository, Set<InternalVendor> requiredVendors) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(requiredVendors, "requiredVendors");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = requiredVendors.iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(((InternalVendor) it.next()).getFeatureIds());
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            ConfigPurpose configPurpose = configurationRepository.d().g().get((String) it2.next());
            Feature featureB = configPurpose != null ? B.b(configPurpose) : null;
            if (featureB != null) {
                arrayList.add(featureB);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public final Set<InternalPurpose> a(Map<String, InternalPurpose> availablePurposes, Set<InternalVendor> requiredVendors) {
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        Intrinsics.checkNotNullParameter(requiredVendors, "requiredVendors");
        Set<InternalPurpose> linkedHashSet = new LinkedHashSet<>();
        for (InternalVendor internalVendor : requiredVendors) {
            boolean zIsIabVendor = internalVendor.isIabVendor();
            List<String> purposeIds = internalVendor.getPurposeIds();
            ArrayList arrayList = new ArrayList();
            for (Object obj : purposeIds) {
                if (availablePurposes.containsKey((String) obj)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (true) {
                InternalPurpose internalPurpose = null;
                if (!it.hasNext()) {
                    break;
                }
                InternalPurpose internalPurpose2 = availablePurposes.get((String) it.next());
                if (internalPurpose2 != null) {
                    internalPurpose2.setConsent(true);
                    if (zIsIabVendor) {
                        internalPurpose2.setIabConsentRequired$android_release(true);
                    }
                    internalPurpose = internalPurpose2;
                }
                if (internalPurpose != null) {
                    arrayList2.add(internalPurpose);
                }
            }
            linkedHashSet.addAll(arrayList2);
            List<String> legIntPurposeIds = internalVendor.getLegIntPurposeIds();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : legIntPurposeIds) {
                if (availablePurposes.containsKey((String) obj2)) {
                    arrayList3.add(obj2);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                InternalPurpose internalPurpose3 = availablePurposes.get((String) it2.next());
                if (internalPurpose3 != null) {
                    internalPurpose3.setLegitimateInterest(true);
                    if (zIsIabVendor) {
                        internalPurpose3.setIabLiRequired$android_release(true);
                    }
                } else {
                    internalPurpose3 = null;
                }
                if (internalPurpose3 != null) {
                    arrayList4.add(internalPurpose3);
                }
            }
            linkedHashSet.addAll(arrayList4);
            List<String> essentialPurposeIds = internalVendor.getEssentialPurposeIds();
            ArrayList arrayList5 = new ArrayList();
            for (Object obj3 : essentialPurposeIds) {
                if (availablePurposes.containsKey((String) obj3)) {
                    arrayList5.add(obj3);
                }
            }
            ArrayList arrayList6 = new ArrayList();
            Iterator it3 = arrayList5.iterator();
            while (it3.hasNext()) {
                InternalPurpose internalPurpose4 = availablePurposes.get((String) it3.next());
                if (internalPurpose4 != null) {
                    internalPurpose4.setEssential(true);
                } else {
                    internalPurpose4 = null;
                }
                if (internalPurpose4 != null) {
                    arrayList6.add(internalPurpose4);
                }
            }
            linkedHashSet.addAll(arrayList6);
            linkedHashSet = C1860p3.a(linkedHashSet, availablePurposes, internalVendor);
        }
        return linkedHashSet;
    }

    public final Set<InternalVendor> a(Map<String, InternalVendor> availableVendors, boolean allIABVendorsByDefault, C1806k.a.b.C0481a iabVendors, Set<String> didomiVendorsID, Set<InternalVendor> customVendors) {
        Intrinsics.checkNotNullParameter(availableVendors, "availableVendors");
        Intrinsics.checkNotNullParameter(iabVendors, "iabVendors");
        Intrinsics.checkNotNullParameter(didomiVendorsID, "didomiVendorsID");
        Intrinsics.checkNotNullParameter(customVendors, "customVendors");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Boolean boolA = iabVendors.a();
        if (boolA != null) {
            allIABVendorsByDefault = boolA.booleanValue();
        }
        if (allIABVendorsByDefault) {
            Collection<InternalVendor> collectionValues = availableVendors.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionValues) {
                if (((InternalVendor) obj).isIabVendor()) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : arrayList) {
                InternalVendor internalVendor = (InternalVendor) obj2;
                if (!(iabVendors.d().contains(internalVendor.getId()) || CollectionsKt___CollectionsKt.contains(iabVendors.d(), internalVendor.getIabId()))) {
                    arrayList2.add(obj2);
                }
            }
            linkedHashSet.addAll(arrayList2);
        } else {
            Set<String> setF = iabVendors.f();
            ArrayList arrayList3 = new ArrayList();
            Iterator<T> it = setF.iterator();
            while (it.hasNext()) {
                InternalVendor internalVendorB = C1870q3.b(availableVendors, (String) it.next());
                if (internalVendorB != null) {
                    arrayList3.add(internalVendorB);
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (Object obj3 : arrayList3) {
                if (!iabVendors.d().contains(((InternalVendor) obj3).getId())) {
                    arrayList4.add(obj3);
                }
            }
            linkedHashSet.addAll(arrayList4);
        }
        ArrayList arrayList5 = new ArrayList();
        Iterator<T> it2 = didomiVendorsID.iterator();
        while (it2.hasNext()) {
            InternalVendor internalVendor2 = availableVendors.get((String) it2.next());
            if (internalVendor2 != null) {
                arrayList5.add(internalVendor2);
            }
        }
        linkedHashSet.addAll(arrayList5);
        linkedHashSet.addAll(customVendors);
        return CollectionsKt___CollectionsKt.toSet(linkedHashSet);
    }

    public final Set<SpecialPurpose> b(H configurationRepository, Set<InternalVendor> requiredVendors) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(requiredVendors, "requiredVendors");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = requiredVendors.iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(((InternalVendor) it.next()).getSpecialPurposeIds());
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            ConfigPurpose configPurpose = configurationRepository.d().d().get((String) it2.next());
            SpecialPurpose specialPurposeE = configPurpose != null ? B.e(configPurpose) : null;
            if (specialPurposeE != null) {
                arrayList.add(specialPurposeE);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }
}
