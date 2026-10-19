package com.fyber.inneractive.sdk.config.global.features;

/* JADX INFO: loaded from: classes2.dex */
public class n extends g {
    public n() {
        super("single_tap");
    }

    @Override // com.fyber.inneractive.sdk.config.global.features.g
    public g b() {
        n nVar = new n();
        a(nVar);
        return nVar;
    }

    public String d() {
        String strA = a("app_info_button_text", "App Info");
        return (strA == null || strA.length() <= 30) ? strA : strA.substring(0, 30);
    }
}
