package com.kidoz.sdk.api.general.UniquePlacement;

import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class UniquePlacementId {
    public static final String NO_ID = "-1";
    private String mPlacementId;

    public UniquePlacementId() {
        this.mPlacementId = NO_ID;
        this.mPlacementId = UUID.randomUUID().toString();
    }

    public String getId() {
        return this.mPlacementId;
    }
}
