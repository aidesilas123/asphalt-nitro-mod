package io.didomi.drawable;

import io.didomi.drawable.models.InternalVendor;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.e3, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0006*\u00020\u0000¢\u0006\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lio/didomi/sdk/d3;", "Lio/didomi/sdk/u5;", "sdkConfiguration", "", "a", "(Lio/didomi/sdk/d3;Lio/didomi/sdk/u5;)V", "Ljava/util/Date;", "(Lio/didomi/sdk/d3;)Ljava/util/Date;", "android_release"}, mv = {1, 8, 0})
public final class C1750e3 {
    public static final Date a(InterfaceC1740d3 interfaceC1740d3) {
        Intrinsics.checkNotNullParameter(interfaceC1740d3, "<this>");
        String lastUpdated = interfaceC1740d3.getLastUpdated();
        if (lastUpdated == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.ENGLISH).parse(lastUpdated);
        } catch (ParseException e2) {
            Log.e("Error parsing date: " + interfaceC1740d3.getLastUpdated(), e2);
            return null;
        }
    }

    public static final void a(InterfaceC1740d3 interfaceC1740d3, InterfaceC1912u5 sdkConfiguration) {
        Intrinsics.checkNotNullParameter(interfaceC1740d3, "<this>");
        Intrinsics.checkNotNullParameter(sdkConfiguration, "sdkConfiguration");
        interfaceC1740d3.a(0);
        for (InternalVendor internalVendor : interfaceC1740d3.a().values()) {
            internalVendor.setNamespace("iab");
            internalVendor.setPurposeIds(C1922v5.a(sdkConfiguration, internalVendor.getPurposeIds()));
            internalVendor.setLegIntPurposeIds(C1922v5.a(sdkConfiguration, internalVendor.getLegIntPurposeIds()));
            internalVendor.setFlexiblePurposeIds(C1922v5.a(sdkConfiguration, internalVendor.getFlexiblePurposeIds()));
            int i = Integer.parseInt(internalVendor.getId());
            if (i > interfaceC1740d3.f()) {
                interfaceC1740d3.a(i);
            }
        }
    }
}
