package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: renamed from: io.didomi.sdk.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1779h2 implements ViewBinding {

    @NonNull
    private final View a;

    private C1779h2(@NonNull View view) {
        this.a = view;
    }

    @NonNull
    public static C1779h2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_vendor_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1779h2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new C1779h2(view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.a;
    }
}
