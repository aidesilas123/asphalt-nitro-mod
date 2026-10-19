package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: renamed from: io.didomi.sdk.w1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1928w1 implements ViewBinding {

    @NonNull
    private final AppCompatButton a;

    private C1928w1(@NonNull AppCompatButton appCompatButton) {
        this.a = appCompatButton;
    }

    @NonNull
    public static C1928w1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_purpose_sdk_storage_disclosure, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1928w1 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new C1928w1((AppCompatButton) view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public AppCompatButton getRoot() {
        return this.a;
    }
}
