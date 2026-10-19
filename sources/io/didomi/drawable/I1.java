package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.ctv.DidomiTVSwitch;

/* JADX INFO: loaded from: classes5.dex */
public final class I1 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final DidomiTVSwitch b;

    @NonNull
    public final TextView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8243d;

    private I1(@NonNull ConstraintLayout constraintLayout, @NonNull DidomiTVSwitch didomiTVSwitch, @NonNull TextView textView, @NonNull TextView textView2) {
        this.a = constraintLayout;
        this.b = didomiTVSwitch;
        this.c = textView;
        this.f8243d = textView2;
    }

    @NonNull
    public static I1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_holder_tv_purpose_bulk, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static I1 a(@NonNull View view) {
        int i = R.id.switch_ctv_purpose_bulk;
        DidomiTVSwitch didomiTVSwitch = (DidomiTVSwitch) ViewBindings.findChildViewById(view, i);
        if (didomiTVSwitch != null) {
            i = R.id.text_ctv_purpose_bulk_status;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.text_ctv_purpose_bulk_title;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    return new I1((ConstraintLayout) view, didomiTVSwitch, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.a;
    }
}
