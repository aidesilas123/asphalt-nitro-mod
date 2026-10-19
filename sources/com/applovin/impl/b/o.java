package com.applovin.impl.b;

import android.net.Uri;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.y;
import com.applovin.impl.sdk.x;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o {
    private Uri aYj;
    private Uri aYk;
    private a aYl;
    private String aYm;
    private long aYn;
    private int dE;
    private int height;

    public enum a {
        Progressive,
        Streaming
    }

    private o() {
    }

    public static o d(y yVar, com.applovin.impl.sdk.n nVar) {
        if (yVar == null) {
            throw new IllegalArgumentException("No node specified.");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        try {
            String strLK = yVar.LK();
            if (!URLUtil.isValidUrl(strLK)) {
                nVar.BN();
                if (!x.Fn()) {
                    return null;
                }
                nVar.BN().i("VastVideoFile", "Unable to create video file. Could not find URL.");
                return null;
            }
            Uri uri = Uri.parse(strLK);
            o oVar = new o();
            oVar.aYj = uri;
            oVar.aYk = uri;
            oVar.aYn = f(yVar);
            oVar.aYl = dS(yVar.LJ().get("delivery"));
            oVar.height = StringUtils.parseInt(yVar.LJ().get("height"));
            oVar.dE = StringUtils.parseInt(yVar.LJ().get("width"));
            oVar.aYm = yVar.LJ().get("type").toLowerCase(Locale.ENGLISH);
            return oVar;
        } catch (Throwable th) {
            nVar.BN();
            if (x.Fn()) {
                nVar.BN().c("VastVideoFile", "Error occurred while initializing", th);
            }
            nVar.Cs().g("VastVideoFile", th);
            return null;
        }
    }

    private static a dS(String str) {
        if (StringUtils.isValidString(str)) {
            if ("progressive".equalsIgnoreCase(str)) {
                return a.Progressive;
            }
            if ("streaming".equalsIgnoreCase(str)) {
                return a.Streaming;
            }
        }
        return a.Progressive;
    }

    private static long f(y yVar) {
        Map<String, String> mapLJ = yVar.LJ();
        long j = StringUtils.parseLong(mapLJ.get("bitrate"), 0L);
        return j != 0 ? j : (StringUtils.parseLong(mapLJ.get("minBitrate"), 0L) + StringUtils.parseLong(mapLJ.get("maxBitrate"), 0L)) / 2;
    }

    public Uri FI() {
        return this.aYk;
    }

    public Uri MI() {
        return this.aYj;
    }

    public String MJ() {
        return this.aYm;
    }

    public long MK() {
        return this.aYn;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.dE != oVar.dE || this.height != oVar.height || this.aYn != oVar.aYn) {
            return false;
        }
        Uri uri = this.aYj;
        if (uri == null ? oVar.aYj != null : !uri.equals(oVar.aYj)) {
            return false;
        }
        Uri uri2 = this.aYk;
        if (uri2 == null ? oVar.aYk != null : !uri2.equals(oVar.aYk)) {
            return false;
        }
        if (this.aYl != oVar.aYl) {
            return false;
        }
        String str = this.aYm;
        String str2 = oVar.aYm;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        Uri uri = this.aYj;
        int iHashCode = (uri != null ? uri.hashCode() : 0) * 31;
        Uri uri2 = this.aYk;
        int iHashCode2 = (iHashCode + (uri2 != null ? uri2.hashCode() : 0)) * 31;
        a aVar = this.aYl;
        int iHashCode3 = (iHashCode2 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        String str = this.aYm;
        return ((((((iHashCode3 + (str != null ? str.hashCode() : 0)) * 31) + this.dE) * 31) + this.height) * 31) + Long.valueOf(this.aYn).hashCode();
    }

    public void j(Uri uri) {
        this.aYk = uri;
    }

    public String toString() {
        return "VastVideoFile{sourceVideoUri=" + this.aYj + ", videoUri=" + this.aYk + ", deliveryType=" + this.aYl + ", fileType='" + this.aYm + "', width=" + this.dE + ", height=" + this.height + ", bitrate=" + this.aYn + '}';
    }
}
