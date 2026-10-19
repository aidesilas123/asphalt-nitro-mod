package com.bytedance.sdk.component.adexpress.dynamic.b;

import java.util.Arrays;

/* JADX INFO: compiled from: DynamicPoint.java */
/* JADX INFO: loaded from: classes.dex */
public class i {
    public float a;
    public float b;

    public i(float f2, float f3) {
        this.a = f2;
        this.b = f3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return Float.compare(iVar.a, this.a) == 0 && Float.compare(iVar.b, this.b) == 0;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a), Float.valueOf(this.b)});
    }
}
