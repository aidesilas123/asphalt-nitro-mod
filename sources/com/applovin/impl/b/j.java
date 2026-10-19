package com.applovin.impl.b;

import androidx.annotation.NonNull;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class j {
    private String name;
    private String version;

    private j() {
    }

    public static j a(y yVar, j jVar, com.applovin.impl.sdk.n nVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (jVar == null) {
            try {
                jVar = new j();
            } catch (Throwable th) {
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().c("VastSystemInfo", "Error occurred while initializing", th);
                }
                nVar.Cs().g("VastSystemInfo", th);
                return null;
            }
        }
        if (!StringUtils.isValidString(jVar.name)) {
            String strLK = yVar.LK();
            if (StringUtils.isValidString(strLK)) {
                jVar.name = strLK;
            }
        }
        if (!StringUtils.isValidString(jVar.version)) {
            String str = yVar.LJ().get("version");
            if (StringUtils.isValidString(str)) {
                jVar.version = str;
            }
        }
        return jVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        String str = this.name;
        if (str == null ? jVar.name != null : !str.equals(jVar.name)) {
            return false;
        }
        String str2 = this.version;
        String str3 = jVar.version;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.version;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "VastSystemInfo{name='" + this.name + "', version='" + this.version + "'}";
    }
}
