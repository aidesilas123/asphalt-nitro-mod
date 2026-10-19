package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.t4, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u001a+\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0005*\b\u0012\u0004\u0012\u00020\u00010\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0011\u0010\u0006\u001a\u00020\b*\u00020\u0001¢\u0006\u0004\b\u0006\u0010\t\u001a=\u0010\u0006\u001a\u00020\f*\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\r\u001a/\u0010\u0006\u001a\u00020\f*\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u000e\u001a/\u0010\u000f\u001a\u00020\f*\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u000e¨\u0006\u0010"}, d2 = {"", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "", "", "availablePurposeIds", "", "a", "(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;", "Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;", "alreadyListedCategoriesIds", "alreadyListedPurposesIds", "", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/util/Set;Ljava/util/Set;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "android_release"}, mv = {1, 8, 0})
public final class C1901t4 {

    /* JADX INFO: renamed from: io.didomi.sdk.t4$a */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[PurposeCategory.Type.values().length];
            try {
                iArr[PurposeCategory.Type.Purpose.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PurposeCategory.Type.Category.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PurposeCategory.Type.Unknown.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final PurposeCategory.Type a(PurposeCategory purposeCategory) {
        Intrinsics.checkNotNullParameter(purposeCategory, "<this>");
        return PurposeCategory.Type.INSTANCE.a(purposeCategory.getTypeAsString$android_release());
    }

    public static final List<PurposeCategory> a(List<PurposeCategory> list, Set<String> availablePurposeIds) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(availablePurposeIds, "availablePurposeIds");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
        for (PurposeCategory purposeCategory : list) {
            PurposeCategory.Type typeA = a(purposeCategory);
            if (a(purposeCategory, linkedHashSet2, linkedHashSet, availablePurposeIds)) {
                linkedHashSet3.add(purposeCategory);
            } else if (typeA == PurposeCategory.Type.Purpose) {
                linkedHashSet.add(purposeCategory.getPurposeId());
                if (!purposeCategory.getChildren().isEmpty()) {
                    purposeCategory.getChildren().clear();
                }
            } else {
                if (typeA == PurposeCategory.Type.Category) {
                    linkedHashSet2.add(purposeCategory.getId());
                }
                LinkedHashSet linkedHashSet4 = new LinkedHashSet();
                List<PurposeCategory> children = purposeCategory.getChildren();
                for (PurposeCategory purposeCategory2 : children) {
                    if (a(purposeCategory2, linkedHashSet, availablePurposeIds)) {
                        linkedHashSet4.add(purposeCategory2);
                    } else {
                        linkedHashSet.add(purposeCategory2.getPurposeId());
                    }
                }
                children.removeAll(linkedHashSet4);
                if (children.isEmpty()) {
                    linkedHashSet3.add(purposeCategory);
                }
            }
        }
        list.removeAll(linkedHashSet3);
        return CollectionsKt___CollectionsKt.toList(list);
    }

    private static final boolean a(PurposeCategory purposeCategory, Set<String> set, Set<String> set2) {
        int i = a.a[a(purposeCategory).ordinal()];
        if (i == 1) {
            return b(purposeCategory, set, set2);
        }
        if (i == 2 || i == 3) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean a(PurposeCategory purposeCategory, Set<String> set, Set<String> set2, Set<String> set3) {
        int i = a.a[a(purposeCategory).ordinal()];
        if (i == 1) {
            return b(purposeCategory, set2, set3);
        }
        if (i == 2) {
            return purposeCategory.getId().length() == 0 || purposeCategory.getPurposeId().length() > 0 || set.contains(purposeCategory.getId());
        }
        if (i == 3) {
            return true;
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean b(PurposeCategory purposeCategory, Set<String> set, Set<String> set2) {
        return purposeCategory.getId().length() > 0 || purposeCategory.getPurposeId().length() == 0 || set.contains(purposeCategory.getPurposeId()) || !set2.contains(purposeCategory.getPurposeId());
    }
}
