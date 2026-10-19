package com.applovin.exoplayer2.g;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.applovin.exoplayer2.g.a.1
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: df, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    };
    private final InterfaceC0038a[] IZ;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.g.a$a, reason: collision with other inner class name */
    public interface InterfaceC0038a extends Parcelable {
        void F(ac.a aVar);

        @Nullable
        v kE();

        @Nullable
        byte[] kF();
    }

    a(Parcel parcel) {
        this.IZ = new InterfaceC0038a[parcel.readInt()];
        int i = 0;
        while (true) {
            InterfaceC0038a[] interfaceC0038aArr = this.IZ;
            if (i >= interfaceC0038aArr.length) {
                return;
            }
            interfaceC0038aArr[i] = (InterfaceC0038a) parcel.readParcelable(InterfaceC0038a.class.getClassLoader());
            i++;
        }
    }

    public a(List<? extends InterfaceC0038a> list) {
        this.IZ = (InterfaceC0038a[]) list.toArray(new InterfaceC0038a[0]);
    }

    public a(InterfaceC0038a... interfaceC0038aArr) {
        this.IZ = interfaceC0038aArr;
    }

    public a b(InterfaceC0038a... interfaceC0038aArr) {
        return interfaceC0038aArr.length == 0 ? this : new a((InterfaceC0038a[]) ai.a(this.IZ, interfaceC0038aArr));
    }

    public InterfaceC0038a de(int i) {
        return this.IZ[i];
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.IZ, ((a) obj).IZ);
    }

    public a g(@Nullable a aVar) {
        return aVar == null ? this : b(aVar.IZ);
    }

    public int hashCode() {
        return Arrays.hashCode(this.IZ);
    }

    public int kD() {
        return this.IZ.length;
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.IZ);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.IZ.length);
        for (InterfaceC0038a interfaceC0038a : this.IZ) {
            parcel.writeParcelable(interfaceC0038a, 0);
        }
    }
}
