package com.fyber.inneractive.sdk.config.global.features;

/* JADX INFO: loaded from: classes2.dex */
public class p extends g {

    public enum a {
        Modal("modal"),
        FullScreen("full");

        public String value;

        a(String str) {
            this.value = str;
        }
    }

    public p() {
        super("store_webpage");
    }

    @Override // com.fyber.inneractive.sdk.config.global.features.g
    public g b() {
        p pVar = new p();
        a(pVar);
        return pVar;
    }
}
