package com.kidoz.sdk.api.general;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ViewVisibilityEventListener {
    private IViewCoveredListener mIViewCoveredListener;
    private IViewVisibilityEventListener mIViewVisibilityEventListener;
    private ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;
    private ViewTreeObserver.OnWindowAttachListener mOnWindowAttachListener;
    private ViewTreeObserver.OnWindowFocusChangeListener mOnWindowFocusChangeListener;
    private View mView;
    private ViewState mViewState = ViewState.UNKNOWN;
    private ViewTreeObserver mViewTreeObserver;

    public enum ViewState {
        UNKNOWN,
        NOT_VISIBLE,
        VISIBLE
    }

    public ViewVisibilityEventListener(View view) {
        this.mView = view;
        this.mViewTreeObserver = view.getViewTreeObserver();
        initialiseListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<View> getAllChildren(View view) {
        if (!(view instanceof ViewGroup)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            arrayList2.add(childAt);
            arrayList2.addAll(getAllChildren(childAt));
        }
        return arrayList2;
    }

    private void initOnGlobalLayoutListener(ViewTreeObserver viewTreeObserver) {
        this.mOnGlobalLayoutListener = null;
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kidoz.sdk.api.general.ViewVisibilityEventListener.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                try {
                    if (ViewVisibilityEventListener.this.mView.isShown()) {
                        boolean zIsViewBlocked = false;
                        for (View view : ViewVisibilityEventListener.this.getAllChildren(((Activity) ViewVisibilityEventListener.this.mView.getContext()).getWindow().getDecorView())) {
                            if (view.hashCode() != ViewVisibilityEventListener.this.mView.hashCode() && view.isShown() && view.getAlpha() > 0.0d) {
                                ViewVisibilityEventListener viewVisibilityEventListener = ViewVisibilityEventListener.this;
                                if (viewVisibilityEventListener.isViewOverlapping(view, viewVisibilityEventListener.mView)) {
                                    ViewVisibilityEventListener viewVisibilityEventListener2 = ViewVisibilityEventListener.this;
                                    zIsViewBlocked = viewVisibilityEventListener2.isViewBlocked(viewVisibilityEventListener2.mView, view);
                                    if (zIsViewBlocked) {
                                        break;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                        if (ViewVisibilityEventListener.this.mIViewCoveredListener != null) {
                            if (zIsViewBlocked) {
                                ViewVisibilityEventListener.this.mIViewCoveredListener.onViewCovered(true);
                            } else {
                                ViewVisibilityEventListener.this.mIViewCoveredListener.onViewCovered(false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        };
        this.mOnGlobalLayoutListener = onGlobalLayoutListener;
        viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    private void initOnWindowAttachListener(ViewTreeObserver viewTreeObserver) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mOnWindowAttachListener = null;
            ViewTreeObserver.OnWindowAttachListener onWindowAttachListener = new ViewTreeObserver.OnWindowAttachListener() { // from class: com.kidoz.sdk.api.general.ViewVisibilityEventListener.2
                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowAttached() {
                    if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.NOT_VISIBLE) {
                        ViewVisibilityEventListener.this.mViewState = ViewState.VISIBLE;
                        if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                            ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(true);
                        }
                    }
                }

                @Override // android.view.ViewTreeObserver.OnWindowAttachListener
                public void onWindowDetached() {
                    if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.VISIBLE) {
                        ViewVisibilityEventListener.this.mViewState = ViewState.NOT_VISIBLE;
                        if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                            ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(false);
                        }
                    }
                }
            };
            this.mOnWindowAttachListener = onWindowAttachListener;
            viewTreeObserver.addOnWindowAttachListener(onWindowAttachListener);
        }
    }

    private void initOnWindowFocusChangeListener(ViewTreeObserver viewTreeObserver) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mOnWindowFocusChangeListener = null;
            ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.kidoz.sdk.api.general.ViewVisibilityEventListener.3
                @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                public void onWindowFocusChanged(boolean z) {
                    if (z) {
                        if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.NOT_VISIBLE) {
                            ViewVisibilityEventListener.this.mViewState = ViewState.VISIBLE;
                            if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                                ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(true);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.VISIBLE) {
                        ViewVisibilityEventListener.this.mViewState = ViewState.NOT_VISIBLE;
                        if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                            ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(false);
                        }
                    }
                }
            };
            this.mOnWindowFocusChangeListener = onWindowFocusChangeListener;
            viewTreeObserver.addOnWindowFocusChangeListener(onWindowFocusChangeListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initWithViewTreeObserver(ViewTreeObserver viewTreeObserver) {
        initOnWindowFocusChangeListener(viewTreeObserver);
        initOnWindowAttachListener(viewTreeObserver);
    }

    private void initialiseListeners() {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.kidoz.sdk.api.general.ViewVisibilityEventListener.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                    ViewVisibilityEventListener viewVisibilityEventListener = ViewVisibilityEventListener.this;
                    viewVisibilityEventListener.mViewTreeObserver = viewVisibilityEventListener.mView.getViewTreeObserver();
                    ViewVisibilityEventListener viewVisibilityEventListener2 = ViewVisibilityEventListener.this;
                    viewVisibilityEventListener2.initWithViewTreeObserver(viewVisibilityEventListener2.mViewTreeObserver);
                    if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.NOT_VISIBLE) {
                        ViewVisibilityEventListener.this.mViewState = ViewState.VISIBLE;
                        if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                            ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(true);
                        }
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    if (ViewVisibilityEventListener.this.mViewState == ViewState.UNKNOWN || ViewVisibilityEventListener.this.mViewState == ViewState.VISIBLE) {
                        ViewVisibilityEventListener.this.mViewState = ViewState.NOT_VISIBLE;
                        if (ViewVisibilityEventListener.this.mIViewVisibilityEventListener != null) {
                            ViewVisibilityEventListener.this.mIViewVisibilityEventListener.onViewBecameVisible(false);
                        }
                    }
                    ViewVisibilityEventListener viewVisibilityEventListener = ViewVisibilityEventListener.this;
                    viewVisibilityEventListener.removeViewTreeObserver(viewVisibilityEventListener.mViewTreeObserver);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isViewBlocked(View view, View view2) {
        while (view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            for (View view3 = view2; view3.getParent() != null && (view3.getParent() instanceof ViewGroup); view3 = (View) view3.getParent()) {
                if (view3.hashCode() != view.hashCode() && view3.getParent().hashCode() == view.getParent().hashCode() && ((ViewGroup) view.getParent()).indexOfChild(view) < ((ViewGroup) view.getParent()).indexOfChild(view3) && isViewVisible(view3)) {
                    return true;
                }
            }
            view = (View) view.getParent();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isViewOverlapping(View view, View view2) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
        view2.getLocationInWindow(iArr);
        return rect.intersect(new Rect(iArr[0], iArr[1], iArr[0] + view2.getWidth(), iArr[1] + view2.getHeight()));
    }

    private boolean isViewVisible(View view) {
        if (view.isShown()) {
            if (view.getBackground() != null) {
                boolean z = view.getBackground().getOpacity() > 0;
                if (Build.VERSION.SDK_INT < 19 || view.getBackground().getAlpha() * view.getAlpha() <= 0.0f) {
                    return z;
                }
                return true;
            }
            if (view.getAlpha() > 0.0f) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeViewTreeObserver(ViewTreeObserver viewTreeObserver) {
        if (Build.VERSION.SDK_INT >= 18) {
            ViewTreeObserver.OnWindowAttachListener onWindowAttachListener = this.mOnWindowAttachListener;
            if (onWindowAttachListener != null) {
                viewTreeObserver.removeOnWindowAttachListener(onWindowAttachListener);
            }
            ViewTreeObserver.OnWindowFocusChangeListener onWindowFocusChangeListener = this.mOnWindowFocusChangeListener;
            if (onWindowFocusChangeListener != null) {
                viewTreeObserver.removeOnWindowFocusChangeListener(onWindowFocusChangeListener);
            }
        }
    }

    public void setViewCoveredListener(IViewCoveredListener iViewCoveredListener) {
        this.mIViewCoveredListener = iViewCoveredListener;
        initOnGlobalLayoutListener(this.mViewTreeObserver);
    }

    public void setViewVisibilityEventListener(IViewVisibilityEventListener iViewVisibilityEventListener) {
        this.mIViewVisibilityEventListener = iViewVisibilityEventListener;
    }
}
