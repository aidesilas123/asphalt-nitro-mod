package io.didomi.drawable;

import android.text.Spanned;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.t3, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0011\b\u0080\b\u0018\u00002\u00020\u0001:\u0001\u0015B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\t2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0015\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0018\u0010\u001aR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001b\u0010\u000eR\u0017\u0010\n\u001a\u00020\t8\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001d\u0010\u001f¨\u0006 "}, d2 = {"Lio/didomi/sdk/t3;", "", "", "Lio/didomi/sdk/t3$a;", "lineInfoList", "Landroid/text/Spanned;", "originalContent", "", "shrunkContent", "", "isFontFamilyCustomized", "<init>", "(Ljava/util/List;Landroid/text/Spanned;Ljava/lang/String;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/util/List;", "()Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/text/Spanned;", "()Landroid/text/Spanned;", "c", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "()Z", "android_release"}, mv = {1, 8, 0})
public final /* data */ class JustificationParameters {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    private final List<LineInfo> lineInfoList;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    private final Spanned originalContent;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    private final String shrunkContent;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    private final boolean isFontFamilyCustomized;

    /* JADX INFO: renamed from: io.didomi.sdk.t3$a, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\rR\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0006\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0013\u001a\u0004\b\u0012\u0010\r¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/t3$a;", "", "", "lineIndex", "", "spaceIndexes", "boldCharactersCount", "<init>", "(ILjava/util/List;I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/util/List;", "c", "()Ljava/util/List;", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class LineInfo {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final int lineIndex;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final List<Integer> spaceIndexes;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final int boldCharactersCount;

        public LineInfo(int i, List<Integer> spaceIndexes, int i2) {
            Intrinsics.checkNotNullParameter(spaceIndexes, "spaceIndexes");
            this.lineIndex = i;
            this.spaceIndexes = spaceIndexes;
            this.boldCharactersCount = i2;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final int getBoldCharactersCount() {
            return this.boldCharactersCount;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getLineIndex() {
            return this.lineIndex;
        }

        public final List<Integer> c() {
            return this.spaceIndexes;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LineInfo)) {
                return false;
            }
            LineInfo lineInfo = (LineInfo) other;
            return this.lineIndex == lineInfo.lineIndex && Intrinsics.areEqual(this.spaceIndexes, lineInfo.spaceIndexes) && this.boldCharactersCount == lineInfo.boldCharactersCount;
        }

        public int hashCode() {
            return (((this.lineIndex * 31) + this.spaceIndexes.hashCode()) * 31) + this.boldCharactersCount;
        }

        public String toString() {
            return "LineInfo(lineIndex=" + this.lineIndex + ", spaceIndexes=" + this.spaceIndexes + ", boldCharactersCount=" + this.boldCharactersCount + ')';
        }
    }

    public JustificationParameters(List<LineInfo> lineInfoList, Spanned originalContent, String shrunkContent, boolean z) {
        Intrinsics.checkNotNullParameter(lineInfoList, "lineInfoList");
        Intrinsics.checkNotNullParameter(originalContent, "originalContent");
        Intrinsics.checkNotNullParameter(shrunkContent, "shrunkContent");
        this.lineInfoList = lineInfoList;
        this.originalContent = originalContent;
        this.shrunkContent = shrunkContent;
        this.isFontFamilyCustomized = z;
    }

    public final List<LineInfo> a() {
        return this.lineInfoList;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final Spanned getOriginalContent() {
        return this.originalContent;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getShrunkContent() {
        return this.shrunkContent;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getIsFontFamilyCustomized() {
        return this.isFontFamilyCustomized;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof JustificationParameters)) {
            return false;
        }
        JustificationParameters justificationParameters = (JustificationParameters) other;
        return Intrinsics.areEqual(this.lineInfoList, justificationParameters.lineInfoList) && Intrinsics.areEqual(this.originalContent, justificationParameters.originalContent) && Intrinsics.areEqual(this.shrunkContent, justificationParameters.shrunkContent) && this.isFontFamilyCustomized == justificationParameters.isFontFamilyCustomized;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    public int hashCode() {
        int iHashCode = ((((this.lineInfoList.hashCode() * 31) + this.originalContent.hashCode()) * 31) + this.shrunkContent.hashCode()) * 31;
        boolean z = this.isFontFamilyCustomized;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode + r1;
    }

    public String toString() {
        return "JustificationParameters(lineInfoList=" + this.lineInfoList + ", originalContent=" + ((Object) this.originalContent) + ", shrunkContent=" + this.shrunkContent + ", isFontFamilyCustomized=" + this.isFontFamilyCustomized + ')';
    }
}
