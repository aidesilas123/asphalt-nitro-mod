package io.didomi.drawable;

import com.facebook.share.internal.ShareConstants;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.gson.d;
import com.google.gson.r.c;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.d5, reason: case insensitive filesystem and from toString */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\f\u0010\rBm\b\u0016\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\f\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001c\u001a\u00020\u001bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u001a\u0010 \u001a\u00020\u001f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b \u0010!R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010#\u001a\u0004\b'\u0010%R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b+\u0010)\u001a\u0004\b,\u0010\u001aR\u001a\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010)\u001a\u0004\b.\u0010\u001aR\u001a\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001a\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\f\n\u0004\b3\u0010)\u001a\u0004\b4\u0010\u001a¨\u00065"}, d2 = {"Lio/didomi/sdk/d5;", "", "Lio/didomi/sdk/g5;", Didomi.VIEW_PURPOSES, Didomi.VIEW_VENDORS, "", "userId", "created", "updated", "Lio/didomi/sdk/f5;", ShareConstants.FEED_SOURCE_PARAM, "action", "<init>", "(Lio/didomi/sdk/g5;Lio/didomi/sdk/g5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/f5;Ljava/lang/String;)V", "Lcom/google/gson/JsonArray;", "enabledPurposeIds", "disabledPurposeIds", "enabledPurposeLegIntIds", "disabledPurposeLegIntIds", "enabledVendorIds", "disabledVendorIds", "enabledVendorLegIntIds", "disabledVendorLegIntIds", "appId", "(Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Lcom/google/gson/JsonArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "a", "Lio/didomi/sdk/g5;", "getPurposes", "()Lio/didomi/sdk/g5;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getVendors", "c", "Ljava/lang/String;", "getUserId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getCreated", "e", "getUpdated", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/f5;", "getSource", "()Lio/didomi/sdk/f5;", "g", "getAction", "android_release"}, mv = {1, 8, 0})
public final /* data */ class QueryStringForWebView {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
    @c(Didomi.VIEW_PURPOSES)
    private final QueryStringStatus purposes;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
    @c(Didomi.VIEW_VENDORS)
    private final QueryStringStatus vendors;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
    @c("user_id")
    private final String userId;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata and from toString */
    @c("created")
    private final String created;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata and from toString */
    @c("updated")
    private final String updated;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata and from toString */
    @c(ShareConstants.FEED_SOURCE_PARAM)
    private final QueryStringSource source;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata and from toString */
    @c("action")
    private final String action;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public QueryStringForWebView(d enabledPurposeIds, d disabledPurposeIds, d enabledPurposeLegIntIds, d disabledPurposeLegIntIds, d enabledVendorIds, d disabledVendorIds, d enabledVendorLegIntIds, d disabledVendorLegIntIds, String str, String created, String updated, String str2) {
        this(new QueryStringStatus(new QueryStringItemsList(enabledPurposeIds, disabledPurposeIds), new QueryStringItemsList(enabledPurposeLegIntIds, disabledPurposeLegIntIds)), new QueryStringStatus(new QueryStringItemsList(enabledVendorIds, disabledVendorIds), new QueryStringItemsList(enabledVendorLegIntIds, disabledVendorLegIntIds)), str, created, updated, new QueryStringSource(MBridgeConstans.DYNAMIC_VIEW_WX_APP, str2), o2.h.K);
        Intrinsics.checkNotNullParameter(enabledPurposeIds, "enabledPurposeIds");
        Intrinsics.checkNotNullParameter(disabledPurposeIds, "disabledPurposeIds");
        Intrinsics.checkNotNullParameter(enabledPurposeLegIntIds, "enabledPurposeLegIntIds");
        Intrinsics.checkNotNullParameter(disabledPurposeLegIntIds, "disabledPurposeLegIntIds");
        Intrinsics.checkNotNullParameter(enabledVendorIds, "enabledVendorIds");
        Intrinsics.checkNotNullParameter(disabledVendorIds, "disabledVendorIds");
        Intrinsics.checkNotNullParameter(enabledVendorLegIntIds, "enabledVendorLegIntIds");
        Intrinsics.checkNotNullParameter(disabledVendorLegIntIds, "disabledVendorLegIntIds");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
    }

    public QueryStringForWebView(QueryStringStatus purposes, QueryStringStatus vendors, String str, String created, String updated, QueryStringSource source, String action) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Intrinsics.checkNotNullParameter(vendors, "vendors");
        Intrinsics.checkNotNullParameter(created, "created");
        Intrinsics.checkNotNullParameter(updated, "updated");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(action, "action");
        this.purposes = purposes;
        this.vendors = vendors;
        this.userId = str;
        this.created = created;
        this.updated = updated;
        this.source = source;
        this.action = action;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QueryStringForWebView)) {
            return false;
        }
        QueryStringForWebView queryStringForWebView = (QueryStringForWebView) other;
        return Intrinsics.areEqual(this.purposes, queryStringForWebView.purposes) && Intrinsics.areEqual(this.vendors, queryStringForWebView.vendors) && Intrinsics.areEqual(this.userId, queryStringForWebView.userId) && Intrinsics.areEqual(this.created, queryStringForWebView.created) && Intrinsics.areEqual(this.updated, queryStringForWebView.updated) && Intrinsics.areEqual(this.source, queryStringForWebView.source) && Intrinsics.areEqual(this.action, queryStringForWebView.action);
    }

    public int hashCode() {
        int iHashCode = ((this.purposes.hashCode() * 31) + this.vendors.hashCode()) * 31;
        String str = this.userId;
        return ((((((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.created.hashCode()) * 31) + this.updated.hashCode()) * 31) + this.source.hashCode()) * 31) + this.action.hashCode();
    }

    public String toString() {
        return "QueryStringForWebView(purposes=" + this.purposes + ", vendors=" + this.vendors + ", userId=" + this.userId + ", created=" + this.created + ", updated=" + this.updated + ", source=" + this.source + ", action=" + this.action + ')';
    }
}
