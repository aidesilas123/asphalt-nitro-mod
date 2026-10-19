package io.didomi.drawable;

import com.facebook.AccessToken;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
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
    	... 4 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0003\u0010\u0004\u001a\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0005\u0010\u0004\u001a\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000b\u001a\u001f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\t0\u0001*\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\r\u001a\u001f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0001*\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\r\u001a\u001f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\t0\u0001*\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\r\u001a%\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00002\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\n\u0010\u000f\u001a\u0011\u0010\n\u001a\u00020\u0010*\u00020\u0000¢\u0006\u0004\b\n\u0010\u0011\u001a\u001f\u0010\u0005\u001a\u00020\u0012*\u00020\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u0005\u0010\u0013¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/V8;", "", "Lio/didomi/sdk/models/InternalPurpose;", "c", "(Lio/didomi/sdk/V8;)Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "Lio/didomi/sdk/models/InternalVendor;", "a", "(Lio/didomi/sdk/V8;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/Set;", "purpose", "(Lio/didomi/sdk/V8;Lio/didomi/sdk/models/InternalPurpose;)Ljava/util/List;", "requiredVendors", "(Lio/didomi/sdk/V8;Ljava/util/Set;)Lio/didomi/sdk/models/InternalVendor;", "", "(Lio/didomi/sdk/V8;)Z", "", "(Lio/didomi/sdk/V8;Ljava/util/Set;)V", "android_release"}, mv = {1, 8, 0})
public final class W8 {
    private static final InternalVendor a(V8 v8, Set<InternalVendor> set) {
        InternalVendor internalVendorG = v8.g(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE);
        if (internalVendorG != null && internalVendorG.isIabVendor() && set.contains(internalVendorG)) {
            return internalVendorG;
        }
        return null;
    }

    static /* synthetic */ InternalVendor a(V8 v8, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            set = v8.q();
        }
        return a(v8, (Set<InternalVendor>) set);
    }

    public static final List<InternalVendor> a(V8 v8, InternalPurpose purpose) {
        ArrayList arrayList;
        String iabId;
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (!purpose.isSpecialFeature() || (iabId = purpose.getIabId()) == null || StringsKt__StringsJVMKt.isBlank(iabId)) {
            Set<InternalVendor> setR = v8.r();
            arrayList = new ArrayList();
            for (Object obj : setR) {
                if (((InternalVendor) obj).getPurposeIds().contains(purpose.getId())) {
                    arrayList.add(obj);
                }
            }
        } else {
            Set<InternalVendor> setR2 = v8.r();
            arrayList = new ArrayList();
            for (Object obj2 : setR2) {
                if (C1870q3.b((InternalVendor) obj2, purpose.getIabId())) {
                    arrayList.add(obj2);
                }
            }
        }
        return arrayList;
    }

    public static final Set<InternalVendor> a(V8 v8, PurposeCategory category) {
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Intrinsics.checkNotNullParameter(category, "category");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        for (Object obj : children) {
            if (C1901t4.a((PurposeCategory) obj) == PurposeCategory.Type.Purpose) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurpose = v8.f().get(((PurposeCategory) it.next()).getPurposeId());
            if (internalPurpose != null) {
                arrayList2.add(internalPurpose);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            linkedHashSet.addAll(c(v8, (InternalPurpose) it2.next()));
        }
        return CollectionsKt___CollectionsKt.toSet(linkedHashSet);
    }

    public static final boolean a(V8 v8) {
        Intrinsics.checkNotNullParameter(v8, "<this>");
        return a(v8, null, 1, null) != null;
    }

    public static final List<InternalPurpose> b(V8 v8) {
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Set<InternalPurpose> setK = v8.k();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setK) {
            if (C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final List<InternalVendor> b(V8 v8, InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Set<InternalVendor> setT = v8.t();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setT) {
            if (((InternalVendor) obj).getLegIntPurposeIds().contains(purpose.getId())) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final void b(V8 v8, Set<InternalVendor> requiredVendors) {
        InternalVendor internalVendorA;
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Intrinsics.checkNotNullParameter(requiredVendors, "requiredVendors");
        InternalVendor internalVendorG = v8.g(AccessToken.DEFAULT_GRAPH_DOMAIN);
        if (internalVendorG != null) {
            if (!C1870q3.e(internalVendorG) || !requiredVendors.contains(internalVendorG)) {
                internalVendorG = null;
            }
            if (internalVendorG == null || (internalVendorA = a(v8, requiredVendors)) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(internalVendorA.getPurposeIds());
            internalVendorG.setPurposeIds(arrayList);
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(internalVendorA.getLegIntPurposeIds());
            internalVendorG.setLegIntPurposeIds(arrayList2);
        }
    }

    public static final List<InternalPurpose> c(V8 v8) {
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Set<InternalPurpose> setK = v8.k();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setK) {
            if (!C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static final List<InternalVendor> c(V8 v8, InternalPurpose purpose) {
        ArrayList arrayList;
        String iabId;
        Intrinsics.checkNotNullParameter(v8, "<this>");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (!purpose.isSpecialFeature() || (iabId = purpose.getIabId()) == null || StringsKt__StringsJVMKt.isBlank(iabId)) {
            Set<InternalVendor> setQ = v8.q();
            arrayList = new ArrayList();
            for (Object obj : setQ) {
                if (C1870q3.a((InternalVendor) obj, purpose.getId())) {
                    arrayList.add(obj);
                }
            }
        } else {
            Set<InternalVendor> setQ2 = v8.q();
            arrayList = new ArrayList();
            for (Object obj2 : setQ2) {
                if (C1870q3.b((InternalVendor) obj2, purpose.getIabId())) {
                    arrayList.add(obj2);
                }
            }
        }
        return arrayList;
    }
}
