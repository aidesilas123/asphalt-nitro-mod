package com.fyber.inneractive.sdk.mraid;

/* JADX INFO: loaded from: classes2.dex */
public abstract class u {
    public abstract String a();

    public String toString() {
        String strA = a();
        return strA != null ? strA.replaceAll("[^a-zA-Z0-9_,:\\s\\{\\}\\'\\\"]", "") : "";
    }
}
