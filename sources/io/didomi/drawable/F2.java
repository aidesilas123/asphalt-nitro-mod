package io.didomi.drawable;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;

/* JADX INFO: loaded from: classes5.dex */
public final class F2 implements ViewBinding {

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final Button b;

    @NonNull
    public final Button c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f8215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f8216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f8217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final FrameLayout f8218g;

    @NonNull
    public final ImageView h;

    @NonNull
    public final View i;

    @NonNull
    public final View j;

    private F2(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2) {
        this.a = constraintLayout;
        this.b = button;
        this.c = button2;
        this.f8215d = button3;
        this.f8216e = button4;
        this.f8217f = button5;
        this.f8218g = frameLayout;
        this.h = imageView;
        this.i = view;
        this.j = view2;
    }

    @NonNull
    public static F2 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = R.id.button_ctv_preferences_agree;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.button_ctv_preferences_disagree;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.button_ctv_preferences_save;
                Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                if (button3 != null) {
                    i = R.id.button_ctv_preferences_tab_purpose;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, i);
                    if (button4 != null) {
                        i = R.id.button_ctv_preferences_tab_vendor;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button5 != null) {
                            i = R.id.container_ctv_preferences_primary;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout != null) {
                                i = R.id.image_ctv_preferences_logo;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_preferences_divider))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_ctv_preferences_menu_background))) != null) {
                                    return new F2((ConstraintLayout) view, button, button2, button3, button4, button5, frameLayout, imageView, viewFindChildViewById, viewFindChildViewById2);
                                }
                            }
                        }
                    }
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
