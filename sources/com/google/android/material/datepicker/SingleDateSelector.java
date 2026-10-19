package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Pair;
import com.google.android.material.R$attr;
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
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    @Nullable
    private Long a;

    class a extends c {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ j f3268g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, j jVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f3268g = jVar;
        }

        @Override // com.google.android.material.datepicker.c
        void e() {
            this.f3268g.a();
        }

        @Override // com.google.android.material.datepicker.c
        void f(@Nullable Long l) {
            if (l == null) {
                SingleDateSelector.this.c();
            } else {
                SingleDateSelector.this.S(l.longValue());
            }
            this.f3268g.b(SingleDateSelector.this.Q());
        }
    }

    class b implements Parcelable.Creator<SingleDateSelector> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector createFromParcel(@NonNull Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.a = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector[] newArray(int i) {
            return new SingleDateSelector[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.a = null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> M() {
        ArrayList arrayList = new ArrayList();
        Long l = this.a;
        if (l != null) {
            arrayList.add(l);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void S(long j) {
        this.a = Long.valueOf(j);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public Long Q() {
        return this.a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int e(Context context) {
        return MaterialAttributes.resolveOrThrow(context, R$attr.F, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String g(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l = this.a;
        if (l == null) {
            return resources.getString(R$string.n);
        }
        return resources.getString(R$string.m, d.j(l.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Pair<Long, Long>> t() {
        return new ArrayList();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View v(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull j<Long> jVar) {
        View viewInflate = layoutInflater.inflate(R$layout.x, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.H);
        EditText editText = textInputLayout.getEditText();
        if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatK = n.k();
        String strL = n.l(viewInflate.getResources(), simpleDateFormatK);
        textInputLayout.setPlaceholderText(strL);
        Long l = this.a;
        if (l != null) {
            editText.setText(simpleDateFormatK.format(l));
        }
        editText.addTextChangedListener(new a(strL, simpleDateFormatK, textInputLayout, calendarConstraints, jVar));
        ViewUtils.requestFocusAndShowKeyboard(editText);
        return viewInflate;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeValue(this.a);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean x() {
        return this.a != null;
    }
}
