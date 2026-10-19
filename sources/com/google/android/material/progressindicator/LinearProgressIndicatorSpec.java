package com.google.android.material.progressindicator;

/* JADX INFO: loaded from: classes3.dex */
public final class LinearProgressIndicatorSpec extends a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3340g;
    boolean h;

    @Override // com.google.android.material.progressindicator.a
    void c() {
        if (this.f3340g == 0) {
            if (this.b > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }
}
