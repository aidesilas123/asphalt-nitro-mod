package com.fyber.inneractive.sdk.config.global;

import com.json.v4;

/* JADX INFO: loaded from: classes2.dex */
public class f implements d {
    public String a;
    public boolean b;

    public f(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // com.fyber.inneractive.sdk.config.global.d
    public boolean a(e eVar) {
        String str = this.a;
        if (str != null) {
            return str.equalsIgnoreCase("android") ? !this.b : this.b;
        }
        return false;
    }

    public String toString() {
        return String.format("%s - %s include: %b", v4.x, this.a, Boolean.valueOf(this.b));
    }
}
