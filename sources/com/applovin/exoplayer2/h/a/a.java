package com.applovin.exoplayer2.h.a;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.a.a;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class a implements g {
    public static final a NI = new a(null, new C0039a[0], 0, C.TIME_UNSET, 0);
    private static final C0039a NJ = new C0039a(0).ee(0);
    public static final g.a<a> br = new g.a() { // from class: com.applovin.exoplayer2.h.a.b
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return a.x(bundle);
        }
    };
    public final int NK;
    public final long NM;
    public final long NN;
    public final int NO;
    private final C0039a[] NP;

    @Nullable
    public final Object ee;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.h.a.a$a, reason: collision with other inner class name */
    public static final class C0039a implements g {
        public static final g.a<C0039a> br = new g.a() { // from class: com.applovin.exoplayer2.h.a.c
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return a.C0039a.y(bundle);
            }
        };
        public final int NQ;
        public final Uri[] NR;
        public final int[] NS;
        public final long NT;
        public final boolean NU;
        public final long rJ;
        public final long[] tT;

        public C0039a(long j) {
            this(j, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        private C0039a(long j, int i, int[] iArr, Uri[] uriArr, long[] jArr, long j2, boolean z) {
            com.applovin.exoplayer2.l.a.checkArgument(iArr.length == uriArr.length);
            this.rJ = j;
            this.NQ = i;
            this.NS = iArr;
            this.NR = uriArr;
            this.tT = jArr;
            this.NT = j2;
            this.NU = z;
        }

        @CheckResult
        private static long[] a(long[] jArr, int i) {
            int length = jArr.length;
            int iMax = Math.max(i, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, C.TIME_UNSET);
            return jArrCopyOf;
        }

        @CheckResult
        private static int[] b(int[] iArr, int i) {
            int length = iArr.length;
            int iMax = Math.max(i, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static C0039a y(Bundle bundle) {
            long j = bundle.getLong(t(0));
            int i = bundle.getInt(t(1), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(t(2));
            int[] intArray = bundle.getIntArray(t(3));
            long[] longArray = bundle.getLongArray(t(4));
            long j2 = bundle.getLong(t(5));
            boolean z = bundle.getBoolean(t(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new C0039a(j, i, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j2, z);
        }

        public int ed(@IntRange(from = -1) int i) {
            int i2 = i + 1;
            while (true) {
                int[] iArr = this.NS;
                if (i2 >= iArr.length || this.NU || iArr[i2] == 0 || iArr[i2] == 1) {
                    break;
                }
                i2++;
            }
            return i2;
        }

        @CheckResult
        public C0039a ee(int i) {
            int[] iArrB = b(this.NS, i);
            long[] jArrA = a(this.tT, i);
            return new C0039a(this.rJ, i, iArrB, (Uri[]) Arrays.copyOf(this.NR, i), jArrA, this.NT, this.NU);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0039a.class != obj.getClass()) {
                return false;
            }
            C0039a c0039a = (C0039a) obj;
            return this.rJ == c0039a.rJ && this.NQ == c0039a.NQ && Arrays.equals(this.NR, c0039a.NR) && Arrays.equals(this.NS, c0039a.NS) && Arrays.equals(this.tT, c0039a.tT) && this.NT == c0039a.NT && this.NU == c0039a.NU;
        }

        public int hashCode() {
            int i = this.NQ * 31;
            long j = this.rJ;
            int iHashCode = (((((((i + ((int) (j ^ (j >>> 32)))) * 31) + Arrays.hashCode(this.NR)) * 31) + Arrays.hashCode(this.NS)) * 31) + Arrays.hashCode(this.tT)) * 31;
            long j2 = this.NT;
            return ((iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.NU ? 1 : 0);
        }

        public int lM() {
            return ed(-1);
        }

        public boolean lN() {
            return this.NQ == -1 || lM() < this.NQ;
        }

        public boolean lO() {
            if (this.NQ == -1) {
                return true;
            }
            for (int i = 0; i < this.NQ; i++) {
                int[] iArr = this.NS;
                if (iArr[i] == 0 || iArr[i] == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    private a(@Nullable Object obj, C0039a[] c0039aArr, long j, long j2, int i) {
        this.ee = obj;
        this.NM = j;
        this.NN = j2;
        this.NK = c0039aArr.length + i;
        this.NP = c0039aArr;
        this.NO = i;
    }

    private boolean b(long j, long j2, int i) {
        if (j == Long.MIN_VALUE) {
            return false;
        }
        long j3 = ec(i).rJ;
        return j3 == Long.MIN_VALUE ? j2 == C.TIME_UNSET || j < j2 : j < j3;
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static a x(Bundle bundle) {
        C0039a[] c0039aArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(t(1));
        if (parcelableArrayList == null) {
            c0039aArr = new C0039a[0];
        } else {
            C0039a[] c0039aArr2 = new C0039a[parcelableArrayList.size()];
            for (int i = 0; i < parcelableArrayList.size(); i++) {
                c0039aArr2[i] = (C0039a) C0039a.br.fromBundle((Bundle) parcelableArrayList.get(i));
            }
            c0039aArr = c0039aArr2;
        }
        return new a(null, c0039aArr, bundle.getLong(t(2), 0L), bundle.getLong(t(3), C.TIME_UNSET), bundle.getInt(t(4)));
    }

    public C0039a ec(@IntRange(from = MediaDescriptionCompat.BT_FOLDER_TYPE_MIXED) int i) {
        int i2 = this.NO;
        return i < i2 ? NJ : this.NP[i - i2];
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return ai.r(this.ee, aVar.ee) && this.NK == aVar.NK && this.NM == aVar.NM && this.NN == aVar.NN && this.NO == aVar.NO && Arrays.equals(this.NP, aVar.NP);
    }

    public int hashCode() {
        int i = this.NK * 31;
        Object obj = this.ee;
        return ((((((((i + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.NM)) * 31) + ((int) this.NN)) * 31) + this.NO) * 31) + Arrays.hashCode(this.NP);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.ee);
        sb.append(", adResumePositionUs=");
        sb.append(this.NM);
        sb.append(", adGroups=[");
        for (int i = 0; i < this.NP.length; i++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.NP[i].rJ);
            sb.append(", ads=[");
            for (int i2 = 0; i2 < this.NP[i].NS.length; i2++) {
                sb.append("ad(state=");
                int i3 = this.NP[i].NS[i2];
                if (i3 == 0) {
                    sb.append('_');
                } else if (i3 == 1) {
                    sb.append('R');
                } else if (i3 == 2) {
                    sb.append('S');
                } else if (i3 == 3) {
                    sb.append('P');
                } else if (i3 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.NP[i].tT[i2]);
                sb.append(')');
                if (i2 < this.NP[i].NS.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i < this.NP.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    public int x(long j, long j2) {
        int i = this.NK - 1;
        while (i >= 0 && b(j, j2, i)) {
            i--;
        }
        if (i < 0 || !ec(i).lO()) {
            return -1;
        }
        return i;
    }

    public int y(long j, long j2) {
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        if (j2 != C.TIME_UNSET && j >= j2) {
            return -1;
        }
        int i = this.NO;
        while (i < this.NK && ((ec(i).rJ != Long.MIN_VALUE && ec(i).rJ <= j) || !ec(i).lN())) {
            i++;
        }
        if (i < this.NK) {
            return i;
        }
        return -1;
    }
}
