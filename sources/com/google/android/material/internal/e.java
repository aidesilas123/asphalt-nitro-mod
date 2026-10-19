package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: TextDrawableHelper.java */
/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class e {
    private float c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private com.google.android.material.resources.b f3336f;
    private final TextPaint a = new TextPaint(1);
    private final com.google.android.material.resources.c b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3334d = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private WeakReference<b> f3335e = new WeakReference<>(null);

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    class a extends com.google.android.material.resources.c {
        a() {
        }

        @Override // com.google.android.material.resources.c
        public void a(int i) {
            e.this.f3334d = true;
            b bVar = (b) e.this.f3335e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // com.google.android.material.resources.c
        public void b(@NonNull Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            e.this.f3334d = true;
            b bVar = (b) e.this.f3335e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    public interface b {
        void a();

        @NonNull
        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public e(@Nullable b bVar) {
        g(bVar);
    }

    private float c(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.a.measureText(charSequence, 0, charSequence.length());
    }

    @Nullable
    public com.google.android.material.resources.b d() {
        return this.f3336f;
    }

    @NonNull
    public TextPaint e() {
        return this.a;
    }

    public float f(String str) {
        if (!this.f3334d) {
            return this.c;
        }
        float fC = c(str);
        this.c = fC;
        this.f3334d = false;
        return fC;
    }

    public void g(@Nullable b bVar) {
        this.f3335e = new WeakReference<>(bVar);
    }

    public void h(@Nullable com.google.android.material.resources.b bVar, Context context) {
        if (this.f3336f != bVar) {
            this.f3336f = bVar;
            if (bVar != null) {
                bVar.o(context, this.a, this.b);
                b bVar2 = this.f3335e.get();
                if (bVar2 != null) {
                    this.a.drawableState = bVar2.getState();
                }
                bVar.n(context, this.a, this.b);
                this.f3334d = true;
            }
            b bVar3 = this.f3335e.get();
            if (bVar3 != null) {
                bVar3.a();
                bVar3.onStateChange(bVar3.getState());
            }
        }
    }

    public void i(boolean z) {
        this.f3334d = z;
    }

    public void j(Context context) {
        this.f3336f.n(context, this.a, this.b);
    }
}
