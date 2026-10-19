package com.google.android.material.color;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.color.DynamicColors;

/* JADX INFO: compiled from: DynamicColorsOptions.java */
/* JADX INFO: loaded from: classes3.dex */
public class d {
    private static final DynamicColors.f a = new a();
    private static final DynamicColors.e b = new b();

    @StyleRes
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final DynamicColors.f f3233d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final DynamicColors.e f3234e;

    /* JADX INFO: compiled from: DynamicColorsOptions.java */
    class a implements DynamicColors.f {
        a() {
        }

        @Override // com.google.android.material.color.DynamicColors.f
        public boolean a(@NonNull Activity activity, int i) {
            return true;
        }
    }

    /* JADX INFO: compiled from: DynamicColorsOptions.java */
    class b implements DynamicColors.e {
        b() {
        }

        @Override // com.google.android.material.color.DynamicColors.e
        public void a(@NonNull Activity activity) {
        }
    }

    /* JADX INFO: compiled from: DynamicColorsOptions.java */
    public static class c {

        @StyleRes
        private int a;

        @NonNull
        private DynamicColors.f b = d.a;

        @NonNull
        private DynamicColors.e c = d.b;

        @NonNull
        public d d() {
            return new d(this, null);
        }

        @NonNull
        public c e(@NonNull DynamicColors.f fVar) {
            this.b = fVar;
            return this;
        }

        @NonNull
        public c f(@StyleRes int i) {
            this.a = i;
            return this;
        }
    }

    private d(c cVar) {
        this.c = cVar.a;
        this.f3233d = cVar.b;
        this.f3234e = cVar.c;
    }

    /* synthetic */ d(c cVar, a aVar) {
        this(cVar);
    }

    @NonNull
    public DynamicColors.e c() {
        return this.f3234e;
    }

    @NonNull
    public DynamicColors.f d() {
        return this.f3233d;
    }

    @StyleRes
    public int e() {
        return this.c;
    }
}
