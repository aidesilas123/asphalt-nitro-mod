package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class RangeDateSelector implements DateSelector<Pair<Long, Long>> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();
    private String a;
    private final String b = " ";

    @Nullable
    private Long c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Long f3263d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Long f3264e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Long f3265f = null;

    class a extends com.google.android.material.datepicker.c {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f3266g;
        final /* synthetic */ TextInputLayout h;
        final /* synthetic */ j i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, j jVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f3266g = textInputLayout2;
            this.h = textInputLayout3;
            this.i = jVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            RangeDateSelector.this.f3264e = null;
            RangeDateSelector.this.m(this.f3266g, this.h, this.i);
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l) {
            RangeDateSelector.this.f3264e = l;
            RangeDateSelector.this.m(this.f3266g, this.h, this.i);
        }
    }

    class b extends com.google.android.material.datepicker.c {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f3267g;
        final /* synthetic */ TextInputLayout h;
        final /* synthetic */ j i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, j jVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f3267g = textInputLayout2;
            this.h = textInputLayout3;
            this.i = jVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            RangeDateSelector.this.f3265f = null;
            RangeDateSelector.this.m(this.f3267g, this.h, this.i);
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l) {
            RangeDateSelector.this.f3265f = l;
            RangeDateSelector.this.m(this.f3267g, this.h, this.i);
        }
    }

    class c implements Parcelable.Creator<RangeDateSelector> {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector createFromParcel(@NonNull Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.c = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.f3263d = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector[] newArray(int i) {
            return new RangeDateSelector[i];
        }
    }

    private void i(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.a.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean k(long j, long j2) {
        return j <= j2;
    }

    private void l(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.a);
        textInputLayout2.setError(" ");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull j<Pair<Long, Long>> jVar) {
        Long l = this.f3264e;
        if (l == null || this.f3265f == null) {
            i(textInputLayout, textInputLayout2);
            jVar.a();
        } else if (!k(l.longValue(), this.f3265f.longValue())) {
            l(textInputLayout, textInputLayout2);
            jVar.a();
        } else {
            this.c = this.f3264e;
            this.f3263d = this.f3265f;
            jVar.b(Q());
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> M() {
        ArrayList arrayList = new ArrayList();
        Long l = this.c;
        if (l != null) {
            arrayList.add(l);
        }
        Long l2 = this.f3263d;
        if (l2 != null) {
            arrayList.add(l2);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void S(long j) {
        Long l = this.c;
        if (l == null) {
            this.c = Long.valueOf(j);
        } else if (this.f3263d == null && k(l.longValue(), j)) {
            this.f3263d = Long.valueOf(j);
        } else {
            this.f3263d = null;
            this.c = Long.valueOf(j);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int e(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return MaterialAttributes.resolveOrThrow(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R$dimen.W) ? R$attr.F : R$attr.D, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String g(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.c;
        if (l == null && this.f3263d == null) {
            return resources.getString(R$string.y);
        }
        Long l2 = this.f3263d;
        if (l2 == null) {
            return resources.getString(R$string.w, d.c(l.longValue()));
        }
        if (l == null) {
            return resources.getString(R$string.v, d.c(l2.longValue()));
        }
        Pair<String, String> pairA = d.a(l, l2);
        return resources.getString(R$string.x, pairA.first, pairA.second);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Pair<Long, Long> Q() {
        return new Pair<>(this.c, this.f3263d);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> t() {
        if (this.c == null || this.f3263d == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Pair(this.c, this.f3263d));
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View v(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull j<Pair<Long, Long>> jVar) {
        View viewInflate = layoutInflater.inflate(R$layout.y, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.J);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R$id.I);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.a = viewInflate.getResources().getString(R$string.s);
        SimpleDateFormat simpleDateFormatK = n.k();
        Long l = this.c;
        if (l != null) {
            editText.setText(simpleDateFormatK.format(l));
            this.f3264e = this.c;
        }
        Long l2 = this.f3263d;
        if (l2 != null) {
            editText2.setText(simpleDateFormatK.format(l2));
            this.f3265f = this.f3263d;
        }
        String strL = n.l(viewInflate.getResources(), simpleDateFormatK);
        textInputLayout.setPlaceholderText(strL);
        textInputLayout2.setPlaceholderText(strL);
        editText.addTextChangedListener(new a(strL, simpleDateFormatK, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, jVar));
        editText2.addTextChangedListener(new b(strL, simpleDateFormatK, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, jVar));
        ViewUtils.requestFocusAndShowKeyboard(editText);
        return viewInflate;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.c);
        parcel.writeValue(this.f3263d);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean x() {
        Long l = this.c;
        return (l == null || this.f3263d == null || !k(l.longValue(), this.f3263d.longValue())) ? false : true;
    }
}
