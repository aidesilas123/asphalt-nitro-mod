package io.didomi.drawable;

import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u001a\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/p4;", "Ljava/util/Comparator;", "Lio/didomi/sdk/models/InternalPurpose;", "", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "categories", "<init>", "(Ljava/util/List;)V", "purpose1", "purpose2", "", "a", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/models/InternalPurpose;)I", "Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final class C1861p4 implements Comparator<InternalPurpose> {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final List<PurposeCategory> categories;

    public C1861p4(List<PurposeCategory> categories) {
        Intrinsics.checkNotNullParameter(categories, "categories");
        this.categories = categories;
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(InternalPurpose purpose1, InternalPurpose purpose2) {
        Intrinsics.checkNotNullParameter(purpose1, "purpose1");
        Intrinsics.checkNotNullParameter(purpose2, "purpose2");
        int i = Integer.MAX_VALUE;
        int i2 = Integer.MAX_VALUE;
        int i3 = 0;
        for (Object obj : this.categories) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            PurposeCategory purposeCategory = (PurposeCategory) obj;
            if (Intrinsics.areEqual(purpose1.getId(), purposeCategory.getPurposeId())) {
                i = i3;
            } else if (Intrinsics.areEqual(purpose2.getId(), purposeCategory.getPurposeId())) {
                i2 = i3;
            }
            i3 = i4;
        }
        return Intrinsics.compare(i, i2);
    }
}
