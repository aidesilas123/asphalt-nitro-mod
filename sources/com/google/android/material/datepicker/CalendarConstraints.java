package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.ObjectsCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    @NonNull
    private final Month a;

    @NonNull
    private final Month b;

    @NonNull
    private final DateValidator c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Month f3239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3241f;

    public interface DateValidator extends Parcelable {
        boolean f(long j);
    }

    class a implements Parcelable.Creator<CalendarConstraints> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints createFromParcel(@NonNull Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    public static final class b {
        static final long a = n.a(Month.b(1900, 0).f3261f);
        static final long b = n.a(Month.b(2100, 11).f3261f);
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f3242d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f3243e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private DateValidator f3244f;

        b(@NonNull CalendarConstraints calendarConstraints) {
            this.c = a;
            this.f3242d = b;
            this.f3244f = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.c = calendarConstraints.a.f3261f;
            this.f3242d = calendarConstraints.b.f3261f;
            this.f3243e = Long.valueOf(calendarConstraints.f3239d.f3261f);
            this.f3244f = calendarConstraints.c;
        }

        @NonNull
        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f3244f);
            Month monthH = Month.h(this.c);
            Month monthH2 = Month.h(this.f3242d);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.f3243e;
            return new CalendarConstraints(monthH, monthH2, dateValidator, l == null ? null : Month.h(l.longValue()), null);
        }

        @NonNull
        public b b(long j) {
            this.f3243e = Long.valueOf(j);
            return this;
        }
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3) {
        this.a = month;
        this.b = month2;
        this.f3239d = month3;
        this.c = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f3241f = month.p(month2) + 1;
        this.f3240e = (month2.c - month.c) + 1;
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, a aVar) {
        this(month, month2, dateValidator, month3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.a.equals(calendarConstraints.a) && this.b.equals(calendarConstraints.b) && ObjectsCompat.equals(this.f3239d, calendarConstraints.f3239d) && this.c.equals(calendarConstraints.c);
    }

    Month h(Month month) {
        return month.compareTo(this.a) < 0 ? this.a : month.compareTo(this.b) > 0 ? this.b : month;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.f3239d, this.c});
    }

    public DateValidator i() {
        return this.c;
    }

    @NonNull
    Month j() {
        return this.b;
    }

    int k() {
        return this.f3241f;
    }

    @Nullable
    Month l() {
        return this.f3239d;
    }

    @NonNull
    Month m() {
        return this.a;
    }

    int n() {
        return this.f3240e;
    }

    boolean o(long j) {
        if (this.a.k(1) <= j) {
            Month month = this.b;
            if (j <= month.k(month.f3260e)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.f3239d, 0);
        parcel.writeParcelable(this.c, 0);
    }
}
