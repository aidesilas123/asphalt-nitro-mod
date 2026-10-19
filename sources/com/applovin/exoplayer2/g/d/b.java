package com.applovin.exoplayer2.g.d;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.g.h;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.v;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b implements a.InterfaceC0038a {
    public static final Parcelable.Creator<b> CREATOR = new Parcelable.Creator<b>() { // from class: com.applovin.exoplayer2.g.d.b.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: dk, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }
    };

    @Nullable
    public final String JB;
    public final boolean JC;
    public final int JD;

    @Nullable
    public final String Jj;
    public final int dv;

    @Nullable
    public final String name;

    public b(int i, @Nullable String str, @Nullable String str2, @Nullable String str3, boolean z, int i2) {
        com.applovin.exoplayer2.l.a.checkArgument(i2 == -1 || i2 > 0);
        this.dv = i;
        this.JB = str;
        this.name = str2;
        this.Jj = str3;
        this.JC = z;
        this.JD = i2;
    }

    b(Parcel parcel) {
        this.dv = parcel.readInt();
        this.JB = parcel.readString();
        this.name = parcel.readString();
        this.Jj = parcel.readString();
        this.JC = ai.K(parcel);
        this.JD = parcel.readInt();
    }

    @Nullable
    public static b c(Map<String, List<String>> map) {
        boolean z;
        int i;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i2;
        List<String> list = map.get("icy-br");
        int i3 = -1;
        boolean z2 = true;
        if (list != null) {
            String str4 = list.get(0);
            try {
                i2 = Integer.parseInt(str4) * 1000;
                if (i2 > 0) {
                    z = true;
                } else {
                    try {
                        q.h("IcyHeaders", "Invalid bitrate: " + str4);
                        z = false;
                        i2 = -1;
                    } catch (NumberFormatException unused) {
                        q.h("IcyHeaders", "Invalid bitrate header: " + str4);
                        i = i2;
                        z = false;
                    }
                }
                i = i2;
            } catch (NumberFormatException unused2) {
                i2 = -1;
            }
        } else {
            z = false;
            i = -1;
        }
        List<String> list2 = map.get("icy-genre");
        if (list2 != null) {
            str = list2.get(0);
            z = true;
        } else {
            str = null;
        }
        List<String> list3 = map.get("icy-name");
        if (list3 != null) {
            str2 = list3.get(0);
            z = true;
        } else {
            str2 = null;
        }
        List<String> list4 = map.get("icy-url");
        if (list4 != null) {
            str3 = list4.get(0);
            z = true;
        } else {
            str3 = null;
        }
        List<String> list5 = map.get("icy-pub");
        if (list5 != null) {
            zEquals = list5.get(0).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List<String> list6 = map.get("icy-metaint");
        if (list6 != null) {
            String str5 = list6.get(0);
            try {
                int i4 = Integer.parseInt(str5);
                if (i4 > 0) {
                    i3 = i4;
                } else {
                    try {
                        q.h("IcyHeaders", "Invalid metadata interval: " + str5);
                        z2 = z;
                    } catch (NumberFormatException unused3) {
                        i3 = i4;
                        q.h("IcyHeaders", "Invalid metadata interval: " + str5);
                    }
                }
                z = z2;
            } catch (NumberFormatException unused4) {
            }
        }
        if (z) {
            return new b(i, str, str2, str3, zEquals, i3);
        }
        return null;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ void F(ac.a aVar) {
        h.a(this, aVar);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.dv == bVar.dv && ai.r(this.JB, bVar.JB) && ai.r(this.name, bVar.name) && ai.r(this.Jj, bVar.Jj) && this.JC == bVar.JC && this.JD == bVar.JD;
    }

    public int hashCode() {
        int i = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.dv) * 31;
        String str = this.JB;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.Jj;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.JC ? 1 : 0)) * 31) + this.JD;
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ v kE() {
        return h.b(this);
    }

    @Override // com.applovin.exoplayer2.g.a.InterfaceC0038a
    public /* synthetic */ byte[] kF() {
        return h.c(this);
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.name + "\", genre=\"" + this.JB + "\", bitrate=" + this.dv + ", metadataInterval=" + this.JD;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.dv);
        parcel.writeString(this.JB);
        parcel.writeString(this.name);
        parcel.writeString(this.Jj);
        ai.a(parcel, this.JC);
        parcel.writeInt(this.JD);
    }
}
