package io.didomi.drawable;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class G2 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final Button b;

    @NonNull
    public final ImageView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f8225d;

    private G2(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.a = constraintLayout;
        this.b = button;
        this.c = imageView;
        this.f8225d = textView;
    }

    @NonNull
    public static G2 a(@NonNull View view) {
        int i = R.id.button_save;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.vendor_logo_bottom_bar;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R.id.vendors_subtext;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new G2((ConstraintLayout) view, button, imageView, textView);
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
