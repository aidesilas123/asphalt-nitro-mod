package io.didomi.drawable;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.s0, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a+\u0010\u0004\u001a\u00020\u0003*\b\u0012\u0004\u0012\u00020\u00000\u00062\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00010\u0007¢\u0006\u0004\b\u0004\u0010\n¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/o0;", "Lio/didomi/sdk/A;", "translation", "", "a", "(Lio/didomi/sdk/o0;Lio/didomi/sdk/A;)V", "", "", "", "translations", "(Ljava/util/Set;Ljava/util/Map;)V", "android_release"}, mv = {1, 8, 0})
public final class C1887s0 {
    public static final void a(InterfaceC1847o0 interfaceC1847o0, ConfigPurpose translation) {
        Intrinsics.checkNotNullParameter(interfaceC1847o0, "<this>");
        Intrinsics.checkNotNullParameter(translation, "translation");
        String name = translation.getName();
        if (name != null) {
            interfaceC1847o0.setName(name);
        }
        String description = translation.getDescription();
        if (description != null) {
            interfaceC1847o0.setDescription(description);
        }
        String descriptionLegal = translation.getDescriptionLegal();
        if (descriptionLegal != null) {
            interfaceC1847o0.setDescriptionLegal(descriptionLegal);
        }
        List<String> listE = translation.e();
        if (listE != null) {
            interfaceC1847o0.setIllustrations(listE);
        }
    }

    public static final void a(Set<? extends InterfaceC1847o0> set, Map<String, ConfigPurpose> translations) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(translations, "translations");
        for (InterfaceC1847o0 interfaceC1847o0 : set) {
            ConfigPurpose configPurpose = translations.get(interfaceC1847o0.getId());
            if (configPurpose != null) {
                a(interfaceC1847o0, configPurpose);
            }
        }
    }
}
