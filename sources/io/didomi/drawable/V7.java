package io.didomi.drawable;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\n\u0005\t\f\r\u000e\u000f\u0010\u0011\u0012\u0013B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0007\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\u0082\u0001\n\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d¨\u0006\u001e"}, d2 = {"Lio/didomi/sdk/V7;", "", "<init>", "()V", "", "a", "()J", "id", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "()I", "typeId", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", InneractiveMediationDefs.GENDER_FEMALE, "g", "h", "i", "j", "Lio/didomi/sdk/V7$a;", "Lio/didomi/sdk/V7$b;", "Lio/didomi/sdk/V7$c;", "Lio/didomi/sdk/V7$d;", "Lio/didomi/sdk/V7$e;", "Lio/didomi/sdk/V7$f;", "Lio/didomi/sdk/V7$g;", "Lio/didomi/sdk/V7$h;", "Lio/didomi/sdk/V7$i;", "Lio/didomi/sdk/V7$j;", "android_release"}, mv = {1, 8, 0})
public abstract class V7 {

    /* JADX INFO: renamed from: io.didomi.sdk.V7$a, reason: from toString */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0014\u0018B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001c\u001a\u0004\b\u0018\u0010\u000e\"\u0004\b\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010 ¨\u0006\""}, d2 = {"Lio/didomi/sdk/V7$a;", "Lio/didomi/sdk/V7;", "", "text", "Lio/didomi/sdk/V7$a$a;", SDKConstants.PARAM_GAME_REQUESTS_ACTION_TYPE, "", "typeId", "<init>", "(Ljava/lang/CharSequence;Lio/didomi/sdk/V7$a$a;I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/CharSequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/CharSequence;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/V7$a$a;", "c", "()Lio/didomi/sdk/V7$a$a;", "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class ArrowLink extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final CharSequence text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final EnumC0475a actionType;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX INFO: renamed from: io.didomi.sdk.V7$a$a, reason: collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/V7$a$a;", "", "<init>", "(Ljava/lang/String;I)V", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "android_release"}, mv = {1, 8, 0})
        public enum EnumC0475a {
            Iab,
            PrivacyPolicy,
            LegIntClaim,
            EssentialPurpose,
            AdditionalDataProcessing
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ArrowLink(CharSequence text, EnumC0475a actionType, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(actionType, "actionType");
            this.text = text;
            this.actionType = actionType;
            this.typeId = i;
        }

        public /* synthetic */ ArrowLink(CharSequence charSequence, EnumC0475a enumC0475a, int i, int i2, n nVar) {
            this(charSequence, enumC0475a, (i2 & 4) != 0 ? 2 : i);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return (this.actionType.ordinal() * 10) + 2 + this.text.hashCode();
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final EnumC0475a getActionType() {
            return this.actionType;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final CharSequence getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ArrowLink)) {
                return false;
            }
            ArrowLink arrowLink = (ArrowLink) other;
            return Intrinsics.areEqual(this.text, arrowLink.text) && this.actionType == arrowLink.actionType && this.typeId == arrowLink.typeId;
        }

        public int hashCode() {
            return (((this.text.hashCode() * 31) + this.actionType.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "ArrowLink(text=" + ((Object) this.text) + ", actionType=" + this.actionType + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$b, reason: from toString */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0014B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0019\u001a\u0004\b\u001c\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001b\u0010\rR\"\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001d\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010!¨\u0006#"}, d2 = {"Lio/didomi/sdk/V7$b;", "Lio/didomi/sdk/V7;", "", "isChecked", "", "text", "statusOn", "statusOff", "", "typeId", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", InneractiveMediationDefs.GENDER_FEMALE, "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "e", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Consent extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final boolean isChecked;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String statusOn;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final String statusOff;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Consent(boolean z, String text, String statusOn, String statusOff, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(statusOn, "statusOn");
            Intrinsics.checkNotNullParameter(statusOff, "statusOff");
            this.isChecked = z;
            this.text = text;
            this.statusOn = statusOn;
            this.statusOff = statusOff;
            this.typeId = i;
        }

        public /* synthetic */ Consent(boolean z, String str, String str2, String str3, int i, int i2, n nVar) {
            this(z, str, str2, str3, (i2 & 16) != 0 ? 5 : i);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return this.text.hashCode() + 5;
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getStatusOff() {
            return this.statusOff;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getStatusOn() {
            return this.statusOn;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Consent)) {
                return false;
            }
            Consent consent = (Consent) other;
            return this.isChecked == consent.isChecked && Intrinsics.areEqual(this.text, consent.text) && Intrinsics.areEqual(this.statusOn, consent.statusOn) && Intrinsics.areEqual(this.statusOff, consent.statusOff) && this.typeId == consent.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final boolean getIsChecked() {
            return this.isChecked;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v11 */
        public int hashCode() {
            boolean z = this.isChecked;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((((((r0 * 31) + this.text.hashCode()) * 31) + this.statusOn.hashCode()) * 31) + this.statusOff.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "Consent(isChecked=" + this.isChecked + ", text=" + this.text + ", statusOn=" + this.statusOn + ", statusOff=" + this.statusOff + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$c, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Lio/didomi/sdk/V7$c;", "Lio/didomi/sdk/V7;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Cookie extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cookie(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ Cookie(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 9 : i);
        }

        @Override // io.didomi.drawable.V7
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
            if (!(other instanceof Cookie)) {
                return false;
            }
            Cookie cookie = (Cookie) other;
            return Intrinsics.areEqual(this.text, cookie.text) && this.typeId == cookie.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "Cookie(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$d, reason: from toString */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0012B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\nR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0013\u001a\u0004\b\u0016\u0010\nR\"\u0010\u0006\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u001b¨\u0006\u001d"}, d2 = {"Lio/didomi/sdk/V7$d;", "Lio/didomi/sdk/V7;", "", "text", "elementId", "", "typeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class DataCategory extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String elementId;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DataCategory(String text, String elementId, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(elementId, "elementId");
            this.text = text;
            this.elementId = elementId;
            this.typeId = i;
        }

        public /* synthetic */ DataCategory(String str, String str2, int i, int i2, n nVar) {
            this(str, str2, (i2 & 4) != 0 ? 12 : i);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return this.text.hashCode() + 12 + (this.elementId.hashCode() * 10);
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getElementId() {
            return this.elementId;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DataCategory)) {
                return false;
            }
            DataCategory dataCategory = (DataCategory) other;
            return Intrinsics.areEqual(this.text, dataCategory.text) && Intrinsics.areEqual(this.elementId, dataCategory.elementId) && this.typeId == dataCategory.typeId;
        }

        public int hashCode() {
            return (((this.text.hashCode() * 31) + this.elementId.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "DataCategory(text=" + this.text + ", elementId=" + this.elementId + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$e, reason: from toString */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00142\u00020\u0001:\u0001\u0012B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\fR\"\u0010\u0006\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0016\u001a\u0004\b\u0015\u0010\f\"\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\u00020\u001a8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u001b¨\u0006\u001d"}, d2 = {"Lio/didomi/sdk/V7$e;", "Lio/didomi/sdk/V7;", "", "text", "", "index", "typeId", "<init>", "(Ljava/lang/String;II)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "c", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class DeviceStorageDisclosure extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final int index;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceStorageDisclosure(String text, int i, int i2) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.index = i;
            this.typeId = i2;
        }

        public /* synthetic */ DeviceStorageDisclosure(String str, int i, int i2, int i3, n nVar) {
            this(str, i, (i3 & 4) != 0 ? 11 : i2);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return this.text.hashCode() + 11;
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeviceStorageDisclosure)) {
                return false;
            }
            DeviceStorageDisclosure deviceStorageDisclosure = (DeviceStorageDisclosure) other;
            return Intrinsics.areEqual(this.text, deviceStorageDisclosure.text) && this.index == deviceStorageDisclosure.index && this.typeId == deviceStorageDisclosure.typeId;
        }

        public int hashCode() {
            return (((this.text.hashCode() * 31) + this.index) * 31) + this.typeId;
        }

        public String toString() {
            return "DeviceStorageDisclosure(text=" + this.text + ", index=" + this.index + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$f, reason: from toString */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0012B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u000bR\"\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lio/didomi/sdk/V7$f;", "Lio/didomi/sdk/V7;", "", "hasDivider", "", "text", "", "typeId", "<init>", "(ZLjava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", "c", "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class DeviceStorageDisclosureTitle extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final boolean hasDivider;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DeviceStorageDisclosureTitle(boolean z, String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.hasDivider = z;
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ DeviceStorageDisclosureTitle(boolean z, String str, int i, int i2, n nVar) {
            this(z, str, (i2 & 4) != 0 ? 10 : i);
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getHasDivider() {
            return this.hasDivider;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof DeviceStorageDisclosureTitle)) {
                return false;
            }
            DeviceStorageDisclosureTitle deviceStorageDisclosureTitle = (DeviceStorageDisclosureTitle) other;
            return this.hasDivider == deviceStorageDisclosureTitle.hasDivider && Intrinsics.areEqual(this.text, deviceStorageDisclosureTitle.text) && this.typeId == deviceStorageDisclosureTitle.typeId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6 */
        /* JADX WARN: Type inference failed for: r0v7 */
        public int hashCode() {
            boolean z = this.hasDivider;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((r0 * 31) + this.text.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "DeviceStorageDisclosureTitle(hasDivider=" + this.hasDivider + ", text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$g, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000f\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0013B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0014\u001a\u0004\b\u0017\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\"\u0010\b\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u001b\u001a\u0004\b\u0016\u0010\u000e\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lio/didomi/sdk/V7$g;", "Lio/didomi/sdk/V7;", "", "title", "description", "", "isIAB", "", "typeId", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZI)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "Z", "e", "()Z", "I", "setTypeId", "(I)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Disclaimer extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String title;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String description;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final boolean isIAB;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Disclaimer(String title, String description, boolean z, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(description, "description");
            this.title = title;
            this.description = description;
            this.isIAB = z;
            this.typeId = i;
        }

        public /* synthetic */ Disclaimer(String str, String str2, boolean z, int i, int i2, n nVar) {
            this(str, str2, z, (i2 & 8) != 0 ? 1 : i);
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getDescription() {
            return this.description;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getTitle() {
            return this.title;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final boolean getIsIAB() {
            return this.isIAB;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Disclaimer)) {
                return false;
            }
            Disclaimer disclaimer = (Disclaimer) other;
            return Intrinsics.areEqual(this.title, disclaimer.title) && Intrinsics.areEqual(this.description, disclaimer.description) && this.isIAB == disclaimer.isIAB && this.typeId == disclaimer.typeId;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v5 */
        /* JADX WARN: Type inference failed for: r1v6 */
        public int hashCode() {
            int iHashCode = ((this.title.hashCode() * 31) + this.description.hashCode()) * 31;
            boolean z = this.isIAB;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((iHashCode + r1) * 31) + this.typeId;
        }

        public String toString() {
            return "Disclaimer(title=" + this.title + ", description=" + this.description + ", isIAB=" + this.isIAB + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$h, reason: from toString */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0086\b\u0018\u0000 \u00122\u00020\u0001:\u0001\u0010B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\"\u0010\u0003\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\n\"\u0004\b\u0013\u0010\u0005¨\u0006\u0014"}, d2 = {"Lio/didomi/sdk/V7$h;", "Lio/didomi/sdk/V7;", "", "typeId", "<init>", "(I)V", "", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "I", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "setTypeId", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Footer extends V7 {

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
            this((i2 & 1) != 0 ? 13 : i);
        }

        @Override // io.didomi.drawable.V7
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

    /* JADX INFO: renamed from: io.didomi.sdk.V7$i, reason: from toString */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00162\u00020\u0001:\u0001\u0014B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\rR\u0017\u0010\u0006\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0019\u001a\u0004\b\u001c\u0010\rR\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u001c\u0010\u0019\u001a\u0004\b\u001b\u0010\rR\"\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001d\u001a\u0004\b\u0018\u0010\u000f\"\u0004\b\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010!¨\u0006#"}, d2 = {"Lio/didomi/sdk/V7$i;", "Lio/didomi/sdk/V7;", "", "isChecked", "", "text", "statusOn", "statusOff", "", "typeId", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Z", InneractiveMediationDefs.GENDER_FEMALE, "()Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "e", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class LegitimateInterest extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final boolean isChecked;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String statusOn;

        /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
        private final String statusOff;

        /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LegitimateInterest(boolean z, String text, String statusOn, String statusOff, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            Intrinsics.checkNotNullParameter(statusOn, "statusOn");
            Intrinsics.checkNotNullParameter(statusOff, "statusOff");
            this.isChecked = z;
            this.text = text;
            this.statusOn = statusOn;
            this.statusOff = statusOff;
            this.typeId = i;
        }

        public /* synthetic */ LegitimateInterest(boolean z, String str, String str2, String str3, int i, int i2, n nVar) {
            this(z, str, str2, str3, (i2 & 16) != 0 ? 6 : i);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return this.text.hashCode() + 6;
        }

        @Override // io.didomi.drawable.V7
        /* JADX INFO: renamed from: b, reason: from getter */
        public int getTypeId() {
            return this.typeId;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final String getStatusOff() {
            return this.statusOff;
        }

        /* JADX INFO: renamed from: d, reason: from getter */
        public final String getStatusOn() {
            return this.statusOn;
        }

        /* JADX INFO: renamed from: e, reason: from getter */
        public final String getText() {
            return this.text;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof LegitimateInterest)) {
                return false;
            }
            LegitimateInterest legitimateInterest = (LegitimateInterest) other;
            return this.isChecked == legitimateInterest.isChecked && Intrinsics.areEqual(this.text, legitimateInterest.text) && Intrinsics.areEqual(this.statusOn, legitimateInterest.statusOn) && Intrinsics.areEqual(this.statusOff, legitimateInterest.statusOff) && this.typeId == legitimateInterest.typeId;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final boolean getIsChecked() {
            return this.isChecked;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v11 */
        public int hashCode() {
            boolean z = this.isChecked;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            return (((((((r0 * 31) + this.text.hashCode()) * 31) + this.statusOn.hashCode()) * 31) + this.statusOff.hashCode()) * 31) + this.typeId;
        }

        public String toString() {
            return "LegitimateInterest(isChecked=" + this.isChecked + ", text=" + this.text + ", statusOn=" + this.statusOn + ", statusOff=" + this.statusOff + ", typeId=" + this.typeId + ')';
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.V7$j, reason: from toString */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00132\u00020\u0001:\u0001\u0011B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\tR\"\u0010\u0005\u001a\u00020\u00048\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00188VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0019¨\u0006\u001b"}, d2 = {"Lio/didomi/sdk/V7$j;", "Lio/didomi/sdk/V7;", "", "text", "", "typeId", "<init>", "(Ljava/lang/String;I)V", "toString", "()Ljava/lang/String;", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "setTypeId", "(I)V", "", "()J", "id", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class SectionTitle extends V7 {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String text;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private int typeId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SectionTitle(String text, int i) {
            super(null);
            Intrinsics.checkNotNullParameter(text, "text");
            this.text = text;
            this.typeId = i;
        }

        public /* synthetic */ SectionTitle(String str, int i, int i2, n nVar) {
            this(str, (i2 & 2) != 0 ? 4 : i);
        }

        @Override // io.didomi.drawable.V7
        public long a() {
            return this.text.hashCode() + 4;
        }

        @Override // io.didomi.drawable.V7
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
            if (!(other instanceof SectionTitle)) {
                return false;
            }
            SectionTitle sectionTitle = (SectionTitle) other;
            return Intrinsics.areEqual(this.text, sectionTitle.text) && this.typeId == sectionTitle.typeId;
        }

        public int hashCode() {
            return (this.text.hashCode() * 31) + this.typeId;
        }

        public String toString() {
            return "SectionTitle(text=" + this.text + ", typeId=" + this.typeId + ')';
        }
    }

    private V7() {
    }

    public /* synthetic */ V7(n nVar) {
        this();
    }

    public long a() {
        return getTypeId();
    }

    /* JADX INFO: renamed from: b */
    public abstract int getTypeId();
}
