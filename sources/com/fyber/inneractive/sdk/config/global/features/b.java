package com.fyber.inneractive.sdk.config.global.features;

/* JADX INFO: loaded from: classes2.dex */
public class b extends g {
    public b() {
        super("child_mode");
    }

    @Override // com.fyber.inneractive.sdk.config.global.features.g
    public g b() {
        b bVar = new b();
        a(bVar);
        return bVar;
    }

    public int d() {
        Integer numB = b("skip_time_sec");
        int iIntValue = numB != null ? numB.intValue() : 5;
        if (iIntValue < 0 || iIntValue > 8) {
            return 5;
        }
        return iIntValue;
    }
}
