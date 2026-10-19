package com.facebook.ads.internal.exoplayer2.thirdparty.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.redexgen.X.C1062Hh;
import com.facebook.ads.redexgen.X.C1074Ht;
import com.facebook.ads.redexgen.X.Dd;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class TimeSignalCommand extends SpliceCommand {
    public static String[] A02 = {"sG", "SKgiCa5d9ZEELz", "pKJUtOIsmSdeWRhSmfkg", "RYqFvMPt4ygOGY", "4ulFqSy6k9HwIYoxn5tcLFNrNsE", "F6U", "Ool37D46w9DvUWXVHkToeSd93UD8I33w", "iJFoxGzstNUDxHZj"};
    public static final Parcelable.Creator<TimeSignalCommand> CREATOR = new Dd();
    public final long A00;
    public final long A01;

    public TimeSignalCommand(long j, long j2) {
        this.A01 = j;
        this.A00 = j2;
    }

    public /* synthetic */ TimeSignalCommand(long j, long j2, Dd dd) {
        this(j, j2);
    }

    public static long A00(C1062Hh c1062Hh, long j) {
        long jA0E = c1062Hh.A0E();
        if ((128 & jA0E) == 0) {
            return C.TIME_UNSET;
        }
        long j2 = (1 & jA0E) << 32;
        long jA0M = c1062Hh.A0M();
        String[] strArr = A02;
        if (strArr[7].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[1] = "aue9bKRLYwGt4M";
        strArr2[3] = "U8dfBAcmUh1N3t";
        return ((j2 | jA0M) + j) & 8589934591L;
    }

    public static TimeSignalCommand A01(C1062Hh c1062Hh, long j, C1074Ht c1074Ht) {
        long jA00 = A00(c1062Hh, j);
        return new TimeSignalCommand(jA00, c1074Ht.A07(jA00));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.A01);
        parcel.writeLong(this.A00);
    }
}
