package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class X1 implements ViewBinding {

    @NonNull
    private final View a;

    private X1(@NonNull View view) {
        this.a = view;
    }

    @NonNull
    public static X1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_vendor_additional_info_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static X1 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new X1(view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.a;
    }
}
