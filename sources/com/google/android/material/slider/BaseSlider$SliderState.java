package com.google.android.material.slider;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
class BaseSlider$SliderState extends View.BaseSavedState {
    public static final Parcelable.Creator<BaseSlider$SliderState> CREATOR = new a();
    float a;
    float b;
    ArrayList<Float> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    float f3411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f3412e;

    class a implements Parcelable.Creator<BaseSlider$SliderState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BaseSlider$SliderState createFromParcel(@NonNull Parcel parcel) {
            return new BaseSlider$SliderState(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public BaseSlider$SliderState[] newArray(int i) {
            return new BaseSlider$SliderState[i];
        }
    }

    private BaseSlider$SliderState(@NonNull Parcel parcel) {
        super(parcel);
        this.a = parcel.readFloat();
        this.b = parcel.readFloat();
        ArrayList<Float> arrayList = new ArrayList<>();
        this.c = arrayList;
        parcel.readList(arrayList, Float.class.getClassLoader());
        this.f3411d = parcel.readFloat();
        this.f3412e = parcel.createBooleanArray()[0];
    }

    /* synthetic */ BaseSlider$SliderState(Parcel parcel, com.google.android.material.slider.a aVar) {
        this(parcel);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.a);
        parcel.writeFloat(this.b);
        parcel.writeList(this.c);
        parcel.writeFloat(this.f3411d);
        parcel.writeBooleanArray(new boolean[]{this.f3412e});
    }
}
