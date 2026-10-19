package io.didomi.drawable;

import android.app.Dialog;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u0003R\u001c\u0010\u0014\u001a\u00020\u000f8&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/I0;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "", "getTheme", "()I", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onStart", "Lio/didomi/sdk/z8;", "a", "()Lio/didomi/sdk/z8;", "setThemeProvider", "(Lio/didomi/sdk/z8;)V", "themeProvider", "android_release"}, mv = {1, 8, 0})
public abstract class I0 extends a {
    public abstract C1965z8 a();

    @Override // androidx.fragment.app.DialogFragment
    public int getTheme() {
        return a().u() ? R.style.Didomi_Theme_BottomSheetDialog_Fullscreen : R.style.Didomi_Theme_BottomSheetDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        LayerDrawable layerDrawable;
        Drawable drawable;
        super.onStart();
        Dialog dialog = getDialog();
        View viewFindViewById = dialog != null ? dialog.findViewById(R$id.f3099e) : null;
        if (viewFindViewById == null) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22) {
            ViewCompat.setBackgroundTintList(viewFindViewById, ColorStateList.valueOf(a().a()));
        } else if (i >= 21) {
            Drawable background = viewFindViewById.getBackground();
            layerDrawable = background instanceof LayerDrawable ? (LayerDrawable) background : null;
            if (layerDrawable != null && (drawable = layerDrawable.getDrawable(0)) != null) {
                drawable.setTint(a().a());
            }
        } else {
            Drawable background2 = viewFindViewById.getBackground();
            layerDrawable = background2 instanceof LayerDrawable ? (LayerDrawable) background2 : null;
            if (layerDrawable != null) {
                Drawable drawable2 = layerDrawable.getDrawable(0);
                Intrinsics.checkNotNull(drawable2, "null cannot be cast to non-null type android.graphics.drawable.ColorDrawable");
                ((ColorDrawable) drawable2).setColor(a().a());
            }
        }
        if (a().u()) {
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -1;
            ((ViewGroup.MarginLayoutParams) layoutParams2).height = -1;
        }
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        bottomSheetBehaviorFrom.c0(3);
        bottomSheetBehaviorFrom.V(false);
        bottomSheetBehaviorFrom.Y(5000);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (a().u()) {
            return;
        }
        k9.a(view, 0, R.dimen.didomi_bottom_sheet_top_margin, 0, 0);
    }
}
