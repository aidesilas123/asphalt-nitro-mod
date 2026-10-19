package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: renamed from: io.didomi.sdk.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1869q2 implements ViewBinding {

    @NonNull
    private final AppCompatButton a;

    private C1869q2(@NonNull AppCompatButton appCompatButton) {
        this.a = appCompatButton;
    }

    @NonNull
    public static C1869q2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_view_additional_data_processing_item, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1869q2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new C1869q2((AppCompatButton) view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AppCompatButton getRoot() {
        return this.a;
    }
}
