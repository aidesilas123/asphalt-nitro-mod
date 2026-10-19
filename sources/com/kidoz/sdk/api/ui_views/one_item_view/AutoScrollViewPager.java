package com.kidoz.sdk.api.ui_views.one_item_view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.animation.Interpolator;
import androidx.core.view.MotionEventCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class AutoScrollViewPager extends ViewPager {
    public static final int DEFAULT_INTERVAL = 1500;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int SCROLL_WHAT = 0;
    public static final int SLIDE_BORDER_MODE_CYCLE = 1;
    public static final int SLIDE_BORDER_MODE_NONE = 0;
    public static final int SLIDE_BORDER_MODE_TO_PARENT = 2;
    private double autoScrollFactor;
    private int direction;
    private float downX;
    private Handler handler;
    private long interval;
    private boolean isAutoScroll;
    private boolean isBorderAnimation;
    private boolean isCycle;
    private boolean isStopByTouch;
    public boolean mIsBlocked;
    private CustomDurationScroller scroller;
    private int slideBorderMode;
    private boolean stopScrollWhenTouch;
    private double swipeScrollFactor;

    private static class MyHandler extends Handler {
        private final WeakReference<AutoScrollViewPager> autoScrollViewPager;

        public MyHandler(AutoScrollViewPager autoScrollViewPager) {
            this.autoScrollViewPager = new WeakReference<>(autoScrollViewPager);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            AutoScrollViewPager autoScrollViewPager;
            super.handleMessage(message);
            if (message.what == 0 && (autoScrollViewPager = this.autoScrollViewPager.get()) != null && autoScrollViewPager.isAutoScroll) {
                autoScrollViewPager.scroller.setScrollDurationFactor(autoScrollViewPager.autoScrollFactor);
                autoScrollViewPager.scrollOnce();
                autoScrollViewPager.scroller.setScrollDurationFactor(autoScrollViewPager.swipeScrollFactor);
                autoScrollViewPager.sendScrollMessage(autoScrollViewPager.interval + ((long) autoScrollViewPager.scroller.getDuration()));
            }
        }
    }

    public AutoScrollViewPager(Context context) {
        super(context);
        this.interval = 1500L;
        this.direction = 1;
        this.isCycle = true;
        this.stopScrollWhenTouch = true;
        this.slideBorderMode = 0;
        this.isBorderAnimation = true;
        this.autoScrollFactor = 1.0d;
        this.swipeScrollFactor = 1.0d;
        this.isAutoScroll = false;
        this.isStopByTouch = false;
        this.downX = 0.0f;
        this.scroller = null;
        this.mIsBlocked = false;
        init();
    }

    public AutoScrollViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.interval = 1500L;
        this.direction = 1;
        this.isCycle = true;
        this.stopScrollWhenTouch = true;
        this.slideBorderMode = 0;
        this.isBorderAnimation = true;
        this.autoScrollFactor = 1.0d;
        this.swipeScrollFactor = 1.0d;
        this.isAutoScroll = false;
        this.isStopByTouch = false;
        this.downX = 0.0f;
        this.scroller = null;
        this.mIsBlocked = false;
        init();
    }

    private void init() {
        this.handler = new MyHandler(this);
        setViewPagerScroller();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendScrollMessage(long j) {
        this.handler.removeMessages(0);
        this.handler.sendEmptyMessageDelayed(0, j);
    }

    private void setViewPagerScroller() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            Field declaredField2 = ViewPager.class.getDeclaredField("sInterpolator");
            declaredField2.setAccessible(true);
            CustomDurationScroller customDurationScroller = new CustomDurationScroller(getContext(), (Interpolator) declaredField2.get(null));
            this.scroller = customDurationScroller;
            declaredField.set(this, customDurationScroller);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mIsBlocked) {
            return true;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (this.stopScrollWhenTouch) {
            if (actionMasked == 0 && this.isAutoScroll) {
                this.isStopByTouch = true;
                stopAutoScroll();
            } else if (motionEvent.getAction() == 1 && this.isStopByTouch) {
                startAutoScroll();
            }
        }
        int i = this.slideBorderMode;
        if (i == 2 || i == 1) {
            float x = motionEvent.getX();
            if (motionEvent.getAction() == 0) {
                this.downX = x;
            }
            int currentItem = getCurrentItem();
            PagerAdapter adapter = getAdapter();
            int count = adapter == null ? 0 : adapter.getCount();
            if ((currentItem == 0 && this.downX <= x) || (currentItem == count - 1 && this.downX >= x)) {
                if (this.slideBorderMode == 2) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                } else {
                    if (count > 1) {
                        setCurrentItem((count - currentItem) - 1, this.isBorderAnimation);
                    }
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getDirection() {
        return this.direction == 0 ? 0 : 1;
    }

    public long getInterval() {
        return this.interval;
    }

    public int getSlideBorderMode() {
        return this.slideBorderMode;
    }

    public boolean isAutoScrollOn() {
        return this.isAutoScroll;
    }

    public boolean isBorderAnimation() {
        return this.isBorderAnimation;
    }

    public boolean isCycle() {
        return this.isCycle;
    }

    public boolean isStopScrollWhenTouch() {
        return this.stopScrollWhenTouch;
    }

    public void scrollOnce() {
        int count;
        PagerAdapter adapter = getAdapter();
        int currentItem = getCurrentItem();
        if (adapter == null || (count = adapter.getCount()) <= 1) {
            return;
        }
        int i = this.direction == 0 ? currentItem - 1 : currentItem + 1;
        if (i < 0) {
            if (this.isCycle) {
                setCurrentItem(count - 1, this.isBorderAnimation);
            }
        } else if (i != count) {
            setCurrentItem(i, true);
        } else if (this.isCycle) {
            setCurrentItem(0, this.isBorderAnimation);
        }
    }

    public void setAutoScrollDurationFactor(double d2) {
        this.autoScrollFactor = d2;
    }

    public void setBorderAnimation(boolean z) {
        this.isBorderAnimation = z;
    }

    public void setCycle(boolean z) {
        this.isCycle = z;
    }

    public void setDirection(int i) {
        this.direction = i;
    }

    public void setInterval(long j) {
        this.interval = j;
    }

    public void setSlideBorderMode(int i) {
        this.slideBorderMode = i;
    }

    public void setStopScrollWhenTouch(boolean z) {
        this.stopScrollWhenTouch = z;
    }

    public void setSwipeScrollDurationFactor(double d2) {
        this.swipeScrollFactor = d2;
    }

    public void startAutoScroll() {
        this.isAutoScroll = true;
        sendScrollMessage((long) (this.interval + ((((double) this.scroller.getDuration()) / this.autoScrollFactor) * this.swipeScrollFactor)));
    }

    public void startAutoScroll(int i) {
        this.isAutoScroll = true;
        sendScrollMessage(i);
    }

    public void stopAutoScroll() {
        this.isAutoScroll = false;
        this.handler.removeCallbacksAndMessages(null);
    }
}
