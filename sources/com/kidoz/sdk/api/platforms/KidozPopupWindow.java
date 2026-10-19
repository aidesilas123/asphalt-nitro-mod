package com.kidoz.sdk.api.platforms;

import android.app.Activity;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes4.dex */
public class KidozPopupWindow {
    private static final String TAG = "KidozPopupWindow";
    private static final int WINDOW_BACKGROUND_COLOR = -573572390;
    private Activity mActivity;
    private FrameLayout mContentView;
    private FrameLayout mDragLayout;
    private FrameLayout mPopupContainer;
    private PopupWindow mPopupWindow;
    private int mGravity = 0;
    private int mOffsetX = 0;
    private int mOffsetY = 0;
    private int mPosX = 0;
    private int mPosY = 0;

    public KidozPopupWindow(Activity activity, int i, int i2) {
        this.mActivity = activity;
        createContentView();
        createDragLayout();
        createPopupContainer();
        layoutContainer();
        createPopupWindow(i, i2);
    }

    private void createContentView() {
        this.mContentView = new FrameLayout(this.mActivity);
        this.mContentView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mContentView.setBackgroundColor(WINDOW_BACKGROUND_COLOR);
    }

    private void createDragLayout() {
        this.mDragLayout = new FrameLayout(this.mActivity);
        this.mDragLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    private void createPopupContainer() {
        this.mPopupContainer = new FrameLayout(this.mActivity);
    }

    private void createPopupWindow(int i, int i2) {
        this.mPopupWindow = new PopupWindow(this.mPopupContainer, i, i2);
        this.mPopupWindow.getContentView().setSystemUiVisibility(this.mActivity.getWindow().getAttributes().flags);
        setPopUpWindowLayoutType(this.mPopupWindow, 1002);
    }

    private void layoutContainer() {
        this.mPopupContainer.addView(this.mContentView);
        this.mPopupContainer.addView(this.mDragLayout);
    }

    private void setPopUpWindowLayoutType(PopupWindow popupWindow, int i) {
        try {
            Method declaredMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(popupWindow, Integer.valueOf(i));
        } catch (IllegalAccessException e2) {
            Log.w(TAG, String.format("Unable to set popUpWindow window layout type: %s", e2.getLocalizedMessage()));
        } catch (NoSuchMethodException e3) {
            Log.w(TAG, String.format("Unable to set popUpWindow window layout type: %s", e3.getLocalizedMessage()));
        } catch (InvocationTargetException e4) {
            Log.d(TAG, String.format("Unable to set popUpWindow window layout type: %s", e4.getLocalizedMessage()));
        }
    }

    public void addView(final View view) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.KidozPopupWindow.1
            @Override // java.lang.Runnable
            public void run() {
                KidozPopupWindow.this.mContentView.addView(view);
            }
        });
    }

    public void forceWrap() {
        this.mPopupWindow.update(this.mPosX, this.mPosY, -2, -2);
    }

    public void hide() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.KidozPopupWindow.3
            @Override // java.lang.Runnable
            public void run() {
                KidozPopupWindow.this.mPopupContainer.setVisibility(8);
                KidozPopupWindow.this.mPopupWindow.dismiss();
            }
        });
    }

    public void setDraggable(boolean z) {
        if (z) {
            this.mDragLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.kidoz.sdk.api.platforms.KidozPopupWindow.4
                private float startX;
                private float startY;

                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    int action = motionEvent.getAction();
                    if (action == 0) {
                        this.startX = KidozPopupWindow.this.mPosX - motionEvent.getRawX();
                        this.startY = KidozPopupWindow.this.mPosY - motionEvent.getRawY();
                    } else if (action == 2) {
                        KidozPopupWindow.this.mPosX = (int) (motionEvent.getRawX() + this.startX);
                        KidozPopupWindow.this.mPosY = (int) (motionEvent.getRawY() + this.startY);
                        KidozPopupWindow.this.mPopupWindow.update(KidozPopupWindow.this.mPosX, KidozPopupWindow.this.mPosY, -1, -1);
                    }
                    KidozPopupWindow.this.mContentView.dispatchTouchEvent(motionEvent);
                    return true;
                }
            });
        }
    }

    public void setGravity(int i) {
        this.mGravity = i;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void show() {
        Activity activity = this.mActivity;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.KidozPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    KidozPopupWindow.this.mPopupWindow.showAtLocation(KidozPopupWindow.this.mActivity.getWindow().getDecorView().getRootView(), KidozPopupWindow.this.mGravity, KidozPopupWindow.this.mPosX + KidozPopupWindow.this.mOffsetX, KidozPopupWindow.this.mPosY + KidozPopupWindow.this.mOffsetY);
                }
            });
        }
    }
}
