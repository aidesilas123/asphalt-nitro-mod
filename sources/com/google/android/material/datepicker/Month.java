package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes3.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();

    @NonNull
    private final Calendar a;
    final int b;
    final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f3259d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f3260e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f3261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private String f3262g;

    class a implements Parcelable.Creator<Month> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Month createFromParcel(@NonNull Parcel parcel) {
            return Month.b(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Month[] newArray(int i) {
            return new Month[i];
        }
    }

    private Month(@NonNull Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarF = n.f(calendar);
        this.a = calendarF;
        this.b = calendarF.get(2);
        this.c = calendarF.get(1);
        this.f3259d = calendarF.getMaximum(7);
        this.f3260e = calendarF.getActualMaximum(5);
        this.f3261f = calendarF.getTimeInMillis();
    }

    @NonNull
    static Month b(int i, int i2) {
        Calendar calendarQ = n.q();
        calendarQ.set(1, i);
        calendarQ.set(2, i2);
        return new Month(calendarQ);
    }

    @NonNull
    static Month h(long j) {
        Calendar calendarQ = n.q();
        calendarQ.setTimeInMillis(j);
        return new Month(calendarQ);
    }

    @NonNull
    static Month i() {
        return new Month(n.o());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull Month month) {
        return this.a.compareTo(month.a);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.b == month.b && this.c == month.c;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.c)});
    }

    int j() {
        int firstDayOfWeek = this.a.get(7) - this.a.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f3259d : firstDayOfWeek;
    }

    long k(int i) {
        Calendar calendarF = n.f(this.a);
        calendarF.set(5, i);
        return calendarF.getTimeInMillis();
    }

    int l(long j) {
        Calendar calendarF = n.f(this.a);
        calendarF.setTimeInMillis(j);
        return calendarF.get(5);
    }

    @NonNull
    String m() {
        if (this.f3262g == null) {
            this.f3262g = d.i(this.a.getTimeInMillis());
        }
        return this.f3262g;
    }

    long n() {
        return this.a.getTimeInMillis();
    }

    @NonNull
    Month o(int i) {
        Calendar calendarF = n.f(this.a);
        calendarF.add(2, i);
        return new Month(calendarF);
    }

    int p(@NonNull Month month) {
        if (this.a instanceof GregorianCalendar) {
            return ((month.c - this.c) * 12) + (month.b - this.b);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.b);
    }
}
