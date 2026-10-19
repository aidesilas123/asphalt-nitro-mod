package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: PickerFragment.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class k<S> extends Fragment {
    protected final LinkedHashSet<j<S>> a = new LinkedHashSet<>();

    k() {
    }

    boolean a(j<S> jVar) {
        return this.a.add(jVar);
    }

    void m() {
        this.a.clear();
    }
}
