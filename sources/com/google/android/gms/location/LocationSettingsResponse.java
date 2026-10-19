package com.google.android.gms.location;

import com.google.android.gms.common.api.Response;

/* JADX INFO: loaded from: classes3.dex */
public class LocationSettingsResponse extends Response<LocationSettingsResult> {
    public LocationSettingsStates getLocationSettingsStates() {
        return getResult().getLocationSettingsStates();
    }
}
