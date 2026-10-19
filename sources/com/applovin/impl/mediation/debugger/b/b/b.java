package com.applovin.impl.mediation.debugger.b.b;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private final String aoL;
    private final String aoM;
    private final String aoN;
    private final String aoO;
    private final String aoP;
    private final int aoQ;
    private final boolean aoR;

    public b(String str) {
        this(str, -1);
    }

    public b(String str, int i) {
        this.aoP = str;
        this.aoQ = i;
        String[] strArrSplit = str.split(",");
        boolean z = strArrSplit.length == 3 || strArrSplit.length == 4;
        this.aoR = z;
        if (z) {
            this.aoL = bI(strArrSplit[0]);
            this.aoM = bI(strArrSplit[1]);
            this.aoN = bI(strArrSplit[2]);
            this.aoO = strArrSplit.length == 4 ? bI(strArrSplit[3]) : "";
            return;
        }
        this.aoL = "";
        this.aoM = "";
        this.aoN = "";
        this.aoO = "";
    }

    private String bI(String str) {
        return str.replace((char) 173, ' ').trim();
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (!bVar.canEqual(this)) {
            return false;
        }
        String strVd = vd();
        String strVd2 = bVar.vd();
        if (strVd != null ? !strVd.equals(strVd2) : strVd2 != null) {
            return false;
        }
        String publisherId = getPublisherId();
        String publisherId2 = bVar.getPublisherId();
        if (publisherId != null ? !publisherId.equals(publisherId2) : publisherId2 != null) {
            return false;
        }
        String strVe = ve();
        String strVe2 = bVar.ve();
        if (strVe != null ? !strVe.equals(strVe2) : strVe2 != null) {
            return false;
        }
        String strVf = vf();
        String strVf2 = bVar.vf();
        return strVf != null ? strVf.equals(strVf2) : strVf2 == null;
    }

    public String getPublisherId() {
        return this.aoM;
    }

    public int hashCode() {
        String strVd = vd();
        int iHashCode = strVd == null ? 43 : strVd.hashCode();
        String publisherId = getPublisherId();
        int iHashCode2 = ((iHashCode + 59) * 59) + (publisherId == null ? 43 : publisherId.hashCode());
        String strVe = ve();
        int iHashCode3 = (iHashCode2 * 59) + (strVe == null ? 43 : strVe.hashCode());
        String strVf = vf();
        return (iHashCode3 * 59) + (strVf != null ? strVf.hashCode() : 43);
    }

    public String toString() {
        return "AppAdsTxtEntry(domainName=" + vd() + ", publisherId=" + getPublisherId() + ", relationship=" + ve() + ", certificateAuthorityId=" + vf() + ", rawValue=" + vg() + ", rowNumber=" + vh() + ", valid=" + vi() + ")";
    }

    public boolean vc() {
        return this.aoL.equals("applovin.com");
    }

    public String vd() {
        return this.aoL;
    }

    public String ve() {
        return this.aoN;
    }

    public String vf() {
        return this.aoO;
    }

    public String vg() {
        return this.aoP;
    }

    public int vh() {
        return this.aoQ;
    }

    public boolean vi() {
        return this.aoR;
    }
}
