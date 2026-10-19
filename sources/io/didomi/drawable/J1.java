package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class J1 implements ViewBinding {

    @NonNull
    private final TextView a;

    private J1(@NonNull TextView textView) {
        this.a = textView;
    }

    @NonNull
    public static J1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_purpose_data_processing_header, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static J1 a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        return new J1((TextView) view);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public TextView getRoot() {
        return this.a;
    }
}
