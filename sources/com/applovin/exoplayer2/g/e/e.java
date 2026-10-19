package com.applovin.exoplayer2.g.e;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.CommentFrame;

/* JADX INFO: loaded from: classes.dex */
public final class e extends h {
    public static final Parcelable.Creator<e> CREATOR = new Parcelable.Creator<e>() { // from class: com.applovin.exoplayer2.g.e.e.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dq, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i) {
            return new e[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }
    };
    public final String JN;
    public final String dq;
    public final String oc;

    e(Parcel parcel) {
        super(CommentFrame.ID);
        this.dq = (String) ai.R(parcel.readString());
        this.oc = (String) ai.R(parcel.readString());
        this.JN = (String) ai.R(parcel.readString());
    }

    public e(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.dq = str;
        this.oc = str2;
        this.JN = str3;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return ai.r(this.oc, eVar.oc) && ai.r(this.dq, eVar.dq) && ai.r(this.JN, eVar.JN);
    }

    public int hashCode() {
        String str = this.dq;
        int iHashCode = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.oc;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.JN;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // com.applovin.exoplayer2.g.e.h
    public String toString() {
        return this.f1do + ": language=" + this.dq + ", description=" + this.oc;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1do);
        parcel.writeString(this.dq);
        parcel.writeString(this.JN);
    }
}
