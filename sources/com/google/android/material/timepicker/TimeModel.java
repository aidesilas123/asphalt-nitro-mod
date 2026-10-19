package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new a();
    private final com.google.android.material.timepicker.a a;
    private final com.google.android.material.timepicker.a b;
    final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f3461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f3462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f3463g;

    class a implements Parcelable.Creator<TimeModel> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    }

    public TimeModel() {
        this(0);
    }

    public TimeModel(int i) {
        this(0, 0, 10, i);
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        this.f3460d = i;
        this.f3461e = i2;
        this.f3462f = i3;
        this.c = i4;
        this.f3463g = a(i);
        this.a = new com.google.android.material.timepicker.a(59);
        this.b = new com.google.android.material.timepicker.a(i4 == 1 ? 24 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    private static int a(int i) {
        return i >= 12 ? 1 : 0;
    }

    public static String formatText(Resources resources, CharSequence charSequence) {
        return formatText(resources, charSequence, "%02d");
    }

    public static String formatText(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f3460d == timeModel.f3460d && this.f3461e == timeModel.f3461e && this.c == timeModel.c && this.f3462f == timeModel.f3462f;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), Integer.valueOf(this.f3460d), Integer.valueOf(this.f3461e), Integer.valueOf(this.f3462f)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3460d);
        parcel.writeInt(this.f3461e);
        parcel.writeInt(this.f3462f);
        parcel.writeInt(this.c);
    }
}
