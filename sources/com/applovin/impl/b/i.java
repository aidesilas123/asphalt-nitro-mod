package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class i {
    private a aXJ;
    private Uri aXK;
    private String aXL;

    public enum a {
        UNSPECIFIED,
        STATIC,
        IFRAME,
        HTML
    }

    private i() {
    }

    static i a(y yVar, i iVar, com.applovin.impl.sdk.n nVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        if (iVar == null) {
            try {
                iVar = new i();
            } catch (Throwable th) {
                nVar.BN();
                if (x.Fn()) {
                    nVar.BN().c("VastNonVideoResource", "Error occurred while initializing", th);
                }
                nVar.Cs().g("VastNonVideoResource", th);
                return null;
            }
        }
        if (iVar.aXK == null && !StringUtils.isValidString(iVar.aXL)) {
            String strA = a(yVar, "StaticResource");
            if (URLUtil.isValidUrl(strA)) {
                iVar.aXK = Uri.parse(strA);
                iVar.aXJ = a.STATIC;
                return iVar;
            }
            String strA2 = a(yVar, "IFrameResource");
            if (StringUtils.isValidString(strA2)) {
                iVar.aXJ = a.IFRAME;
                if (URLUtil.isValidUrl(strA2)) {
                    iVar.aXK = Uri.parse(strA2);
                } else {
                    iVar.aXL = strA2;
                }
                return iVar;
            }
            String strA3 = a(yVar, "HTMLResource");
            if (StringUtils.isValidString(strA3)) {
                iVar.aXJ = a.HTML;
                if (URLUtil.isValidUrl(strA3)) {
                    iVar.aXK = Uri.parse(strA3);
                } else {
                    iVar.aXL = strA3;
                }
            }
        }
        return iVar;
    }

    private static String a(y yVar, String str) {
        y yVarDK = yVar.dK(str);
        if (yVarDK != null) {
            return yVarDK.LK();
        }
        return null;
    }

    public a MA() {
        return this.aXJ;
    }

    public Uri MB() {
        return this.aXK;
    }

    public String MC() {
        return this.aXL;
    }

    public void dR(String str) {
        this.aXL = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.aXJ != iVar.aXJ) {
            return false;
        }
        Uri uri = this.aXK;
        if (uri == null ? iVar.aXK != null : !uri.equals(iVar.aXK)) {
            return false;
        }
        String str = this.aXL;
        String str2 = iVar.aXL;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        a aVar = this.aXJ;
        int iHashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        Uri uri = this.aXK;
        int iHashCode2 = (iHashCode + (uri != null ? uri.hashCode() : 0)) * 31;
        String str = this.aXL;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "VastNonVideoResource{type=" + this.aXJ + ", resourceUri=" + this.aXK + ", resourceContents='" + this.aXL + "'}";
    }

    public void u(Uri uri) {
        this.aXK = uri;
    }
}
