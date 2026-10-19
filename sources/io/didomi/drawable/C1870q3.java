package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.Vendor;
import io.didomi.drawable.models.DeviceStorageDisclosures;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.sequences.i;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.q3, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0004\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0006\u0010\u0003\u001a\u0011\u0010\u0007\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0007\u0010\u0003\u001a\u0011\u0010\b\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\b\u0010\u0003\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\t\u0010\u0003\u001a\u0019\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000¢\u0006\u0004\b\u0005\u0010\f\u001a%\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0005\u0010\u0011\u001a\u0011\u0010\u0012\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0012\u0010\u0003\u001a\u0011\u0010\u0013\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0013\u0010\u0003\u001a\u001b\u0010\u0005\u001a\u00020\u000b*\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0005\u0010\u0016\u001a\u0019\u0010\u0005\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000e¢\u0006\u0004\b\u0005\u0010\u0018\u001a\u0019\u0010\u0002\u001a\u00020\u0001*\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u000e¢\u0006\u0004\b\u0002\u0010\u0018\u001a'\u0010\u0005\u001a\u0004\u0018\u00010\u001c*\u00020\u00002\u0012\u0010\u001b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\u001a\"\u00020\u000e¢\u0006\u0004\b\u0005\u0010\u001d\u001a\u0011\u0010\u001f\u001a\u00020\u001e*\u00020\u0000¢\u0006\u0004\b\u001f\u0010 \u001a!\u0010\u0005\u001a\u0004\u0018\u00010\u0000*\b\u0012\u0004\u0012\u00020\u00000!2\u0006\u0010\"\u001a\u00020\u000e¢\u0006\u0004\b\u0005\u0010#\u001a\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00000$*\b\u0012\u0004\u0012\u00020\u00000!¢\u0006\u0004\b\u0005\u0010%\u001a'\u0010\u0005\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\b\u0010\"\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0005\u0010&\u001a)\u0010\u0002\u001a\u0004\u0018\u00010\u0000*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\b\u0010\"\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0002\u0010'\u001aK\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00000!¢\u0006\u0004\b\u0005\u0010)\u001a)\u0010\u0005\u001a\u0004\u0018\u00010\u0000*\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00000\r2\u0006\u0010\n\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010*¨\u0006+"}, d2 = {"Lio/didomi/sdk/models/InternalVendor;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalVendor;)Z", "c", "a", "g", "e", InneractiveMediationDefs.GENDER_FEMALE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "didomiVendor", "", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)V", "", "", "Lio/didomi/sdk/models/InternalPurpose;", "availablePurposes", "(Lio/didomi/sdk/models/InternalVendor;Ljava/util/Map;)V", "h", "i", "Lio/didomi/sdk/models/DeviceStorageDisclosures;", "disclosures", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V", "purposeId", "(Lio/didomi/sdk/models/InternalVendor;Ljava/lang/String;)Z", "purposeIabId", "", "languages", "Lio/didomi/sdk/Vendor$Url;", "(Lio/didomi/sdk/models/InternalVendor;[Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;", "Lio/didomi/sdk/Vendor;", "j", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/Vendor;", "", "id", "(Ljava/util/Collection;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;", "", "(Ljava/util/Collection;)Ljava/util/List;", "(Ljava/util/Map;Ljava/lang/String;)Z", "(Ljava/util/Map;Ljava/lang/String;)Lio/didomi/sdk/models/InternalVendor;", "didomiVendors", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;", "(Ljava/util/Map;Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/models/InternalVendor;", "android_release"}, mv = {1, 8, 0})
public final class C1870q3 {

    /* JADX INFO: renamed from: io.didomi.sdk.q3$a */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "language", "Lio/didomi/sdk/Vendor$Url;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/Vendor$Url;"}, mv = {1, 8, 0})
    static final class a extends Lambda implements Function1<String, Vendor.Url> {
        final /* synthetic */ InternalVendor a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(InternalVendor internalVendor) {
            super(1);
            this.a = internalVendor;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Vendor.Url invoke(String language) {
            Intrinsics.checkNotNullParameter(language, "language");
            List<Vendor.Url> urls = this.a.getUrls();
            Object obj = null;
            if (urls == null) {
                return null;
            }
            Iterator<T> it = urls.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(((Vendor.Url) next).getLangId(), language)) {
                    obj = next;
                    break;
                }
            }
            return (Vendor.Url) obj;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.q3$b */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lio/didomi/sdk/models/InternalVendor;", "firstVendor", "secondVendor", "", "a", "(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/InternalVendor;)Ljava/lang/Integer;"}, mv = {1, 8, 0})
    static final class b extends Lambda implements Function2<InternalVendor, InternalVendor, Integer> {
        public static final b a = new b();

        b() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer invoke(InternalVendor firstVendor, InternalVendor secondVendor) {
            Intrinsics.checkNotNullParameter(firstVendor, "firstVendor");
            Intrinsics.checkNotNullParameter(secondVendor, "secondVendor");
            return Integer.valueOf(StringsKt__StringsJVMKt.compareTo(firstVendor.getName(), secondVendor.getName(), true));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int a(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    public static final Vendor.Url a(InternalVendor internalVendor, String... languages) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        Intrinsics.checkNotNullParameter(languages, "languages");
        return (Vendor.Url) i.firstOrNull(SequencesKt___SequencesKt.mapNotNull(ArraysKt___ArraysKt.asSequence(languages), new a(internalVendor)));
    }

    public static final InternalVendor a(Collection<InternalVendor> collection, String id) {
        Object next;
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            InternalVendor internalVendor = (InternalVendor) next;
            if (Intrinsics.areEqual(internalVendor.getId(), id) || (internalVendor.isIabVendor() && Intrinsics.areEqual(internalVendor.getIabId(), id))) {
                break;
            }
        }
        return (InternalVendor) next;
    }

    private static final InternalVendor a(Map<String, InternalVendor> map, InternalVendor internalVendor) {
        String iab2;
        Vendor.Namespaces namespaces = internalVendor.getNamespaces();
        if (namespaces == null || (iab2 = namespaces.getIab2()) == null) {
            return null;
        }
        InternalVendor internalVendorB = b(map, iab2);
        if (internalVendorB != null && internalVendorB.isIabVendor()) {
            return internalVendorB;
        }
        namespaces.setIab2(null);
        return null;
    }

    public static final List<InternalVendor> a(Collection<InternalVendor> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        final b bVar = b.a;
        return CollectionsKt___CollectionsKt.sortedWith(collection, new Comparator() { // from class: io.didomi.sdk.gf
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return C1870q3.a(bVar, obj, obj2);
            }
        });
    }

    public static final Map<String, InternalVendor> a(Map<String, InternalVendor> map, Map<String, InternalPurpose> availablePurposes, Collection<InternalVendor> didomiVendors) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        Intrinsics.checkNotNullParameter(didomiVendors, "didomiVendors");
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (InternalVendor internalVendor : didomiVendors) {
            InternalVendor internalVendorA = a(map, internalVendor);
            if (internalVendorA != null) {
                if (!Intrinsics.areEqual(internalVendorA.getId(), internalVendor.getId()) || internalVendorA.getIabId() == null) {
                    arrayList.add(internalVendorA.getId());
                    a(internalVendorA, internalVendor);
                } else {
                    String iabId = internalVendorA.getIabId();
                    Intrinsics.checkNotNull(iabId, "null cannot be cast to non-null type kotlin.String");
                    arrayList.add(iabId);
                }
                linkedHashMap.put(internalVendor.getId(), internalVendorA);
            } else {
                a(internalVendor, availablePurposes);
                linkedHashMap.put(internalVendor.getId(), internalVendor);
            }
        }
        for (Map.Entry<String, InternalVendor> entry : map.entrySet()) {
            String key = entry.getKey();
            InternalVendor value = entry.getValue();
            if (!arrayList.contains(key)) {
                linkedHashMap.put(key, value);
            }
        }
        return linkedHashMap;
    }

    public static final void a(InternalVendor internalVendor, DeviceStorageDisclosures deviceStorageDisclosures) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        internalVendor.setDeviceStorageDisclosureComplete(true);
        internalVendor.setDeviceStorageDisclosures(deviceStorageDisclosures);
    }

    public static final void a(InternalVendor internalVendor, InternalVendor didomiVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        Intrinsics.checkNotNullParameter(didomiVendor, "didomiVendor");
        internalVendor.setIabId(internalVendor.getId());
        internalVendor.setId(didomiVendor.getId());
        internalVendor.setNamespace(didomiVendor.getNamespace());
        internalVendor.setNamespaces(didomiVendor.getNamespaces());
    }

    public static final void a(InternalVendor internalVendor, Map<String, InternalPurpose> availablePurposes) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        Intrinsics.checkNotNullParameter(availablePurposes, "availablePurposes");
        List<String> purposeIds = internalVendor.getPurposeIds();
        ArrayList arrayList = new ArrayList();
        for (Object obj : purposeIds) {
            if (availablePurposes.containsKey((String) obj)) {
                arrayList.add(obj);
            }
        }
        internalVendor.setPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList));
        List<String> legIntPurposeIds = internalVendor.getLegIntPurposeIds();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : legIntPurposeIds) {
            if (availablePurposes.containsKey((String) obj2)) {
                arrayList2.add(obj2);
            }
        }
        internalVendor.setLegIntPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList2));
    }

    public static final boolean a(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        if ((!internalVendor.getPurposeIds().isEmpty()) || (!internalVendor.getLegIntPurposeIds().isEmpty()) || (!internalVendor.getSpecialPurposeIds().isEmpty()) || (!internalVendor.getEssentialPurposeIds().isEmpty()) || (!internalVendor.getFeatureIds().isEmpty()) || (!internalVendor.getSpecialFeatureIds().isEmpty())) {
            return true;
        }
        Set<String> dataDeclaration = internalVendor.getDataDeclaration();
        return (dataDeclaration == null || dataDeclaration.isEmpty()) ? false : true;
    }

    public static final boolean a(InternalVendor internalVendor, String purposeId) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        return internalVendor.getPurposeIds().contains(purposeId) || internalVendor.getLegIntPurposeIds().contains(purposeId) || internalVendor.getEssentialPurposeIds().contains(purposeId);
    }

    public static final boolean a(Map<String, InternalVendor> map, String str) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return b(map, str) != null;
    }

    public static final InternalVendor b(Map<String, InternalVendor> map, String str) {
        Object next;
        Intrinsics.checkNotNullParameter(map, "<this>");
        InternalVendor internalVendor = map.get(str);
        if (internalVendor != null) {
            return internalVendor;
        }
        Iterator<T> it = map.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            InternalVendor internalVendor2 = (InternalVendor) next;
            if (internalVendor2.isIabVendor() && Intrinsics.areEqual(internalVendor2.getIabId(), str)) {
                break;
            }
        }
        return (InternalVendor) next;
    }

    public static final boolean b(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return ((internalVendor.getPurposeIds().isEmpty() ^ true) || (internalVendor.getLegIntPurposeIds().isEmpty() ^ true) || internalVendor.getEssentialPurposeIds().isEmpty()) ? false : true;
    }

    public static final boolean b(InternalVendor internalVendor, String purposeIabId) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        Intrinsics.checkNotNullParameter(purposeIabId, "purposeIabId");
        return internalVendor.getSpecialFeatureIds().contains(purposeIabId);
    }

    public static final boolean c(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return internalVendor.getPurposeIds().isEmpty() && internalVendor.getLegIntPurposeIds().isEmpty() && internalVendor.getEssentialPurposeIds().isEmpty();
    }

    public static final boolean d(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return !internalVendor.getPurposeIds().isEmpty();
    }

    public static final boolean e(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return Intrinsics.areEqual(internalVendor.getNamespace(), "didomi");
    }

    public static final boolean f(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return !internalVendor.getLegIntPurposeIds().isEmpty();
    }

    public static final boolean g(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return f(internalVendor) && !d(internalVendor);
    }

    public static final boolean h(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return internalVendor.getCookieMaxAgeSeconds() != null || internalVendor.getUsesNonCookieAccess();
    }

    public static final boolean i(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        return h(internalVendor) || internalVendor.getDeviceStorageDisclosureUrl() != null;
    }

    public static final Vendor j(InternalVendor internalVendor) {
        Intrinsics.checkNotNullParameter(internalVendor, "<this>");
        String didomiId = internalVendor.getDidomiId();
        if (didomiId == null) {
            didomiId = internalVendor.getId();
        }
        return new Vendor(didomiId, internalVendor.getName(), internalVendor.getNamespaces(), internalVendor.getPrivacyPolicyUrl(), internalVendor.getPurposeIds(), internalVendor.getLegIntPurposeIds(), internalVendor.getFeatureIds(), internalVendor.getFlexiblePurposeIds(), internalVendor.getSpecialFeatureIds(), internalVendor.getSpecialPurposeIds(), internalVendor.getUrls(), internalVendor.isIabVendor());
    }
}
