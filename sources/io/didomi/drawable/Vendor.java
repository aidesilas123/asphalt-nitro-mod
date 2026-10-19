package io.didomi.drawable;

import androidx.annotation.Keep;
import com.facebook.share.internal.ShareConstants;
import com.google.gson.r.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b$\n\u0002\u0010\b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001:\u00029:B\u00ad\u0001\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t\u0012\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0002\u0010\u0013J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\u000f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\tHÆ\u0003J\t\u0010*\u001a\u00020\u0012HÆ\u0003J\t\u0010+\u001a\u00020\u0003HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000f\u00101\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\u000f\u00102\u001a\b\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J±\u0001\u00103\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u000e\b\u0002\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u000e\b\u0002\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0010\b\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t2\b\b\u0002\u0010\u0011\u001a\u00020\u0012HÆ\u0001J\u0013\u00104\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00106\u001a\u000207HÖ\u0001J\t\u00108\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0019R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b \u0010!\u001a\u0004\b\"\u0010\u0018R\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0015R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0015R\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0015R\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0015¨\u0006;"}, d2 = {"Lio/didomi/sdk/Vendor;", "", "id", "", "name", "namespaces", "Lio/didomi/sdk/Vendor$Namespaces;", "policyUrl", "purposeIds", "", "legIntPurposeIds", "featureIds", "flexiblePurposeIds", "specialFeatureIds", "specialPurposeIds", "urls", "Lio/didomi/sdk/Vendor$Url;", "isIAB", "", "(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/Vendor$Namespaces;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V", "getFeatureIds", "()Ljava/util/List;", "getFlexiblePurposeIds", "getId", "()Ljava/lang/String;", "()Z", "getLegIntPurposeIds", "getName", "getNamespaces", "()Lio/didomi/sdk/Vendor$Namespaces;", "getPolicyUrl", "privacyPolicyUrl", "getPrivacyPolicyUrl$annotations", "()V", "getPrivacyPolicyUrl", "getPurposeIds", "getSpecialFeatureIds", "getSpecialPurposeIds", "getUrls", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "", "toString", "Namespaces", "Url", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Vendor {

    @c("featureIds")
    private final List<String> featureIds;

    @c("flexiblePurposeIds")
    private final List<String> flexiblePurposeIds;

    @c("id")
    private final String id;

    @c("isIAB")
    private final boolean isIAB;

    @c("legIntPurposeIds")
    private final List<String> legIntPurposeIds;

    @c("name")
    private final String name;

    @c("namespaces")
    private final Namespaces namespaces;

    @c("policyUrl")
    private final String policyUrl;

    @c("purposeIds")
    private final List<String> purposeIds;

    @c("specialFeatureIds")
    private final List<String> specialFeatureIds;

    @c("specialPurposeIds")
    private final List<String> specialPurposeIds;

    @c("urls")
    private final List<Url> urls;

    @Keep
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\n\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\tJ\u0010\u0010\u000f\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0016\u001a\u0004\b\u0017\u0010\t\"\u0004\b\u0018\u0010\u0019R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u001b\u0010\u000b\"\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Lio/didomi/sdk/Vendor$Namespaces;", "Lio/didomi/sdk/N3;", "", "iab2", "", "num", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/lang/Integer;", "copy", "(Ljava/lang/String;Ljava/lang/Integer;)Lio/didomi/sdk/Vendor$Namespaces;", "toString", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getIab2", "setIab2", "(Ljava/lang/String;)V", "Ljava/lang/Integer;", "getNum", "setNum", "(Ljava/lang/Integer;)V", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class Namespaces implements N3 {

        @c("iab2")
        private String iab2;

        @c("num")
        private Integer num;

        /* JADX WARN: Multi-variable type inference failed */
        public Namespaces() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public Namespaces(String str, Integer num) {
            this.iab2 = str;
            this.num = num;
        }

        public /* synthetic */ Namespaces(String str, Integer num, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : num);
        }

        public static /* synthetic */ Namespaces copy$default(Namespaces namespaces, String str, Integer num, int i, Object obj) {
            if ((i & 1) != 0) {
                str = namespaces.iab2;
            }
            if ((i & 2) != 0) {
                num = namespaces.num;
            }
            return namespaces.copy(str, num);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getIab2() {
            return this.iab2;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Integer getNum() {
            return this.num;
        }

        public final Namespaces copy(String iab2, Integer num) {
            return new Namespaces(iab2, num);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Namespaces)) {
                return false;
            }
            Namespaces namespaces = (Namespaces) other;
            return Intrinsics.areEqual(this.iab2, namespaces.iab2) && Intrinsics.areEqual(this.num, namespaces.num);
        }

        public final String getIab2() {
            return this.iab2;
        }

        @Override // io.didomi.drawable.N3
        public Integer getNum() {
            return this.num;
        }

        public int hashCode() {
            String str = this.iab2;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.num;
            return iHashCode + (num != null ? num.hashCode() : 0);
        }

        public final void setIab2(String str) {
            this.iab2 = str;
        }

        public void setNum(Integer num) {
            this.num = num;
        }

        public String toString() {
            return "Namespaces(iab2=" + this.iab2 + ", num=" + this.num + ')';
        }
    }

    @Keep
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/Vendor$Url;", "", "langId", "", ShareConstants.WEB_DIALOG_PARAM_PRIVACY, "legIntClaim", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getLangId", "()Ljava/lang/String;", "getLegIntClaim", "getPrivacy", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "android_release"}, mv = {1, 8, 0}, xi = 48)
    public static final /* data */ class Url {

        @c("langId")
        private final String langId;

        @c("legIntClaim")
        private final String legIntClaim;

        @c(ShareConstants.WEB_DIALOG_PARAM_PRIVACY)
        private final String privacy;

        public Url() {
            this(null, null, null, 7, null);
        }

        public Url(String str, String str2, String str3) {
            this.langId = str;
            this.privacy = str2;
            this.legIntClaim = str3;
        }

        public /* synthetic */ Url(String str, String str2, String str3, int i, n nVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
        }

        public static /* synthetic */ Url copy$default(Url url, String str, String str2, String str3, int i, Object obj) {
            if ((i & 1) != 0) {
                str = url.langId;
            }
            if ((i & 2) != 0) {
                str2 = url.privacy;
            }
            if ((i & 4) != 0) {
                str3 = url.legIntClaim;
            }
            return url.copy(str, str2, str3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getLangId() {
            return this.langId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getPrivacy() {
            return this.privacy;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getLegIntClaim() {
            return this.legIntClaim;
        }

        public final Url copy(String langId, String privacy, String legIntClaim) {
            return new Url(langId, privacy, legIntClaim);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Url)) {
                return false;
            }
            Url url = (Url) other;
            return Intrinsics.areEqual(this.langId, url.langId) && Intrinsics.areEqual(this.privacy, url.privacy) && Intrinsics.areEqual(this.legIntClaim, url.legIntClaim);
        }

        public final String getLangId() {
            return this.langId;
        }

        public final String getLegIntClaim() {
            return this.legIntClaim;
        }

        public final String getPrivacy() {
            return this.privacy;
        }

        public int hashCode() {
            String str = this.langId;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.privacy;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.legIntClaim;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public String toString() {
            return "Url(langId=" + this.langId + ", privacy=" + this.privacy + ", legIntClaim=" + this.legIntClaim + ')';
        }
    }

    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> flexiblePurposeIds, List<String> specialFeatureIds, List<String> specialPurposeIds, List<Url> list, boolean z) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
        Intrinsics.checkNotNullParameter(specialPurposeIds, "specialPurposeIds");
        this.id = id;
        this.name = name;
        this.namespaces = namespaces;
        this.policyUrl = str;
        this.purposeIds = purposeIds;
        this.legIntPurposeIds = legIntPurposeIds;
        this.featureIds = featureIds;
        this.flexiblePurposeIds = flexiblePurposeIds;
        this.specialFeatureIds = specialFeatureIds;
        this.specialPurposeIds = specialPurposeIds;
        this.urls = list;
        this.isIAB = z;
    }

    public /* synthetic */ Vendor(String str, String str2, Namespaces namespaces, String str3, List list, List list2, List list3, List list4, List list5, List list6, List list7, boolean z, int i, n nVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? null : namespaces, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list, (i & 32) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list2, (i & 64) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list3, (i & 128) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list4, (i & 256) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list5, (i & 512) != 0 ? CollectionsKt__CollectionsKt.emptyList() : list6, (i & 1024) != 0 ? null : list7, z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> flexiblePurposeIds, List<String> specialFeatureIds, List<String> specialPurposeIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, legIntPurposeIds, featureIds, flexiblePurposeIds, specialFeatureIds, specialPurposeIds, null, z, 1024, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
        Intrinsics.checkNotNullParameter(specialPurposeIds, "specialPurposeIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> flexiblePurposeIds, List<String> specialFeatureIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, legIntPurposeIds, featureIds, flexiblePurposeIds, specialFeatureIds, null, null, z, 1536, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> flexiblePurposeIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, legIntPurposeIds, featureIds, flexiblePurposeIds, null, null, null, z, 1792, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, legIntPurposeIds, featureIds, null, null, null, null, z, 1920, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, List<String> legIntPurposeIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, legIntPurposeIds, null, null, null, null, null, z, 1984, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, List<String> purposeIds, boolean z) {
        this(id, name, namespaces, str, purposeIds, null, null, null, null, null, null, z, 2016, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, String str, boolean z) {
        this(id, name, namespaces, str, null, null, null, null, null, null, null, z, 2032, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, Namespaces namespaces, boolean z) {
        this(id, name, namespaces, null, null, null, null, null, null, null, null, z, 2040, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, String name, boolean z) {
        this(id, name, null, null, null, null, null, null, null, null, null, z, 2044, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Vendor(String id, boolean z) {
        this(id, null, null, null, null, null, null, null, null, null, null, z, 2046, null);
        Intrinsics.checkNotNullParameter(id, "id");
    }

    public Vendor(boolean z) {
        this(null, null, null, null, null, null, null, null, null, null, null, z, 2047, null);
    }

    public static /* synthetic */ void getPrivacyPolicyUrl$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    public final List<String> component10() {
        return this.specialPurposeIds;
    }

    public final List<Url> component11() {
        return this.urls;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final boolean getIsIAB() {
        return this.isIAB;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Namespaces getNamespaces() {
        return this.namespaces;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getPolicyUrl() {
        return this.policyUrl;
    }

    public final List<String> component5() {
        return this.purposeIds;
    }

    public final List<String> component6() {
        return this.legIntPurposeIds;
    }

    public final List<String> component7() {
        return this.featureIds;
    }

    public final List<String> component8() {
        return this.flexiblePurposeIds;
    }

    public final List<String> component9() {
        return this.specialFeatureIds;
    }

    public final Vendor copy(String id, String name, Namespaces namespaces, String policyUrl, List<String> purposeIds, List<String> legIntPurposeIds, List<String> featureIds, List<String> flexiblePurposeIds, List<String> specialFeatureIds, List<String> specialPurposeIds, List<Url> urls, boolean isIAB) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(purposeIds, "purposeIds");
        Intrinsics.checkNotNullParameter(legIntPurposeIds, "legIntPurposeIds");
        Intrinsics.checkNotNullParameter(featureIds, "featureIds");
        Intrinsics.checkNotNullParameter(flexiblePurposeIds, "flexiblePurposeIds");
        Intrinsics.checkNotNullParameter(specialFeatureIds, "specialFeatureIds");
        Intrinsics.checkNotNullParameter(specialPurposeIds, "specialPurposeIds");
        return new Vendor(id, name, namespaces, policyUrl, purposeIds, legIntPurposeIds, featureIds, flexiblePurposeIds, specialFeatureIds, specialPurposeIds, urls, isIAB);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Vendor)) {
            return false;
        }
        Vendor vendor = (Vendor) other;
        return Intrinsics.areEqual(this.id, vendor.id) && Intrinsics.areEqual(this.name, vendor.name) && Intrinsics.areEqual(this.namespaces, vendor.namespaces) && Intrinsics.areEqual(this.policyUrl, vendor.policyUrl) && Intrinsics.areEqual(this.purposeIds, vendor.purposeIds) && Intrinsics.areEqual(this.legIntPurposeIds, vendor.legIntPurposeIds) && Intrinsics.areEqual(this.featureIds, vendor.featureIds) && Intrinsics.areEqual(this.flexiblePurposeIds, vendor.flexiblePurposeIds) && Intrinsics.areEqual(this.specialFeatureIds, vendor.specialFeatureIds) && Intrinsics.areEqual(this.specialPurposeIds, vendor.specialPurposeIds) && Intrinsics.areEqual(this.urls, vendor.urls) && this.isIAB == vendor.isIAB;
    }

    public final List<String> getFeatureIds() {
        return this.featureIds;
    }

    public final List<String> getFlexiblePurposeIds() {
        return this.flexiblePurposeIds;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getLegIntPurposeIds() {
        return this.legIntPurposeIds;
    }

    public final String getName() {
        return this.name;
    }

    public final Namespaces getNamespaces() {
        return this.namespaces;
    }

    public final String getPolicyUrl() {
        return this.policyUrl;
    }

    public final String getPrivacyPolicyUrl() {
        return this.policyUrl;
    }

    public final List<String> getPurposeIds() {
        return this.purposeIds;
    }

    public final List<String> getSpecialFeatureIds() {
        return this.specialFeatureIds;
    }

    public final List<String> getSpecialPurposeIds() {
        return this.specialPurposeIds;
    }

    public final List<Url> getUrls() {
        return this.urls;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22, types: [int] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v26 */
    public int hashCode() {
        int iHashCode = ((this.id.hashCode() * 31) + this.name.hashCode()) * 31;
        Namespaces namespaces = this.namespaces;
        int iHashCode2 = (iHashCode + (namespaces == null ? 0 : namespaces.hashCode())) * 31;
        String str = this.policyUrl;
        int iHashCode3 = (((((((((((((iHashCode2 + (str == null ? 0 : str.hashCode())) * 31) + this.purposeIds.hashCode()) * 31) + this.legIntPurposeIds.hashCode()) * 31) + this.featureIds.hashCode()) * 31) + this.flexiblePurposeIds.hashCode()) * 31) + this.specialFeatureIds.hashCode()) * 31) + this.specialPurposeIds.hashCode()) * 31;
        List<Url> list = this.urls;
        int iHashCode4 = (iHashCode3 + (list != null ? list.hashCode() : 0)) * 31;
        boolean z = this.isIAB;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        return iHashCode4 + r1;
    }

    public final boolean isIAB() {
        return this.isIAB;
    }

    public String toString() {
        return "Vendor(id=" + this.id + ", name=" + this.name + ", namespaces=" + this.namespaces + ", policyUrl=" + this.policyUrl + ", purposeIds=" + this.purposeIds + ", legIntPurposeIds=" + this.legIntPurposeIds + ", featureIds=" + this.featureIds + ", flexiblePurposeIds=" + this.flexiblePurposeIds + ", specialFeatureIds=" + this.specialFeatureIds + ", specialPurposeIds=" + this.specialPurposeIds + ", urls=" + this.urls + ", isIAB=" + this.isIAB + ')';
    }
}
