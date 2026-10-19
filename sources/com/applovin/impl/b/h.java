package com.applovin.impl.b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class h {
    private final String aXH;
    private final String aXI;

    private h(String str, String str2) {
        this.aXH = str;
        this.aXI = str2;
    }

    @Nullable
    public static h b(y yVar, com.applovin.impl.sdk.n nVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        try {
            return new h(yVar.LJ().get("apiFramework"), yVar.LK());
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastJavaScriptResource", "Error occurred while initializing", th);
            }
            nVar.Cs().g("VastJavaScriptResource", th);
            return null;
        }
    }

    public String My() {
        return this.aXH;
    }

    public String Mz() {
        return this.aXI;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        String str = this.aXH;
        if (str == null ? hVar.aXH != null : !str.equals(hVar.aXH)) {
            return false;
        }
        String str2 = this.aXI;
        String str3 = hVar.aXI;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public int hashCode() {
        String str = this.aXH;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.aXI;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "VastJavaScriptResource{apiFramework='" + this.aXH + "', javascriptResourceUrl='" + this.aXI + "'}";
    }
}
