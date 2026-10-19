package com.hyprmx.android.sdk.footer;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.footer.FooterContract;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.t0;
import com.hyprmx.android.sdk.utility.w;
import com.hyprmx.android.sdk.utility.w0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\bO\u0010PJ\"\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u000f\u001a\u00020\rH\u0002J&\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\u001a\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u0007H\u0016J\u0010\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010 \u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001dH\u0016J*\u0010$\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016J*\u0010%\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\b\u0010#\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020\"H\u0016J\u0010\u0010)\u001a\u00020\r2\u0006\u0010(\u001a\u00020\"H\u0016J\u0010\u0010+\u001a\u00020\r2\u0006\u0010*\u001a\u00020\u001dH\u0016J\u0010\u0010-\u001a\u00020\r2\u0006\u0010,\u001a\u00020\u0007H\u0016JR\u00107\u001a\u00020\r2\b\u0010.\u001a\u0004\u0018\u00010\u00162\u0006\u0010/\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\u00072\u0006\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u0007H\u0016J\b\u00108\u001a\u00020\u001dH\u0016R\u0016\u00109\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010;\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\"\u0010>\u001a\u00020=8\u0016@\u0016X\u0096.¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0018\u0010D\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bD\u0010ER\u0018\u0010F\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010ER\u0018\u0010G\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010I\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010M\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010HR\u0018\u0010N\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010H¨\u0006Q"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/hyprmx/android/sdk/footer/FooterContract$View;", "Lcom/hyprmx/android/sdk/utility/t0;", "Landroid/view/View$OnLayoutChangeListener;", "Landroid/graphics/Bitmap;", "image", "", "width", "height", "scaledImage", "Landroid/widget/ImageButton;", "imageButton", "", "adjustImageButtonMargins", "adjustNavigationMargins", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "onDestroyView", "minHeight", "setMinimumHeight", "", com.json.mediationsdk.metadata.a.i, "enableBackNavigation", "enableForwardNavigation", "enableNavigation", "", "linkedURL", "setIcon1", "setIcon2", "text", "setText", "url", "onLinkedClicked", "visible", "setVisible", "color", "setBackgroundColor", "v", "left", ViewHierarchyConstants.DIMENSION_TOP_KEY, TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "onLayoutChange", "isContextInvalid", "footerHeight", "I", "adjustMargins", "Z", "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;", "presenter", "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;", "getPresenter", "()Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;", "setPresenter", "(Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;)V", "footer", "Landroid/view/View;", "navigationView", "backButton", "Landroid/widget/ImageButton;", "forwardButton", "Landroid/widget/TextView;", "textView", "Landroid/widget/TextView;", "imageButton2", "imageButton1", "<init>", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class FooterFragment extends Fragment implements FooterContract.View, t0, View.OnLayoutChangeListener {
    private boolean adjustMargins;
    private ImageButton backButton;
    private View footer;
    private int footerHeight;
    private ImageButton forwardButton;
    private ImageButton imageButton1;
    private ImageButton imageButton2;
    private View navigationView;
    public FooterContract.Presenter presenter;
    private TextView textView;

    private final void adjustImageButtonMargins(ImageButton imageButton) {
        if (imageButton.getVisibility() != 8) {
            int measuredHeight = imageButton.getMeasuredHeight();
            ViewGroup.LayoutParams layoutParams = imageButton.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.topMargin = this.footerHeight - measuredHeight;
            imageButton.setLayoutParams(layoutParams2);
        }
    }

    private final void adjustNavigationMargins() {
        View view = this.navigationView;
        if (view != null && view.getVisibility() == 8) {
            return;
        }
        View view2 = this.navigationView;
        int measuredHeight = view2 != null ? view2.getMeasuredHeight() : 0;
        View view3 = this.navigationView;
        ViewGroup.LayoutParams layoutParams = view3 != null ? view3.getLayoutParams() : null;
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
        layoutParams2.topMargin = this.footerHeight - measuredHeight;
        View view4 = this.navigationView;
        if (view4 == null) {
            return;
        }
        view4.setLayoutParams(layoutParams2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$0(FooterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().didTapBack();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$lambda$1(FooterFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().didTapForward();
    }

    private final Bitmap scaledImage(Bitmap image, int width, int height) {
        try {
            return Bitmap.createScaledBitmap(image, w.a(width, getContext()), w.a(height, getContext()), false);
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("IllegalArgumentException thrown for scaling bitmap.", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setIcon1$lambda$4$lambda$3(FooterFragment this$0, String str, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().didTapURL(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setIcon2$lambda$6$lambda$5(FooterFragment this$0, String str, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getPresenter().didTapURL(str);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void enableBackNavigation(boolean enable) {
        ImageButton imageButton = this.backButton;
        if (imageButton == null) {
            return;
        }
        imageButton.setEnabled(enable);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void enableForwardNavigation(boolean enable) {
        ImageButton imageButton = this.forwardButton;
        if (imageButton == null) {
            return;
        }
        imageButton.setEnabled(enable);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void enableNavigation(boolean enable) {
        View view = this.navigationView;
        if (view != null) {
            view.setVisibility(enable ? 0 : 8);
        }
        this.adjustMargins = true;
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public FooterContract.Presenter getPresenter() {
        FooterContract.Presenter presenter = this.presenter;
        if (presenter != null) {
            return presenter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("presenter");
        return null;
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public boolean isContextInvalid() {
        if (getActivity() == null) {
            return true;
        }
        FragmentActivity activity = getActivity();
        Intrinsics.checkNotNull(activity, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return activity.isFinishing();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.hyprmx_footer, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.navigationView = null;
        this.backButton = null;
        this.forwardButton = null;
        this.textView = null;
        this.imageButton2 = null;
        this.imageButton1 = null;
        this.footer = null;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        if (Intrinsics.areEqual(v, this.footer)) {
            View view = this.footer;
            Integer numValueOf = view != null ? Integer.valueOf(view.getMeasuredHeight()) : null;
            int i = this.footerHeight;
            if (numValueOf == null || i != numValueOf.intValue() || this.adjustMargins) {
                this.footerHeight = numValueOf != null ? numValueOf.intValue() : 0;
                this.adjustMargins = false;
                ImageButton imageButton = this.imageButton1;
                if (imageButton != null) {
                    adjustImageButtonMargins(imageButton);
                }
                ImageButton imageButton2 = this.imageButton2;
                if (imageButton2 != null) {
                    adjustImageButtonMargins(imageButton2);
                }
                adjustNavigationMargins();
            }
        }
    }

    @Override // com.hyprmx.android.sdk.utility.t0
    public void onLinkedClicked(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        getPresenter().didTapURL(url);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.navigationView = view.findViewById(R.id.hyprmx_navigation_view);
        ImageButton imageButton = (ImageButton) view.findViewById(R.id.hyprmx_navigate_back);
        this.backButton = imageButton;
        if (imageButton != null) {
            imageButton.setEnabled(false);
        }
        ImageButton imageButton2 = this.backButton;
        if (imageButton2 != null) {
            imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.footer.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FooterFragment.onViewCreated$lambda$2$lambda$0(this.a, view2);
                }
            });
        }
        ImageButton imageButton3 = (ImageButton) view.findViewById(R.id.hyprmx_navigate_forward);
        this.forwardButton = imageButton3;
        if (imageButton3 != null) {
            imageButton3.setEnabled(false);
        }
        ImageButton imageButton4 = this.forwardButton;
        if (imageButton4 != null) {
            imageButton4.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.footer.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    FooterFragment.onViewCreated$lambda$2$lambda$1(this.a, view2);
                }
            });
        }
        TextView textView = (TextView) view.findViewById(R.id.hyprmx_footer_text);
        this.textView = textView;
        if (textView != null) {
            textView.setMovementMethod(new com.hyprmx.android.sdk.utility.d(this));
        }
        this.imageButton1 = (ImageButton) view.findViewById(R.id.hyprmx_image_icon_1);
        this.imageButton2 = (ImageButton) view.findViewById(R.id.hyprmx_image_icon_2);
        view.addOnLayoutChangeListener(this);
        this.footer = view;
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setBackgroundColor(int color) {
        View view = this.footer;
        if (view != null) {
            view.setBackgroundColor(color);
        }
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setIcon1(Bitmap image, int width, int height, final String linkedURL) {
        ImageButton imageButton;
        Intrinsics.checkNotNullParameter(image, "image");
        ImageButton imageButton2 = this.imageButton1;
        if (imageButton2 != null) {
            imageButton2.setImageBitmap(scaledImage(image, width, height));
        }
        if (linkedURL != null && (imageButton = this.imageButton1) != null) {
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.footer.f
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FooterFragment.setIcon1$lambda$4$lambda$3(this.a, linkedURL, view);
                }
            });
        }
        this.adjustMargins = true;
        ImageButton imageButton3 = this.imageButton1;
        if (imageButton3 == null) {
            return;
        }
        imageButton3.setVisibility(0);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setIcon2(Bitmap image, int width, int height, final String linkedURL) {
        ImageButton imageButton;
        Intrinsics.checkNotNullParameter(image, "image");
        ImageButton imageButton2 = this.imageButton2;
        if (imageButton2 != null) {
            imageButton2.setImageBitmap(scaledImage(image, width, height));
        }
        if (linkedURL != null && (imageButton = this.imageButton2) != null) {
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.footer.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FooterFragment.setIcon2$lambda$6$lambda$5(this.a, linkedURL, view);
                }
            });
        }
        this.adjustMargins = true;
        ImageButton imageButton3 = this.imageButton2;
        if (imageButton3 == null) {
            return;
        }
        imageButton3.setVisibility(0);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setMinimumHeight(int minHeight) {
        View view = this.footer;
        if (view == null) {
            return;
        }
        view.setMinimumHeight(w.a(minHeight, getContext()));
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View, com.hyprmx.android.sdk.mvp.a
    public void setPresenter(FooterContract.Presenter presenter) {
        Intrinsics.checkNotNullParameter(presenter, "<set-?>");
        this.presenter = presenter;
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        TextView textView = this.textView;
        if (textView != null) {
            textView.setText(w0.b(text));
        }
        TextView textView2 = this.textView;
        if (textView2 == null) {
            return;
        }
        textView2.setVisibility(0);
    }

    @Override // com.hyprmx.android.sdk.footer.FooterContract.View
    public void setVisible(boolean visible) {
        View view = this.footer;
        if (view == null) {
            return;
        }
        view.setVisibility(visible ? 0 : 8);
    }
}
