package com.google.android.material.navigation;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.internal.ParcelableSparseArray;

/* JADX INFO: loaded from: classes3.dex */
class NavigationBarPresenter$SavedState implements Parcelable {
    public static final Parcelable.Creator<NavigationBarPresenter$SavedState> CREATOR = new a();
    int a;

    @Nullable
    ParcelableSparseArray b;

    class a implements Parcelable.Creator<NavigationBarPresenter$SavedState> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public NavigationBarPresenter$SavedState createFromParcel(@NonNull Parcel parcel) {
            return new NavigationBarPresenter$SavedState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        @NonNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public NavigationBarPresenter$SavedState[] newArray(int i) {
            return new NavigationBarPresenter$SavedState[i];
        }
    }

    NavigationBarPresenter$SavedState() {
    }

    NavigationBarPresenter$SavedState(@NonNull Parcel parcel) {
        this.a = parcel.readInt();
        this.b = (ParcelableSparseArray) parcel.readParcelable(getClass().getClassLoader());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeParcelable(this.b, 0);
    }
}
