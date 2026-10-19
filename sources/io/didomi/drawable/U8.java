package io.didomi.drawable;

import android.text.Spanned;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.o2;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0005\r\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000f\u001a\u00020\f8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0003\u0010\u0011\u0012¨\u0006\u0013"}, d2 = {"Lio/didomi/sdk/U8;", "", "<init>", "()V", "", "a", "()J", "id", "", "c", "()I", "typeId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()Z", "preventListAccessibilityAnnouncement", "Lio/didomi/sdk/U8$a;", "Lio/didomi/sdk/U8$b;", "Lio/didomi/sdk/U8$c;", "android_release"}, mv = {1, 8, 0})
public abstract class U8 {

    /* JADX INFO: renamed from: io.didomi.sdk.U8$a, reason: from toString */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u001d\b\u0086\b\u0018\u0000 \u001b2\u00020\u0001:\u0001\u0019BY\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0017\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0012R\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001a\u001a\u0004\b\u001d\u0010\u0012R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u001d\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0006¢\u0006\f\n\u0004\b \u0010\u001f\u001a\u0004\b\"\u0010!R\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b#\u0010\u001a\u001a\u0004\b#\u0010\u0012R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010\u000e\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b%\u0010.\u001a\u0004\b\u001e\u0010\u0014\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\t8\u0016X\u0096D¢\u0006\f\n\u0004\b*\u0010$\u001a\u0004\b\u001c\u0010&¨\u00062"}, d2 = {"Lio/didomi/sdk/U8$a;", "Lio/didomi/sdk/U8;", "", "title", "accessibilityLabel", "", "accessibilityActionDescription", "accessibilityStateDescription", "accessibilityAnnounceStateLabel", "", "hasMiddleState", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "typeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLio/didomi/sdk/view/mobile/DidomiToggle$b;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "j", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, InneractiveMediationDefs.GENDER_FEMALE, "c", "Ljava/util/List;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/util/List;", "g", "e", "Z", "h", "()Z", "setHasMiddleState", "(Z)V", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "i", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "setState", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "I", "setTypeId", "(I)V", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Bulk extends U8 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String accessibilityLabel;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final List<String> accessibilityActionDescription;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final List<String> accessibilityStateDescription;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private final String accessibilityAnnounceStateLabel;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
        private boolean hasMiddleState;

        /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
        private DidomiToggle.b state;

        /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX INFO: renamed from: i, reason: from kotlin metadata */
        private final boolean preventListAccessibilityAnnouncement;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Bulk(String title, String str, List<String> accessibilityActionDescription, List<String> accessibilityStateDescription, String str2, boolean z, DidomiToggle.b state, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(accessibilityActionDescription, "accessibilityActionDescription");
            Intrinsics.checkNotNullParameter(accessibilityStateDescription, "accessibilityStateDescription");
            Intrinsics.checkNotNullParameter(state, "state");
            this.title = title;
            this.accessibilityLabel = str;
            this.accessibilityActionDescription = accessibilityActionDescription;
            this.accessibilityStateDescription = accessibilityStateDescription;
            this.accessibilityAnnounceStateLabel = str2;
            this.hasMiddleState = z;
            this.state = state;
            this.typeId = i;
            this.preventListAccessibilityAnnouncement = true;
        }

        public /* synthetic */ Bulk(String str, String str2, List list, List list2, String str3, boolean z, DidomiToggle.b bVar, int i, int i2, n nVar) {
            this(str, str2, list, list2, str3, z, bVar, (i2 & 128) != 0 ? 1 : i);
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: b, reason: from getter */
        public boolean getPreventListAccessibilityAnnouncement() {
            return this.preventListAccessibilityAnnouncement;
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: c, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        public final List<String> d() {
            return this.accessibilityActionDescription;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getAccessibilityAnnounceStateLabel() {
            return this.accessibilityAnnounceStateLabel;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Bulk)) {
                return false;
            }
            Bulk bulk = (Bulk) other;
            return Intrinsics.areEqual(this.title, bulk.title) && Intrinsics.areEqual(this.accessibilityLabel, bulk.accessibilityLabel) && Intrinsics.areEqual(this.accessibilityActionDescription, bulk.accessibilityActionDescription) && Intrinsics.areEqual(this.accessibilityStateDescription, bulk.accessibilityStateDescription) && Intrinsics.areEqual(this.accessibilityAnnounceStateLabel, bulk.accessibilityAnnounceStateLabel) && this.hasMiddleState == bulk.hasMiddleState && this.state == bulk.state && this.typeId == bulk.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final String getAccessibilityLabel() {
            return this.accessibilityLabel;
        }

        public final List<String> g() {
            return this.accessibilityStateDescription;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final boolean getHasMiddleState() {
            return this.hasMiddleState;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v9, types: [int] */
        public int hashCode() {
            int iHashCode = this.title.hashCode() * 31;
            String str = this.accessibilityLabel;
            int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.accessibilityActionDescription.hashCode()) * 31) + this.accessibilityStateDescription.hashCode()) * 31;
            String str2 = this.accessibilityAnnounceStateLabel;
            int iHashCode3 = (iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
            boolean z = this.hasMiddleState;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((((iHashCode3 + r1) * 31) + this.state.hashCode()) * 31) + this.typeId;
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final DidomiToggle.b getState() {
            return this.state;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public String toString() {
            return "Bulk(title=" + this.title + ", accessibilityLabel=" + this.accessibilityLabel + ", accessibilityActionDescription=" + this.accessibilityActionDescription + ", accessibilityStateDescription=" + this.accessibilityStateDescription + ", accessibilityAnnounceStateLabel=" + this.accessibilityAnnounceStateLabel + ", hasMiddleState=" + this.hasMiddleState + ", state=" + this.state + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.U8$b, reason: from toString */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0015\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0001\u0016B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u000eR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0017\u001a\u0004\b!\u0010\u000eR\"\u0010\n\u001a\u00020\t8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\"\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b#\u0010$R\u001a\u0010'\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\u001f\u0010%\u001a\u0004\b\u0019\u0010&¨\u0006("}, d2 = {"Lio/didomi/sdk/U8$b;", "Lio/didomi/sdk/U8;", "", "title", "Landroid/text/Spanned;", "description", "Lio/didomi/sdk/a;", "userInfoButtonAccessibility", "userInfoButtonLabel", "", "typeId", "<init>", "(Ljava/lang/String;Landroid/text/Spanned;Lio/didomi/sdk/a;Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "e", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/text/Spanned;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Landroid/text/Spanned;", "c", "Lio/didomi/sdk/a;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/a;", "g", "I", "setTypeId", "(I)V", "Z", "()Z", "preventListAccessibilityAnnouncement", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Header extends U8 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final Spanned description;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final Accessibility userInfoButtonAccessibility;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final String userInfoButtonLabel;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
        private final boolean preventListAccessibilityAnnouncement;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Header(String title, Spanned spanned, Accessibility userInfoButtonAccessibility, String userInfoButtonLabel, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(userInfoButtonAccessibility, "userInfoButtonAccessibility");
            Intrinsics.checkNotNullParameter(userInfoButtonLabel, "userInfoButtonLabel");
            this.title = title;
            this.description = spanned;
            this.userInfoButtonAccessibility = userInfoButtonAccessibility;
            this.userInfoButtonLabel = userInfoButtonLabel;
            this.typeId = i;
            this.preventListAccessibilityAnnouncement = true;
        }

        public /* synthetic */ Header(String str, Spanned spanned, Accessibility accessibility, String str2, int i, int i2, n nVar) {
            this(str, spanned, accessibility, str2, (i2 & 16) != 0 ? 0 : i);
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: b, reason: from getter */
        public boolean getPreventListAccessibilityAnnouncement() {
            return this.preventListAccessibilityAnnouncement;
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: c, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final Spanned getDescription() {
            return this.description;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Header)) {
                return false;
            }
            Header header = (Header) other;
            return Intrinsics.areEqual(this.title, header.title) && Intrinsics.areEqual(this.description, header.description) && Intrinsics.areEqual(this.userInfoButtonAccessibility, header.userInfoButtonAccessibility) && Intrinsics.areEqual(this.userInfoButtonLabel, header.userInfoButtonLabel) && this.typeId == header.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final Accessibility getUserInfoButtonAccessibility() {
            return this.userInfoButtonAccessibility;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final String getUserInfoButtonLabel() {
            return this.userInfoButtonLabel;
        }

        public int hashCode() {
            int iHashCode = this.title.hashCode() * 31;
            Spanned spanned = this.description;
            return ((((((iHashCode + (spanned == null ? 0 : spanned.hashCode())) * 31) + this.userInfoButtonAccessibility.hashCode()) * 31) + this.userInfoButtonLabel.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "Header(title=" + this.title + ", description=" + ((Object) this.description) + ", userInfoButtonAccessibility=" + this.userInfoButtonAccessibility + ", userInfoButtonLabel=" + this.userInfoButtonLabel + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.U8$c, reason: from toString */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\"\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u0000 >2\u00020\u0001:\u0002\u001c Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u001a\u0010\u001a\u001a\u00020\u000b2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010\u0017R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010\u0015R\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(R\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\b8\u0006¢\u0006\f\n\u0004\b'\u0010&\u001a\u0004\b)\u0010(R\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010*\u001a\u0004\b0\u0010,\"\u0004\b1\u0010.R\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010*\u001a\u0004\b/\u0010,\"\u0004\b3\u0010.R$\u0010\u0010\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u00104\u001a\u0004\b2\u00105\"\u0004\b\u001c\u00106R\"\u0010\u0011\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010!\u001a\u0004\b#\u0010\u0017\"\u0004\b7\u00108R\u001a\u0010:\u001a\u00020\u000b8\u0016X\u0096D¢\u0006\f\n\u0004\b9\u0010*\u001a\u0004\b \u0010,R\u0014\u0010=\u001a\u00020;8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010<¨\u0006?"}, d2 = {"Lio/didomi/sdk/U8$c;", "Lio/didomi/sdk/U8;", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "", o2.h.L, "", "accessibilityActionDescription", "", "accessibilityStateActionDescription", "accessibilityStateDescription", "", "hasBulkAction", "shouldBeEnabledByDefault", "canShowDetails", "Lio/didomi/sdk/U8$c$b;", "detailedInfo", "typeId", "<init>", "(Lio/didomi/sdk/models/InternalVendor;ILjava/lang/String;Ljava/util/List;Ljava/util/List;ZZZLio/didomi/sdk/U8$c$b;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/models/InternalVendor;", "j", "()Lio/didomi/sdk/models/InternalVendor;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "i", "c", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/util/List;", "e", "()Ljava/util/List;", InneractiveMediationDefs.GENDER_FEMALE, "Z", "getHasBulkAction", "()Z", "setHasBulkAction", "(Z)V", "g", "getShouldBeEnabledByDefault", "setShouldBeEnabledByDefault", "h", "setCanShowDetails", "Lio/didomi/sdk/U8$c$b;", "()Lio/didomi/sdk/U8$c$b;", "(Lio/didomi/sdk/U8$c$b;)V", "setTypeId", "(I)V", CampaignEx.JSON_KEY_AD_K, "preventListAccessibilityAnnouncement", "", "()J", "id", "l", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Vendor extends U8 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final InternalVendor vendor;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final int position;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String accessibilityActionDescription;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final List<String> accessibilityStateActionDescription;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private final List<String> accessibilityStateDescription;

        /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
        private boolean hasBulkAction;

        /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
        private boolean shouldBeEnabledByDefault;

        /* JADX INFO: renamed from: h, reason: from kotlin metadata and from toString */
        private boolean canShowDetails;

        /* JADX INFO: renamed from: i, reason: from kotlin metadata and from toString */
        private DetailedInfo detailedInfo;

        /* JADX INFO: renamed from: j, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX INFO: renamed from: k, reason: from kotlin metadata */
        private final boolean preventListAccessibilityAnnouncement;

        /* JADX INFO: renamed from: io.didomi.sdk.U8$c$b, reason: from toString */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0015\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0012\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u0014\u0010\rR$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001a\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\"\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u001f\u001a\u0004\b\u0018\u0010 \"\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lio/didomi/sdk/U8$c$b;", "", "", "title", "", "accessibilityTitle", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "state", "", "hasMiddleState", "<init>", "(Ljava/lang/CharSequence;Ljava/lang/String;Lio/didomi/sdk/view/mobile/DidomiToggle$b;Z)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/CharSequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/CharSequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "c", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "()Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "setState", "(Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "Z", "()Z", "setHasMiddleState", "(Z)V", "android_release"}, mv = {1, 8, 0})
        public static final /* data */ class DetailedInfo {

            /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
            private final CharSequence title;

            /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
            private final String accessibilityTitle;

            /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
            private DidomiToggle.b state;

            /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
            private boolean hasMiddleState;

            public DetailedInfo(CharSequence title, String accessibilityTitle, DidomiToggle.b bVar, boolean z) {
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(accessibilityTitle, "accessibilityTitle");
                this.title = title;
                this.accessibilityTitle = accessibilityTitle;
                this.state = bVar;
                this.hasMiddleState = z;
            }

            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getAccessibilityTitle() {
                return this.accessibilityTitle;
            }

            /* JADX INFO: renamed from: b, reason: from getter */
            public final boolean getHasMiddleState() {
                return this.hasMiddleState;
            }

            /* JADX INFO: renamed from: c, reason: from getter */
            public final DidomiToggle.b getState() {
                return this.state;
            }

            /* JADX INFO: renamed from: d, reason: from getter */
            public final CharSequence getTitle() {
                return this.title;
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof DetailedInfo)) {
                    return false;
                }
                DetailedInfo detailedInfo = (DetailedInfo) other;
                return Intrinsics.areEqual(this.title, detailedInfo.title) && Intrinsics.areEqual(this.accessibilityTitle, detailedInfo.accessibilityTitle) && this.state == detailedInfo.state && this.hasMiddleState == detailedInfo.hasMiddleState;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r1v6, types: [int] */
            /* JADX WARN: Type inference failed for: r1v7 */
            /* JADX WARN: Type inference failed for: r1v9 */
            public int hashCode() {
                int iHashCode = ((this.title.hashCode() * 31) + this.accessibilityTitle.hashCode()) * 31;
                DidomiToggle.b bVar = this.state;
                int iHashCode2 = (iHashCode + (bVar == null ? 0 : bVar.hashCode())) * 31;
                boolean z = this.hasMiddleState;
                ?? r1 = z;
                if (z) {
                    r1 = 1;
                }
                return iHashCode2 + r1;
            }

            public String toString() {
                return "DetailedInfo(title=" + ((Object) this.title) + ", accessibilityTitle=" + this.accessibilityTitle + ", state=" + this.state + ", hasMiddleState=" + this.hasMiddleState + ')';
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Vendor(InternalVendor vendor, int i, String str, List<String> accessibilityStateActionDescription, List<String> accessibilityStateDescription, boolean z, boolean z2, boolean z3, DetailedInfo detailedInfo, int i2) {
            super(null);
            Intrinsics.checkNotNullParameter(vendor, "vendor");
            Intrinsics.checkNotNullParameter(accessibilityStateActionDescription, "accessibilityStateActionDescription");
            Intrinsics.checkNotNullParameter(accessibilityStateDescription, "accessibilityStateDescription");
            this.vendor = vendor;
            this.position = i;
            this.accessibilityActionDescription = str;
            this.accessibilityStateActionDescription = accessibilityStateActionDescription;
            this.accessibilityStateDescription = accessibilityStateDescription;
            this.hasBulkAction = z;
            this.shouldBeEnabledByDefault = z2;
            this.canShowDetails = z3;
            this.detailedInfo = detailedInfo;
            this.typeId = i2;
        }

        public /* synthetic */ Vendor(InternalVendor internalVendor, int i, String str, List list, List list2, boolean z, boolean z2, boolean z3, DetailedInfo detailedInfo, int i2, int i3, n nVar) {
            this(internalVendor, i, str, list, list2, z, (i3 & 64) != 0 ? false : z2, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? null : detailedInfo, (i3 & 512) != 0 ? 2 : i2);
        }

        @Override // io.didomi.drawable.U8
        public long a() {
            return this.position + 2;
        }

        public final void a(DetailedInfo detailedInfo) {
            this.detailedInfo = detailedInfo;
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: b, reason: from getter */
        public boolean getPreventListAccessibilityAnnouncement() {
            return this.preventListAccessibilityAnnouncement;
        }

        @Override // io.didomi.drawable.U8
        /* JADX INFO: renamed from: c, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getAccessibilityActionDescription() {
            return this.accessibilityActionDescription;
        }

        public final List<String> e() {
            return this.accessibilityStateActionDescription;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Vendor)) {
                return false;
            }
            Vendor vendor = (Vendor) other;
            return Intrinsics.areEqual(this.vendor, vendor.vendor) && this.position == vendor.position && Intrinsics.areEqual(this.accessibilityActionDescription, vendor.accessibilityActionDescription) && Intrinsics.areEqual(this.accessibilityStateActionDescription, vendor.accessibilityStateActionDescription) && Intrinsics.areEqual(this.accessibilityStateDescription, vendor.accessibilityStateDescription) && this.hasBulkAction == vendor.hasBulkAction && this.shouldBeEnabledByDefault == vendor.shouldBeEnabledByDefault && this.canShowDetails == vendor.canShowDetails && Intrinsics.areEqual(this.detailedInfo, vendor.detailedInfo) && this.typeId == vendor.typeId;
        }

        public final List<String> f() {
            return this.accessibilityStateDescription;
        }

        /* JADX INFO: renamed from: g, reason: from getter */
        public final boolean getCanShowDetails() {
            return this.canShowDetails;
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final DetailedInfo getDetailedInfo() {
            return this.detailedInfo;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v11, types: [int] */
        /* JADX WARN: Type inference failed for: r1v15 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v18 */
        /* JADX WARN: Type inference failed for: r1v19 */
        /* JADX WARN: Type inference failed for: r1v9, types: [int] */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v1, types: [int] */
        /* JADX WARN: Type inference failed for: r3v2 */
        public int hashCode() {
            int iHashCode = ((this.vendor.hashCode() * 31) + this.position) * 31;
            String str = this.accessibilityActionDescription;
            int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.accessibilityStateActionDescription.hashCode()) * 31) + this.accessibilityStateDescription.hashCode()) * 31;
            boolean z = this.hasBulkAction;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i = (iHashCode2 + r1) * 31;
            boolean z2 = this.shouldBeEnabledByDefault;
            ?? r12 = z2;
            if (z2) {
                r12 = 1;
            }
            int i2 = (i + r12) * 31;
            boolean z3 = this.canShowDetails;
            int i3 = (i2 + (z3 ? 1 : z3)) * 31;
            DetailedInfo detailedInfo = this.detailedInfo;
            return ((i3 + (detailedInfo != null ? detailedInfo.hashCode() : 0)) * 31) + this.typeId;
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final int getPosition() {
            return this.position;
        }

        /* JADX INFO: renamed from: j, reason: from getter */
        public final InternalVendor getVendor() {
            return this.vendor;
        }

        public String toString() {
            return "Vendor(vendor=" + this.vendor + ", position=" + this.position + ", accessibilityActionDescription=" + this.accessibilityActionDescription + ", accessibilityStateActionDescription=" + this.accessibilityStateActionDescription + ", accessibilityStateDescription=" + this.accessibilityStateDescription + ", hasBulkAction=" + this.hasBulkAction + ", shouldBeEnabledByDefault=" + this.shouldBeEnabledByDefault + ", canShowDetails=" + this.canShowDetails + ", detailedInfo=" + this.detailedInfo + ", typeId=" + this.typeId + ')';
        }
    }

    private U8() {
    }

    public /* synthetic */ U8(n nVar) {
        this();
    }

    public long a() {
        return getTypeId();
    }

    /* JADX INFO: renamed from: b */
    public abstract boolean getPreventListAccessibilityAnnouncement();

    /* JADX INFO: renamed from: c */
    public abstract int getTypeId();
}
