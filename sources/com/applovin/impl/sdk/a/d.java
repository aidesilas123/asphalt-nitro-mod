package com.applovin.impl.sdk.a;

import android.view.View;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private final View VG;
    private final FriendlyObstructionPurpose aIC;
    private final String aID;

    public d(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.VG = view;
        this.aIC = friendlyObstructionPurpose;
        this.aID = str;
    }

    public View IQ() {
        return this.VG;
    }

    public FriendlyObstructionPurpose IR() {
        return this.aIC;
    }

    public String IS() {
        return this.aID;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        View view = this.VG;
        if (view == null ? dVar.VG != null : !view.equals(dVar.VG)) {
            return false;
        }
        if (this.aIC != dVar.aIC) {
            return false;
        }
        String str = this.aID;
        String str2 = dVar.aID;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        View view = this.VG;
        int iHashCode = (view != null ? view.hashCode() : 0) * 31;
        FriendlyObstructionPurpose friendlyObstructionPurpose = this.aIC;
        int iHashCode2 = (iHashCode + (friendlyObstructionPurpose != null ? friendlyObstructionPurpose.hashCode() : 0)) * 31;
        String str = this.aID;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }
}
