package com.applovin.exoplayer2.l;

import android.os.Bundle;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.g;
import com.google.android.material.internal.ParcelableSparseArray;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private c() {
    }

    public static void F(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) ai.R(c.class.getClassLoader()));
        }
    }

    public static <T extends com.applovin.exoplayer2.g> SparseArray<T> a(g.a<T> aVar, @Nullable SparseArray<Bundle> sparseArray, SparseArray<T> sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2;
        }
        ParcelableSparseArray parcelableSparseArray = (SparseArray<T>) new SparseArray(sparseArray.size());
        for (int i = 0; i < sparseArray.size(); i++) {
            parcelableSparseArray.put(sparseArray.keyAt(i), aVar.fromBundle(sparseArray.valueAt(i)));
        }
        return parcelableSparseArray;
    }

    public static <T extends com.applovin.exoplayer2.g> com.applovin.exoplayer2.common.a.s<T> a(g.a<T> aVar, List<Bundle> list) {
        s.a aVarGc = com.applovin.exoplayer2.common.a.s.gc();
        for (int i = 0; i < list.size(); i++) {
            aVarGc.t(aVar.fromBundle((Bundle) a.checkNotNull(list.get(i))));
        }
        return aVarGc.gd();
    }

    @Nullable
    public static <T extends com.applovin.exoplayer2.g> T a(g.a<T> aVar, @Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return (T) aVar.fromBundle(bundle);
    }

    public static <T extends com.applovin.exoplayer2.g> List<T> a(g.a<T> aVar, @Nullable List<Bundle> list, List<T> list2) {
        return list == null ? list2 : a(aVar, list);
    }
}
