package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.InternalPurpose;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: renamed from: io.didomi.sdk.m3, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u001a2\u00020\u0001:\u0001\u0014B?\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0018\u0010\u0017R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0015\u001a\u0004\b\u0014\u0010\u0017¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/m3;", "", "", "Lio/didomi/sdk/models/InternalPurpose;", "enabledPurposes", "disabledPurposes", "enabledLegitimatePurposes", "disabledLegitimatePurposes", "<init>", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/util/Set;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "e", "android_release"}, mv = {1, 8, 0})
public final /* data */ class InitialPurposesHolder {

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final Set<InternalPurpose> enabledPurposes;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Set<InternalPurpose> disabledPurposes;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final Set<InternalPurpose> enabledLegitimatePurposes;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final Set<InternalPurpose> disabledLegitimatePurposes;

    /* JADX INFO: renamed from: io.didomi.sdk.m3$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/m3$a;", "", "<init>", "()V", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/m3;", "a", "(Lio/didomi/sdk/G8;)Lio/didomi/sdk/m3;", "android_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public final InitialPurposesHolder a(G8 userChoicesInfoProvider) {
            Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
            return new InitialPurposesHolder(CollectionsKt___CollectionsKt.toSet(userChoicesInfoProvider.f()), CollectionsKt___CollectionsKt.toSet(userChoicesInfoProvider.b()), CollectionsKt___CollectionsKt.toSet(userChoicesInfoProvider.h()), CollectionsKt___CollectionsKt.toSet(userChoicesInfoProvider.d()));
        }
    }

    public InitialPurposesHolder(Set<InternalPurpose> enabledPurposes, Set<InternalPurpose> disabledPurposes, Set<InternalPurpose> enabledLegitimatePurposes, Set<InternalPurpose> disabledLegitimatePurposes) {
        Intrinsics.checkNotNullParameter(enabledPurposes, "enabledPurposes");
        Intrinsics.checkNotNullParameter(disabledPurposes, "disabledPurposes");
        Intrinsics.checkNotNullParameter(enabledLegitimatePurposes, "enabledLegitimatePurposes");
        Intrinsics.checkNotNullParameter(disabledLegitimatePurposes, "disabledLegitimatePurposes");
        this.enabledPurposes = enabledPurposes;
        this.disabledPurposes = disabledPurposes;
        this.enabledLegitimatePurposes = enabledLegitimatePurposes;
        this.disabledLegitimatePurposes = disabledLegitimatePurposes;
    }

    public final Set<InternalPurpose> a() {
        return this.disabledLegitimatePurposes;
    }

    public final Set<InternalPurpose> b() {
        return this.disabledPurposes;
    }

    public final Set<InternalPurpose> c() {
        return this.enabledLegitimatePurposes;
    }

    public final Set<InternalPurpose> d() {
        return this.enabledPurposes;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof InitialPurposesHolder)) {
            return false;
        }
        InitialPurposesHolder initialPurposesHolder = (InitialPurposesHolder) other;
        return Intrinsics.areEqual(this.enabledPurposes, initialPurposesHolder.enabledPurposes) && Intrinsics.areEqual(this.disabledPurposes, initialPurposesHolder.disabledPurposes) && Intrinsics.areEqual(this.enabledLegitimatePurposes, initialPurposesHolder.enabledLegitimatePurposes) && Intrinsics.areEqual(this.disabledLegitimatePurposes, initialPurposesHolder.disabledLegitimatePurposes);
    }

    public int hashCode() {
        return (((((this.enabledPurposes.hashCode() * 31) + this.disabledPurposes.hashCode()) * 31) + this.enabledLegitimatePurposes.hashCode()) * 31) + this.disabledLegitimatePurposes.hashCode();
    }

    public String toString() {
        return "InitialPurposesHolder(enabledPurposes=" + this.enabledPurposes + ", disabledPurposes=" + this.disabledPurposes + ", enabledLegitimatePurposes=" + this.enabledLegitimatePurposes + ", disabledLegitimatePurposes=" + this.disabledLegitimatePurposes + ')';
    }
}
