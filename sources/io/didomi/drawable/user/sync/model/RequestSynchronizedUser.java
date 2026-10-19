package io.didomi.drawable.user.sync.model;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0011J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J`\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\r¨\u0006%"}, d2 = {"Lio/didomi/sdk/user/sync/model/RequestSynchronizedUser;", "", "organizationUserId", "", "organizationUserIdAlgorithm", "organizationUserIdSid", "organizationUserIdSalt", "organizationUserIdDigest", "organizationUserIdExp", "", "organizationUserIdIv", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V", "getOrganizationUserId", "()Ljava/lang/String;", "getOrganizationUserIdAlgorithm", "getOrganizationUserIdDigest", "getOrganizationUserIdExp", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getOrganizationUserIdIv", "getOrganizationUserIdSalt", "getOrganizationUserIdSid", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)Lio/didomi/sdk/user/sync/model/RequestSynchronizedUser;", "equals", "", "other", "hashCode", "", "toString", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final /* data */ class RequestSynchronizedUser {

    @c("organization_user_id")
    private final String organizationUserId;

    @c("organization_user_id_algorithm")
    private final String organizationUserIdAlgorithm;

    @c("organization_user_id_digest")
    private final String organizationUserIdDigest;

    @c("organization_user_id_exp")
    private final Long organizationUserIdExp;

    @c("organization_user_id_iv")
    private final String organizationUserIdIv;

    @c("organization_user_id_salt")
    private final String organizationUserIdSalt;

    @c("organization_user_id_sid")
    private final String organizationUserIdSid;

    public RequestSynchronizedUser(String organizationUserId, String str, String str2, String str3, String str4, Long l, String str5) {
        Intrinsics.checkNotNullParameter(organizationUserId, "organizationUserId");
        this.organizationUserId = organizationUserId;
        this.organizationUserIdAlgorithm = str;
        this.organizationUserIdSid = str2;
        this.organizationUserIdSalt = str3;
        this.organizationUserIdDigest = str4;
        this.organizationUserIdExp = l;
        this.organizationUserIdIv = str5;
    }

    public static /* synthetic */ RequestSynchronizedUser copy$default(RequestSynchronizedUser requestSynchronizedUser, String str, String str2, String str3, String str4, String str5, Long l, String str6, int i, Object obj) {
        if ((i & 1) != 0) {
            str = requestSynchronizedUser.organizationUserId;
        }
        if ((i & 2) != 0) {
            str2 = requestSynchronizedUser.organizationUserIdAlgorithm;
        }
        String str7 = str2;
        if ((i & 4) != 0) {
            str3 = requestSynchronizedUser.organizationUserIdSid;
        }
        String str8 = str3;
        if ((i & 8) != 0) {
            str4 = requestSynchronizedUser.organizationUserIdSalt;
        }
        String str9 = str4;
        if ((i & 16) != 0) {
            str5 = requestSynchronizedUser.organizationUserIdDigest;
        }
        String str10 = str5;
        if ((i & 32) != 0) {
            l = requestSynchronizedUser.organizationUserIdExp;
        }
        Long l2 = l;
        if ((i & 64) != 0) {
            str6 = requestSynchronizedUser.organizationUserIdIv;
        }
        return requestSynchronizedUser.copy(str, str7, str8, str9, str10, l2, str6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getOrganizationUserId() {
        return this.organizationUserId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getOrganizationUserIdAlgorithm() {
        return this.organizationUserIdAlgorithm;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOrganizationUserIdSid() {
        return this.organizationUserIdSid;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOrganizationUserIdSalt() {
        return this.organizationUserIdSalt;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getOrganizationUserIdDigest() {
        return this.organizationUserIdDigest;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getOrganizationUserIdExp() {
        return this.organizationUserIdExp;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOrganizationUserIdIv() {
        return this.organizationUserIdIv;
    }

    public final RequestSynchronizedUser copy(String organizationUserId, String organizationUserIdAlgorithm, String organizationUserIdSid, String organizationUserIdSalt, String organizationUserIdDigest, Long organizationUserIdExp, String organizationUserIdIv) {
        Intrinsics.checkNotNullParameter(organizationUserId, "organizationUserId");
        return new RequestSynchronizedUser(organizationUserId, organizationUserIdAlgorithm, organizationUserIdSid, organizationUserIdSalt, organizationUserIdDigest, organizationUserIdExp, organizationUserIdIv);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RequestSynchronizedUser)) {
            return false;
        }
        RequestSynchronizedUser requestSynchronizedUser = (RequestSynchronizedUser) other;
        return Intrinsics.areEqual(this.organizationUserId, requestSynchronizedUser.organizationUserId) && Intrinsics.areEqual(this.organizationUserIdAlgorithm, requestSynchronizedUser.organizationUserIdAlgorithm) && Intrinsics.areEqual(this.organizationUserIdSid, requestSynchronizedUser.organizationUserIdSid) && Intrinsics.areEqual(this.organizationUserIdSalt, requestSynchronizedUser.organizationUserIdSalt) && Intrinsics.areEqual(this.organizationUserIdDigest, requestSynchronizedUser.organizationUserIdDigest) && Intrinsics.areEqual(this.organizationUserIdExp, requestSynchronizedUser.organizationUserIdExp) && Intrinsics.areEqual(this.organizationUserIdIv, requestSynchronizedUser.organizationUserIdIv);
    }

    public final String getOrganizationUserId() {
        return this.organizationUserId;
    }

    public final String getOrganizationUserIdAlgorithm() {
        return this.organizationUserIdAlgorithm;
    }

    public final String getOrganizationUserIdDigest() {
        return this.organizationUserIdDigest;
    }

    public final Long getOrganizationUserIdExp() {
        return this.organizationUserIdExp;
    }

    public final String getOrganizationUserIdIv() {
        return this.organizationUserIdIv;
    }

    public final String getOrganizationUserIdSalt() {
        return this.organizationUserIdSalt;
    }

    public final String getOrganizationUserIdSid() {
        return this.organizationUserIdSid;
    }

    public int hashCode() {
        int iHashCode = this.organizationUserId.hashCode() * 31;
        String str = this.organizationUserIdAlgorithm;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.organizationUserIdSid;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.organizationUserIdSalt;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.organizationUserIdDigest;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l = this.organizationUserIdExp;
        int iHashCode6 = (iHashCode5 + (l == null ? 0 : l.hashCode())) * 31;
        String str5 = this.organizationUserIdIv;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public String toString() {
        return "RequestSynchronizedUser(organizationUserId=" + this.organizationUserId + ", organizationUserIdAlgorithm=" + this.organizationUserIdAlgorithm + ", organizationUserIdSid=" + this.organizationUserIdSid + ", organizationUserIdSalt=" + this.organizationUserIdSalt + ", organizationUserIdDigest=" + this.organizationUserIdDigest + ", organizationUserIdExp=" + this.organizationUserIdExp + ", organizationUserIdIv=" + this.organizationUserIdIv + ')';
    }
}
