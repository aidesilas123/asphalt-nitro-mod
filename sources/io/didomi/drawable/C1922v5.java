package io.didomi.drawable;

import io.didomi.drawable.models.InternalPurpose;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.v5, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a'\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004*\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\u0005\u001a\u00020\u0007*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/u5;", "", "", "iabPurposeIds", "", "a", "(Lio/didomi/sdk/u5;Ljava/util/List;)Ljava/util/List;", "", "(Lio/didomi/sdk/u5;)V", "android_release"}, mv = {1, 8, 0})
public final class C1922v5 {
    public static final List<String> a(InterfaceC1912u5 interfaceC1912u5, List<String> list) {
        List listEmptyList;
        Intrinsics.checkNotNullParameter(interfaceC1912u5, "<this>");
        a(interfaceC1912u5);
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (interfaceC1912u5.d().containsKey((String) obj)) {
                    arrayList.add(obj);
                }
            }
            listEmptyList = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = interfaceC1912u5.d().get((String) it.next());
                if (str != null) {
                    listEmptyList.add(str);
                }
            }
        } else {
            listEmptyList = null;
        }
        if (listEmptyList == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        return CollectionsKt___CollectionsKt.toMutableList((Collection) listEmptyList);
    }

    private static final void a(InterfaceC1912u5 interfaceC1912u5) {
        if ((!interfaceC1912u5.d().isEmpty()) || (!interfaceC1912u5.e().isEmpty())) {
            return;
        }
        List<InternalPurpose> listC = interfaceC1912u5.c();
        ArrayList<InternalPurpose> arrayList = new ArrayList();
        for (Object obj : listC) {
            String iabId = ((InternalPurpose) obj).getIabId();
            if (iabId != null && !StringsKt__StringsJVMKt.isBlank(iabId)) {
                arrayList.add(obj);
            }
        }
        for (InternalPurpose internalPurpose : arrayList) {
            Map<String, String> mapD = interfaceC1912u5.d();
            String iabId2 = internalPurpose.getIabId();
            Intrinsics.checkNotNull(iabId2, "null cannot be cast to non-null type kotlin.String");
            mapD.put(iabId2, internalPurpose.getId());
            interfaceC1912u5.e().put(internalPurpose.getId(), internalPurpose.getIabId());
        }
    }
}
