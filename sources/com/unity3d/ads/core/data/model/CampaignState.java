package com.unity3d.ads.core.data.model;

import com.google.protobuf.ByteString;
import com.json.o2;
import gateway.v1.TimestampsOuterClass;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CampaignState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0018\u001a\u00020\tHÆ\u0003J\t\u0010\u0019\u001a\u00020\tHÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\tHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011¨\u0006 "}, d2 = {"Lcom/unity3d/ads/core/data/model/CampaignState;", "", "data", "Lcom/google/protobuf/ByteString;", "dataVersion", "", o2.i, "", "loadTimestamp", "Lgateway/v1/TimestampsOuterClass$Timestamps;", "showTimestamp", "(Lcom/google/protobuf/ByteString;ILjava/lang/String;Lgateway/v1/TimestampsOuterClass$Timestamps;Lgateway/v1/TimestampsOuterClass$Timestamps;)V", "getData", "()Lcom/google/protobuf/ByteString;", "getDataVersion", "()I", "getLoadTimestamp", "()Lgateway/v1/TimestampsOuterClass$Timestamps;", "getPlacementId", "()Ljava/lang/String;", "getShowTimestamp", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final /* data */ class CampaignState {
    private final ByteString data;
    private final int dataVersion;
    private final TimestampsOuterClass.Timestamps loadTimestamp;
    private final String placementId;
    private final TimestampsOuterClass.Timestamps showTimestamp;

    public CampaignState(ByteString data, int i, String placementId, TimestampsOuterClass.Timestamps loadTimestamp, TimestampsOuterClass.Timestamps showTimestamp) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(loadTimestamp, "loadTimestamp");
        Intrinsics.checkNotNullParameter(showTimestamp, "showTimestamp");
        this.data = data;
        this.dataVersion = i;
        this.placementId = placementId;
        this.loadTimestamp = loadTimestamp;
        this.showTimestamp = showTimestamp;
    }

    public static /* synthetic */ CampaignState copy$default(CampaignState campaignState, ByteString byteString, int i, String str, TimestampsOuterClass.Timestamps timestamps, TimestampsOuterClass.Timestamps timestamps2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            byteString = campaignState.data;
        }
        if ((i2 & 2) != 0) {
            i = campaignState.dataVersion;
        }
        int i3 = i;
        if ((i2 & 4) != 0) {
            str = campaignState.placementId;
        }
        String str2 = str;
        if ((i2 & 8) != 0) {
            timestamps = campaignState.loadTimestamp;
        }
        TimestampsOuterClass.Timestamps timestamps3 = timestamps;
        if ((i2 & 16) != 0) {
            timestamps2 = campaignState.showTimestamp;
        }
        return campaignState.copy(byteString, i3, str2, timestamps3, timestamps2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ByteString getData() {
        return this.data;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getDataVersion() {
        return this.dataVersion;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPlacementId() {
        return this.placementId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final TimestampsOuterClass.Timestamps getLoadTimestamp() {
        return this.loadTimestamp;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final TimestampsOuterClass.Timestamps getShowTimestamp() {
        return this.showTimestamp;
    }

    public final CampaignState copy(ByteString data, int dataVersion, String placementId, TimestampsOuterClass.Timestamps loadTimestamp, TimestampsOuterClass.Timestamps showTimestamp) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(loadTimestamp, "loadTimestamp");
        Intrinsics.checkNotNullParameter(showTimestamp, "showTimestamp");
        return new CampaignState(data, dataVersion, placementId, loadTimestamp, showTimestamp);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CampaignState)) {
            return false;
        }
        CampaignState campaignState = (CampaignState) other;
        return Intrinsics.areEqual(this.data, campaignState.data) && this.dataVersion == campaignState.dataVersion && Intrinsics.areEqual(this.placementId, campaignState.placementId) && Intrinsics.areEqual(this.loadTimestamp, campaignState.loadTimestamp) && Intrinsics.areEqual(this.showTimestamp, campaignState.showTimestamp);
    }

    public final ByteString getData() {
        return this.data;
    }

    public final int getDataVersion() {
        return this.dataVersion;
    }

    public final TimestampsOuterClass.Timestamps getLoadTimestamp() {
        return this.loadTimestamp;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final TimestampsOuterClass.Timestamps getShowTimestamp() {
        return this.showTimestamp;
    }

    public int hashCode() {
        return (((((((this.data.hashCode() * 31) + this.dataVersion) * 31) + this.placementId.hashCode()) * 31) + this.loadTimestamp.hashCode()) * 31) + this.showTimestamp.hashCode();
    }

    public String toString() {
        return "CampaignState(data=" + this.data + ", dataVersion=" + this.dataVersion + ", placementId=" + this.placementId + ", loadTimestamp=" + this.loadTimestamp + ", showTimestamp=" + this.showTimestamp + ')';
    }
}
