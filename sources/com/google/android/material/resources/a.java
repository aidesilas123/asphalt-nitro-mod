package com.google.android.material.resources;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;

/* JADX INFO: compiled from: CancelableFontCallback.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class a extends c {
    private final Typeface a;
    private final InterfaceC0233a b;
    private boolean c;

    /* JADX INFO: renamed from: com.google.android.material.resources.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CancelableFontCallback.java */
    public interface InterfaceC0233a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0233a interfaceC0233a, Typeface typeface) {
        this.a = typeface;
        this.b = interfaceC0233a;
    }

    private void d(Typeface typeface) {
        if (this.c) {
            return;
        }
        this.b.a(typeface);
    }

    @Override // com.google.android.material.resources.c
    public void a(int i) {
        d(this.a);
    }

    @Override // com.google.android.material.resources.c
    public void b(Typeface typeface, boolean z) {
        d(typeface);
    }

    public void c() {
        this.c = true;
    }
}
