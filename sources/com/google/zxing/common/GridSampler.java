package com.google.zxing.common;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GridSampler {
    private static GridSampler a = new c();

    public static GridSampler getInstance() {
        return a;
    }

    public static void setGridSampler(GridSampler gridSampler) {
        a = gridSampler;
    }
}
