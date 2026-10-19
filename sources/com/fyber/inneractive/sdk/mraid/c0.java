package com.fyber.inneractive.sdk.mraid;

/* JADX INFO: loaded from: classes2.dex */
public class c0 extends u {
    public final boolean a;

    public c0(boolean z) {
        this.a = z;
    }

    @Override // com.fyber.inneractive.sdk.mraid.u
    public String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("viewable: ");
        sb.append(this.a ? "true" : "false");
        return sb.toString();
    }
}
