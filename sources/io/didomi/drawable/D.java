package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.ConfigVendor;
import io.didomi.drawable.Vendor;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005*\b\u0012\u0004\u0012\u00020\u00000\u0004¢\u0006\u0004\b\u0002\u0010\u0006\u001a\u0013\u0010\u0002\u001a\u00020\b*\u00020\u0007H\u0002¢\u0006\u0004\b\u0002\u0010\t\u001a\u001f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0005*\b\u0012\u0004\u0012\u00020\n0\u0004H\u0002¢\u0006\u0004\b\f\u0010\u0006\u001a\u0013\u0010\u0002\u001a\u00020\u000b*\u00020\nH\u0002¢\u0006\u0004\b\u0002\u0010\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/C;", "Lio/didomi/sdk/models/InternalVendor;", "a", "(Lio/didomi/sdk/C;)Lio/didomi/sdk/models/InternalVendor;", "", "", "(Ljava/util/Collection;)Ljava/util/List;", "Lio/didomi/sdk/C$a;", "Lio/didomi/sdk/models/InternalVendor$a;", "(Lio/didomi/sdk/C$a;)Lio/didomi/sdk/models/InternalVendor$a;", "Lio/didomi/sdk/C$c;", "Lio/didomi/sdk/Vendor$Url;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/C$c;)Lio/didomi/sdk/Vendor$Url;", "android_release"}, mv = {1, 8, 0})
public final class D {
    private static final Vendor.Url a(ConfigVendor.Url url) {
        return new Vendor.Url(url.getLangId(), url.getPrivacy(), url.getLegIntClaim());
    }

    private static final InternalVendor.DataRetention a(ConfigVendor.DataRetention dataRetention) {
        return new InternalVendor.DataRetention(dataRetention.getStdRetention(), dataRetention.a(), dataRetention.b());
    }

    public static final InternalVendor a(ConfigVendor configVendor) {
        Intrinsics.checkNotNullParameter(configVendor, "<this>");
        String id = configVendor.getId();
        String str = id == null ? "" : id;
        String iabId = configVendor.getIabId();
        String name = configVendor.getName();
        if (name == null) {
            name = "";
        }
        String string = StringsKt__StringsKt.trim(name).toString();
        String privacyPolicyUrl = configVendor.getPrivacyPolicyUrl();
        String namespace = configVendor.getNamespace();
        String str2 = namespace == null ? "" : namespace;
        ConfigVendor.Namespaces namespaces = configVendor.getNamespaces();
        Vendor.Namespaces namespacesA = namespaces != null ? E.a(namespaces) : null;
        List<String> listQ = configVendor.q();
        if (listQ == null) {
            listQ = CollectionsKt__CollectionsKt.emptyList();
        }
        List mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) listQ);
        List<String> listI = configVendor.i();
        if (listI == null) {
            listI = CollectionsKt__CollectionsKt.emptyList();
        }
        List<String> list = listI;
        List<String> listS = configVendor.s();
        if (listS == null) {
            listS = CollectionsKt__CollectionsKt.emptyList();
        }
        List<String> list2 = listS;
        List<String> listL = configVendor.l();
        if (listL == null) {
            listL = CollectionsKt__CollectionsKt.emptyList();
        }
        List mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) listL);
        List<String> listH = configVendor.h();
        if (listH == null) {
            listH = CollectionsKt__CollectionsKt.emptyList();
        }
        List<String> list3 = listH;
        List<String> listR = configVendor.r();
        if (listR == null) {
            listR = CollectionsKt__CollectionsKt.emptyList();
        }
        List<String> list4 = listR;
        Long cookieMaxAgeSeconds = configVendor.getCookieMaxAgeSeconds();
        boolean zAreEqual = Intrinsics.areEqual(configVendor.getUsesNonCookieAccess(), Boolean.TRUE);
        String deviceStorageDisclosureUrl = configVendor.getDeviceStorageDisclosureUrl();
        Set<String> setB = configVendor.b();
        ConfigVendor.DataRetention dataRetention = configVendor.getDataRetention();
        InternalVendor.DataRetention dataRetentionA = dataRetention != null ? a(dataRetention) : null;
        List<ConfigVendor.Url> listT = configVendor.t();
        InternalVendor internalVendor = new InternalVendor(str, string, privacyPolicyUrl, str2, namespacesA, mutableList, mutableList2, iabId, list, list2, list3, list4, cookieMaxAgeSeconds, zAreEqual, deviceStorageDisclosureUrl, setB, dataRetentionA, listT != null ? b(listT) : null, configVendor.getDidomiId(), configVendor.getDeletedDate());
        List<String> listG = configVendor.g();
        if (listG == null) {
            listG = CollectionsKt__CollectionsKt.emptyList();
        }
        internalVendor.setEssentialPurposeIds(CollectionsKt___CollectionsKt.toMutableList((Collection) listG));
        return internalVendor;
    }

    public static final List<InternalVendor> a(Collection<ConfigVendor> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(a((ConfigVendor) it.next()));
        }
        return arrayList;
    }

    private static final List<Vendor.Url> b(Collection<ConfigVendor.Url> collection) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(a((ConfigVendor.Url) it.next()));
        }
        return arrayList;
    }
}
