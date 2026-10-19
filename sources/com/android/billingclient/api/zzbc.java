package com.android.billingclient.api;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbc {
    private boolean a;

    private zzbc() {
    }

    /* synthetic */ zzbc(zzbb zzbbVar) {
    }

    public final zzbc a() {
        this.a = true;
        return this;
    }

    public final zzbe b() {
        if (this.a) {
            return new zzbe(true, false, null);
        }
        throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
    }
}
