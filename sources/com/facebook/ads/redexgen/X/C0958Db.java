package com.facebook.ads.redexgen.X;

import android.os.Parcel;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Db, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0958Db {
    public final int A00;
    public final long A01;

    public C0958Db(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public /* synthetic */ C0958Db(int i, long j, C0957Da c0957Da) {
        this(i, j);
    }

    public static C0958Db A00(Parcel parcel) {
        return new C0958Db(parcel.readInt(), parcel.readLong());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}
