package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\f\u0005\t\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0001\f\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\""}, d2 = {"Lio/didomi/sdk/J6;", "", "<init>", "()V", "", "a", "()J", "id", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()I", "typeId", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "i", "j", CampaignEx.JSON_KEY_AD_K, "l", "Lio/didomi/sdk/J6$a;", "Lio/didomi/sdk/J6$b;", "Lio/didomi/sdk/J6$c;", "Lio/didomi/sdk/J6$d;", "Lio/didomi/sdk/J6$e;", "Lio/didomi/sdk/J6$f;", "Lio/didomi/sdk/J6$g;", "Lio/didomi/sdk/J6$h;", "Lio/didomi/sdk/J6$i;", "Lio/didomi/sdk/J6$j;", "Lio/didomi/sdk/J6$k;", "Lio/didomi/sdk/J6$l;", "android_release"}, mv = {1, 8, 0})
public abstract class J6 {

    /* JADX INFO: renamed from: io.didomi.sdk.J6$a, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/J6$a;", "Lio/didomi/sdk/J6;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class AdditionalDataProcessingHeader extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdditionalDataProcessingHeader(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ AdditionalDataProcessingHeader(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 9 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AdditionalDataProcessingHeader)) {
                return false;
            }
            AdditionalDataProcessingHeader additionalDataProcessingHeader = (AdditionalDataProcessingHeader) other;
            return Intrinsics.areEqual(this.text, additionalDataProcessingHeader.text) && this.typeId == additionalDataProcessingHeader.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "AdditionalDataProcessingHeader(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$b, reason: from toString */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0014B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u000eR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001cR\"\u0010\b\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0018\u001a\u0004\b\u0017\u0010\u000e\"\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010 ¨\u0006\""}, d2 = {"Lio/didomi/sdk/J6$b;", "Lio/didomi/sdk/J6;", "", "text", "", "index", "Lio/didomi/sdk/o0;", "dataProcessing", "typeId", "<init>", "(Ljava/lang/String;ILio/didomi/sdk/o0;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "c", "Lio/didomi/sdk/o0;", "()Lio/didomi/sdk/o0;", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class AdditionalDataProcessingItem extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final int index;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final InterfaceC1847o0 dataProcessing;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AdditionalDataProcessingItem(String text, int i, InterfaceC1847o0 dataProcessing, int i2) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(dataProcessing, "dataProcessing");
            this.text = text;
            this.index = i;
            this.dataProcessing = dataProcessing;
            this.typeId = i2;
        }

        public /* synthetic */ AdditionalDataProcessingItem(String str, int i, InterfaceC1847o0 interfaceC1847o0, int i2, int i3, n nVar) {
            this(str, i, interfaceC1847o0, (i3 & 8) != 0 ? 10 : i2);
        }

        @Override // io.didomi.drawable.J6
        public long a() {
            return this.dataProcessing.hashCode() + 10;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final InterfaceC1847o0 getDataProcessing() {
            return this.dataProcessing;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof AdditionalDataProcessingItem)) {
                return false;
            }
            AdditionalDataProcessingItem additionalDataProcessingItem = (AdditionalDataProcessingItem) other;
            return Intrinsics.areEqual(this.text, additionalDataProcessingItem.text) && this.index == additionalDataProcessingItem.index && Intrinsics.areEqual(this.dataProcessing, additionalDataProcessingItem.dataProcessing) && this.typeId == additionalDataProcessingItem.typeId;
        }

        public int hashCode() {
            return (((((this.text.hashCode() * 31) + this.index) * 31) + this.dataProcessing.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "AdditionalDataProcessingItem(text=" + this.text + ", index=" + this.index + ", dataProcessing=" + this.dataProcessing + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$c, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0010\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0013B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0017\u0010\fR\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u0013\u0010\u001bR\"\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u001c\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lio/didomi/sdk/J6$c;", "Lio/didomi/sdk/J6;", "", "title", "status", "", "isChecked", "", "typeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "Z", "e", "()Z", "(Z)V", "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Bulk extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String status;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private boolean isChecked;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bulk(String title, String status, boolean z, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(status, "status");
            this.title = title;
            this.status = status;
            this.isChecked = z;
            this.typeId = i;
        }

        public /* synthetic */ Bulk(String str, String str2, boolean z, int i, int i2, n nVar) {
            this(str, str2, z, (i2 & 8) != 0 ? 6 : i);
        }

        public final void a(boolean z) {
            this.isChecked = z;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getStatus() {
            return this.status;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final boolean getIsChecked() {
            return this.isChecked;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Bulk)) {
                return false;
            }
            Bulk bulk = (Bulk) other;
            return Intrinsics.areEqual(this.title, bulk.title) && Intrinsics.areEqual(this.status, bulk.status) && this.isChecked == bulk.isChecked && this.typeId == bulk.typeId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v6 */
        public int hashCode() {
            int iHashCode = ((this.title.hashCode() * 31) + this.status.hashCode()) * 31;
            boolean z = this.isChecked;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((iHashCode + r1) * 31) + this.typeId;
        }

        public String toString() {
            return "Bulk(title=" + this.title + ", status=" + this.status + ", isChecked=" + this.isChecked + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$d, reason: from toString */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001f2\u00020\u0001:\u0001\u0016B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u001b\u001a\u0004\b\u001d\u0010\u000fR\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\"\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001e\u001a\u0004\b!\u0010 \"\u0004\b\"\u0010#R\"\u0010\u000b\u001a\u00020\n8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b!\u0010$\u001a\u0004\b\u001a\u0010\u0011\"\u0004\b%\u0010&R\u0014\u0010)\u001a\u00020'8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010(¨\u0006*"}, d2 = {"Lio/didomi/sdk/J6$d;", "Lio/didomi/sdk/J6;", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "title", "subtitle", "", "isEssential", "isChecked", "", "typeId", "<init>", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Ljava/lang/String;Ljava/lang/String;ZZI)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "c", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "g", "()Z", InneractiveMediationDefs.GENDER_FEMALE, "setChecked", "(Z)V", "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Category extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final PurposeCategory category;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String subtitle;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final boolean isEssential;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private boolean isChecked;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Category(PurposeCategory category, String title, String subtitle, boolean z, boolean z2, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(category, "category");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            this.category = category;
            this.title = title;
            this.subtitle = subtitle;
            this.isEssential = z;
            this.isChecked = z2;
            this.typeId = i;
        }

        public /* synthetic */ Category(PurposeCategory purposeCategory, String str, String str2, boolean z, boolean z2, int i, int i2, n nVar) {
            this(purposeCategory, str, str2, z, z2, (i2 & 32) != 0 ? 7 : i);
        }

        @Override // io.didomi.drawable.J6
        public long a() {
            return this.category.hashCode() + 7;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final PurposeCategory getCategory() {
            return this.category;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getSubtitle() {
            return this.subtitle;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Category)) {
                return false;
            }
            Category category = (Category) other;
            return Intrinsics.areEqual(this.category, category.category) && Intrinsics.areEqual(this.title, category.title) && Intrinsics.areEqual(this.subtitle, category.subtitle) && this.isEssential == category.isEssential && this.isChecked == category.isChecked && this.typeId == category.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final boolean getIsChecked() {
            return this.isChecked;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final boolean getIsEssential() {
            return this.isEssential;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iHashCode = ((((this.category.hashCode() * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31;
            boolean z = this.isEssential;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i = (iHashCode + r1) * 31;
            boolean z2 = this.isChecked;
            return ((i + (z2 ? 1 : z2)) * 31) + this.typeId;
        }

        public String toString() {
            return "Category(category=" + this.category + ", title=" + this.title + ", subtitle=" + this.subtitle + ", isEssential=" + this.isEssential + ", isChecked=" + this.isChecked + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$e, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/J6$e;", "Lio/didomi/sdk/J6;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Description extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Description(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ Description(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 3 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Description)) {
                return false;
            }
            Description description = (Description) other;
            return Intrinsics.areEqual(this.text, description.text) && this.typeId == description.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "Description(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$f, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\u0005¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/J6$f;", "Lio/didomi/sdk/J6;", "", "typeId", "<init>", "(I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "setTypeId", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Divider extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private int typeId;

        public Divider() {
            this(0, 1, null);
        }

        public Divider(int i) {
            super(null);
            this.typeId = i;
        }

        public /* synthetic */ Divider(int i, int i2, n nVar) {
            this((i2 & 1) != 0 ? 0 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Divider) && this.typeId == ((Divider) other).typeId;
        }

        public int hashCode() {
            return this.typeId;
        }

        public String toString() {
            return "Divider(typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$g, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\u0005¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/J6$g;", "Lio/didomi/sdk/J6;", "", "typeId", "<init>", "(I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "setTypeId", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Footer extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private int typeId;

        public Footer() {
            this(0, 1, null);
        }

        public Footer(int i) {
            super(null);
            this.typeId = i;
        }

        public /* synthetic */ Footer(int i, int i2, n nVar) {
            this((i2 & 1) != 0 ? 12 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Footer) && this.typeId == ((Footer) other).typeId;
        }

        public int hashCode() {
            return this.typeId;
        }

        public String toString() {
            return "Footer(typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$h, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\u0005¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/J6$h;", "Lio/didomi/sdk/J6;", "", "typeId", "<init>", "(I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "setTypeId", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Header extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private int typeId;

        public Header() {
            this(0, 1, null);
        }

        public Header(int i) {
            super(null);
            this.typeId = i;
        }

        public /* synthetic */ Header(int i, int i2, n nVar) {
            this((i2 & 1) != 0 ? 1 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Header) && this.typeId == ((Header) other).typeId;
        }

        public int hashCode() {
            return this.typeId;
        }

        public String toString() {
            return "Header(typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$i, reason: from toString */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0013\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001e2\u00020\u0001:\u0001\u0015B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u000eR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u001a\u001a\u0004\b\u001c\u0010\u000eR\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\"\u0010\n\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\"\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b#\u0010$R\u0014\u0010'\u001a\u00020%8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010&¨\u0006("}, d2 = {"Lio/didomi/sdk/J6$i;", "Lio/didomi/sdk/J6;", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "", "title", "subtitle", "", "isChecked", "", "typeId", "<init>", "(Lio/didomi/sdk/models/InternalPurpose;Ljava/lang/String;Ljava/lang/String;ZI)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/models/InternalPurpose;", "c", "()Lio/didomi/sdk/models/InternalPurpose;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", InneractiveMediationDefs.GENDER_FEMALE, "()Z", "setChecked", "(Z)V", "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Purpose extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final InternalPurpose purpose;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String subtitle;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private boolean isChecked;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Purpose(InternalPurpose purpose, String title, String subtitle, boolean z, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(purpose, "purpose");
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(subtitle, "subtitle");
            this.purpose = purpose;
            this.title = title;
            this.subtitle = subtitle;
            this.isChecked = z;
            this.typeId = i;
        }

        public /* synthetic */ Purpose(InternalPurpose internalPurpose, String str, String str2, boolean z, int i, int i2, n nVar) {
            this(internalPurpose, str, str2, z, (i2 & 16) != 0 ? 8 : i);
        }

        @Override // io.didomi.drawable.J6
        public long a() {
            return this.purpose.hashCode() + 8;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final InternalPurpose getPurpose() {
            return this.purpose;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getSubtitle() {
            return this.subtitle;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Purpose)) {
                return false;
            }
            Purpose purpose = (Purpose) other;
            return Intrinsics.areEqual(this.purpose, purpose.purpose) && Intrinsics.areEqual(this.title, purpose.title) && Intrinsics.areEqual(this.subtitle, purpose.subtitle) && this.isChecked == purpose.isChecked && this.typeId == purpose.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final boolean getIsChecked() {
            return this.isChecked;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        public int hashCode() {
            int iHashCode = ((((this.purpose.hashCode() * 31) + this.title.hashCode()) * 31) + this.subtitle.hashCode()) * 31;
            boolean z = this.isChecked;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((iHashCode + r1) * 31) + this.typeId;
        }

        public String toString() {
            return "Purpose(purpose=" + this.purpose + ", title=" + this.title + ", subtitle=" + this.subtitle + ", isChecked=" + this.isChecked + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$j, reason: from toString */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/J6$j;", "Lio/didomi/sdk/J6;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class SdkStorageDisclosureItem extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SdkStorageDisclosureItem(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ SdkStorageDisclosureItem(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 11 : i);
        }

        @Override // io.didomi.drawable.J6
        public long a() {
            return 11L;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof SdkStorageDisclosureItem)) {
                return false;
            }
            SdkStorageDisclosureItem sdkStorageDisclosureItem = (SdkStorageDisclosureItem) other;
            return Intrinsics.areEqual(this.text, sdkStorageDisclosureItem.text) && this.typeId == sdkStorageDisclosureItem.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "SdkStorageDisclosureItem(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$k, reason: from toString */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/J6$k;", "Lio/didomi/sdk/J6;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Section extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Section(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ Section(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 5 : i);
        }

        @Override // io.didomi.drawable.J6
        public long a() {
            return this.text.hashCode() + 5;
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Section)) {
                return false;
            }
            Section section = (Section) other;
            return Intrinsics.areEqual(this.text, section.text) && this.typeId == section.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "Section(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.J6$l, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/J6$l;", "Lio/didomi/sdk/J6;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Title extends J6 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Title(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ Title(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 2 : i);
        }

        @Override // io.didomi.drawable.J6
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Title)) {
                return false;
            }
            Title title = (Title) other;
            return Intrinsics.areEqual(this.text, title.text) && this.typeId == title.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "Title(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    private J6() {
    }

    public /* synthetic */ J6(n nVar) {
        this();
    }

    public long a() {
        return getTypeId();
    }

    /* JADX INFO: renamed from: b */
    public abstract int getTypeId();
}
