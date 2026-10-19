package com.hyprmx.android.sdk.audio;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public final int a;
    public final int b;
    public final int c;

    public /* synthetic */ i(int i, int i2) {
        this(i, i2, 0);
    }

    public i(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.a == iVar.a && this.b == iVar.b && this.c == iVar.c;
    }

    public final int hashCode() {
        return this.c + ((this.b + (this.a * 31)) * 31);
    }

    public final String toString() {
        return "Volume(currentVolume=" + this.a + ", maxVolumeLevel=" + this.b + ", minVolumeLevel=" + this.c + ')';
    }
}
