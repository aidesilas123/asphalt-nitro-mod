package com.google.android.material.internal;

import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: ViewOverlayApi18.java */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(18)
class i implements j {
    private final ViewOverlay a;

    i(@NonNull View view) {
        this.a = view.getOverlay();
    }
}
