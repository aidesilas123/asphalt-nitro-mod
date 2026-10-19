package io.didomi.drawable;

import com.google.gson.r.c;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.S5, reason: from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001BY\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R&\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u0016\u001a\u0004\b\u0019\u0010\u0018R&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u0016\u001a\u0004\b\u001a\u0010\u0018R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u001b\u001a\u0004\b\u0015\u0010\u001c¨\u0006\u001d"}, d2 = {"Lio/didomi/sdk/S5;", "", "", "", "title", "description", "sectionTitle", "", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "categories", "<init>", "(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/util/Map;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "Ljava/util/List;", "()Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
public final /* data */ class SensitivePersonalInformation {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    @c("title")
    private final Map<String, String> title;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    @c("description")
    private final Map<String, String> description;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    @c("sectionTitle")
    private final Map<String, String> sectionTitle;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    @c("categories")
    private final List<PurposeCategory> categories;

    public SensitivePersonalInformation() {
        this(null, null, null, null, 15, null);
    }

    public SensitivePersonalInformation(Map<String, String> title, Map<String, String> description, Map<String, String> sectionTitle, List<PurposeCategory> categories) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(sectionTitle, "sectionTitle");
        Intrinsics.checkNotNullParameter(categories, "categories");
        this.title = title;
        this.description = description;
        this.sectionTitle = sectionTitle;
        this.categories = categories;
    }

    public /* synthetic */ SensitivePersonalInformation(Map map, Map map2, Map map3, List list, int i, n nVar) {
        this((i & 1) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 2) != 0 ? MapsKt__MapsKt.emptyMap() : map2, (i & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map3, (i & 8) != 0 ? new ArrayList() : list);
    }

    public final List<PurposeCategory> a() {
        return this.categories;
    }

    public final Map<String, String> b() {
        return this.description;
    }

    public final Map<String, String> c() {
        return this.sectionTitle;
    }

    public final Map<String, String> d() {
        return this.title;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SensitivePersonalInformation)) {
            return false;
        }
        SensitivePersonalInformation sensitivePersonalInformation = (SensitivePersonalInformation) other;
        return Intrinsics.areEqual(this.title, sensitivePersonalInformation.title) && Intrinsics.areEqual(this.description, sensitivePersonalInformation.description) && Intrinsics.areEqual(this.sectionTitle, sensitivePersonalInformation.sectionTitle) && Intrinsics.areEqual(this.categories, sensitivePersonalInformation.categories);
    }

    public int hashCode() {
        return (((((this.title.hashCode() * 31) + this.description.hashCode()) * 31) + this.sectionTitle.hashCode()) * 31) + this.categories.hashCode();
    }

    public String toString() {
        return "SensitivePersonalInformation(title=" + this.title + ", description=" + this.description + ", sectionTitle=" + this.sectionTitle + ", categories=" + this.categories + ')';
    }
}
