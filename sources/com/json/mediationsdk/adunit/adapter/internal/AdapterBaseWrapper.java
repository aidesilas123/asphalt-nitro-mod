package com.json.mediationsdk.adunit.adapter.internal;

import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes4.dex */
public class AdapterBaseWrapper {
    AdapterBaseInterface a;
    NetworkSettings b;

    public AdapterBaseWrapper(AdapterBaseInterface adapterBaseInterface, NetworkSettings networkSettings) {
        this.a = adapterBaseInterface;
        this.b = networkSettings;
    }

    public AdapterBaseInterface getAdapterBaseInterface() {
        return this.a;
    }

    public NetworkSettings getSettings() {
        return this.b;
    }
}
