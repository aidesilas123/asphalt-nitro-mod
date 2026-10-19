package com.facebook.login.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.login.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: compiled from: ToolTipPopup.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ToolTipPopup {
    public static final Companion Companion = new Companion(null);
    public static final long DEFAULT_POPUP_DISPLAY_TIME = 6000;
    private final WeakReference<View> anchorViewRef;
    private final Context context;
    private long nuxDisplayTime;
    private PopupContentView popupContent;
    private PopupWindow popupWindow;
    private final ViewTreeObserver.OnScrollChangedListener scrollListener;
    private Style style;
    private final String text;

    /* JADX INFO: compiled from: ToolTipPopup.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: ToolTipPopup.kt */
    private final class PopupContentView extends FrameLayout {
        private final View bodyFrame;
        private final ImageView bottomArrow;
        final /* synthetic */ ToolTipPopup this$0;
        private final ImageView topArrow;
        private final ImageView xOut;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PopupContentView(ToolTipPopup this$0, Context context) {
            super(context);
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(context, "context");
            this.this$0 = this$0;
            LayoutInflater.from(context).inflate(R.layout.com_facebook_tooltip_bubble, this);
            View viewFindViewById = findViewById(R.id.com_facebook_tooltip_bubble_view_top_pointer);
            Objects.requireNonNull(viewFindViewById, "null cannot be cast to non-null type android.widget.ImageView");
            this.topArrow = (ImageView) viewFindViewById;
            View viewFindViewById2 = findViewById(R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
            Objects.requireNonNull(viewFindViewById2, "null cannot be cast to non-null type android.widget.ImageView");
            this.bottomArrow = (ImageView) viewFindViewById2;
            View viewFindViewById3 = findViewById(R.id.com_facebook_body_frame);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(R.id.com_facebook_body_frame)");
            this.bodyFrame = viewFindViewById3;
            View viewFindViewById4 = findViewById(R.id.com_facebook_button_xout);
            Objects.requireNonNull(viewFindViewById4, "null cannot be cast to non-null type android.widget.ImageView");
            this.xOut = (ImageView) viewFindViewById4;
        }

        public final View getBodyFrame() {
            return this.bodyFrame;
        }

        public final ImageView getBottomArrow() {
            return this.bottomArrow;
        }

        public final ImageView getTopArrow() {
            return this.topArrow;
        }

        public final ImageView getXOut() {
            return this.xOut;
        }

        public final void showBottomArrow() {
            this.topArrow.setVisibility(4);
            this.bottomArrow.setVisibility(0);
        }

        public final void showTopArrow() {
            this.topArrow.setVisibility(0);
            this.bottomArrow.setVisibility(4);
        }
    }

    /* JADX INFO: compiled from: ToolTipPopup.kt */
    public enum Style {
        BLUE,
        BLACK;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static Style[] valuesCustom() {
            Style[] styleArrValuesCustom = values();
            return (Style[]) Arrays.copyOf(styleArrValuesCustom, styleArrValuesCustom.length);
        }
    }

    public ToolTipPopup(String text, View anchor) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(anchor, "anchor");
        this.text = text;
        this.anchorViewRef = new WeakReference<>(anchor);
        Context context = anchor.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "anchor.context");
        this.context = context;
        this.style = Style.BLUE;
        this.nuxDisplayTime = DEFAULT_POPUP_DISPLAY_TIME;
        this.scrollListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.facebook.login.widget.f
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                ToolTipPopup.m185scrollListener$lambda1(this.a);
            }
        };
    }

    private final void registerObserver() {
        ViewTreeObserver viewTreeObserver;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            unregisterObserver();
            View view = this.anchorViewRef.get();
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.addOnScrollChangedListener(this.scrollListener);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: scrollListener$lambda-1, reason: not valid java name */
    public static final void m185scrollListener$lambda1(ToolTipPopup this$0) {
        PopupWindow popupWindow;
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.anchorViewRef.get() == null || (popupWindow = this$0.popupWindow) == null || !popupWindow.isShowing()) {
                return;
            }
            if (popupWindow.isAboveAnchor()) {
                PopupContentView popupContentView = this$0.popupContent;
                if (popupContentView == null) {
                    return;
                }
                popupContentView.showBottomArrow();
                return;
            }
            PopupContentView popupContentView2 = this$0.popupContent;
            if (popupContentView2 == null) {
                return;
            }
            popupContentView2.showTopArrow();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ToolTipPopup.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: show$lambda-2, reason: not valid java name */
    public static final void m186show$lambda2(ToolTipPopup this$0) {
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.dismiss();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ToolTipPopup.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: show$lambda-3, reason: not valid java name */
    public static final void m187show$lambda3(ToolTipPopup this$0, View view) {
        if (CrashShieldHandler.isObjectCrashing(ToolTipPopup.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.dismiss();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ToolTipPopup.class);
        }
    }

    private final void unregisterObserver() {
        ViewTreeObserver viewTreeObserver;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            View view = this.anchorViewRef.get();
            if (view != null && (viewTreeObserver = view.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnScrollChangedListener(this.scrollListener);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final void updateArrows() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            PopupWindow popupWindow = this.popupWindow;
            if (popupWindow != null && popupWindow.isShowing()) {
                if (popupWindow.isAboveAnchor()) {
                    PopupContentView popupContentView = this.popupContent;
                    if (popupContentView == null) {
                        return;
                    }
                    popupContentView.showBottomArrow();
                    return;
                }
                PopupContentView popupContentView2 = this.popupContent;
                if (popupContentView2 == null) {
                    return;
                }
                popupContentView2.showTopArrow();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void dismiss() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            unregisterObserver();
            PopupWindow popupWindow = this.popupWindow;
            if (popupWindow == null) {
                return;
            }
            popupWindow.dismiss();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void setNuxDisplayTime(long j) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            this.nuxDisplayTime = j;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void setStyle(Style style) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(style, "style");
            this.style = style;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final void show() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (this.anchorViewRef.get() != null) {
                PopupContentView popupContentView = new PopupContentView(this, this.context);
                this.popupContent = popupContentView;
                View viewFindViewById = popupContentView.findViewById(R.id.com_facebook_tooltip_bubble_view_text_body);
                if (viewFindViewById == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.widget.TextView");
                }
                ((TextView) viewFindViewById).setText(this.text);
                if (this.style == Style.BLUE) {
                    popupContentView.getBodyFrame().setBackgroundResource(R.drawable.com_facebook_tooltip_blue_background);
                    popupContentView.getBottomArrow().setImageResource(R.drawable.com_facebook_tooltip_blue_bottomnub);
                    popupContentView.getTopArrow().setImageResource(R.drawable.com_facebook_tooltip_blue_topnub);
                    popupContentView.getXOut().setImageResource(R.drawable.com_facebook_tooltip_blue_xout);
                } else {
                    popupContentView.getBodyFrame().setBackgroundResource(R.drawable.com_facebook_tooltip_black_background);
                    popupContentView.getBottomArrow().setImageResource(R.drawable.com_facebook_tooltip_black_bottomnub);
                    popupContentView.getTopArrow().setImageResource(R.drawable.com_facebook_tooltip_black_topnub);
                    popupContentView.getXOut().setImageResource(R.drawable.com_facebook_tooltip_black_xout);
                }
                View decorView = ((Activity) this.context).getWindow().getDecorView();
                Intrinsics.checkNotNullExpressionValue(decorView, "window.decorView");
                int width = decorView.getWidth();
                int height = decorView.getHeight();
                registerObserver();
                popupContentView.measure(View.MeasureSpec.makeMeasureSpec(width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(height, Integer.MIN_VALUE));
                PopupWindow popupWindow = new PopupWindow(popupContentView, popupContentView.getMeasuredWidth(), popupContentView.getMeasuredHeight());
                this.popupWindow = popupWindow;
                popupWindow.showAsDropDown(this.anchorViewRef.get());
                updateArrows();
                long j = this.nuxDisplayTime;
                if (j > 0) {
                    popupContentView.postDelayed(new Runnable() { // from class: com.facebook.login.widget.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            ToolTipPopup.m186show$lambda2(this.a);
                        }
                    }, j);
                }
                popupWindow.setTouchable(true);
                popupContentView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.login.widget.h
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        ToolTipPopup.m187show$lambda3(this.a, view);
                    }
                });
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
