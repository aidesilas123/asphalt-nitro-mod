package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: renamed from: io.didomi.sdk.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1709a2 implements ViewBinding {

    @NonNull
    private final TextView a;

    private C1709a2(@NonNull TextView textView) {
        this.a = textView;
    }

    @NonNull
    public static C1709a2 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_vendor_description, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1709a2 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new C1709a2((TextView) view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TextView getRoot() {
        return this.a;
    }
}
