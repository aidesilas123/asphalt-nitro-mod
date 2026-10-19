package com.bytedance.sdk.component.adexpress.dynamic.animation.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: BaseAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e {
    com.bytedance.sdk.component.adexpress.dynamic.b.a b;
    public View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<ScheduledFuture<?>> f705d = new HashSet();
    public List<ObjectAnimator> a = a();

    /* JADX INFO: compiled from: BaseAnimation.java */
    public class a implements Runnable {
        ObjectAnimator a;
        ScheduledFuture<?> b;

        a(ObjectAnimator objectAnimator) {
            this.a = objectAnimator;
        }

        public void a(ScheduledFuture<?> scheduledFuture) {
            this.b = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Build.VERSION.SDK_INT < 19 || com.bytedance.sdk.component.adexpress.a.a.a.a().c() == null) {
                return;
            }
            com.bytedance.sdk.component.adexpress.a.a.a.a().c().c().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.a.d.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a.resume();
                }
            });
            if (this.b != null) {
                d.this.f705d.remove(this.b);
            }
        }
    }

    public d(View view, com.bytedance.sdk.component.adexpress.dynamic.b.a aVar) {
        this.c = view;
        this.b = aVar;
    }

    ObjectAnimator a(final ObjectAnimator objectAnimator) {
        objectAnimator.setStartDelay((long) (this.b.n() * 1000.0d));
        if (this.b.o() > 0) {
            objectAnimator.setRepeatCount(this.b.o() - 1);
        } else {
            objectAnimator.setRepeatCount(-1);
        }
        if (!"normal".equals(this.b.p())) {
            if ("alternate".equals(this.b.p()) || "alternate-reverse".equals(this.b.p())) {
                objectAnimator.setRepeatMode(2);
            } else {
                objectAnimator.setRepeatMode(1);
            }
        }
        if ("ease-in-out".equals(this.b.m())) {
            objectAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
        } else if ("ease-in".equals(this.b.p())) {
            objectAnimator.setInterpolator(new AccelerateInterpolator());
        } else if ("ease-out".equals(this.b.p())) {
            objectAnimator.setInterpolator(new DecelerateInterpolator());
        } else {
            objectAnimator.setInterpolator(new LinearInterpolator());
        }
        objectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.a.d.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (valueAnimator.getCurrentPlayTime() > 0) {
                    d.this.c.setVisibility(0);
                    if (d.this.c.getParent() instanceof DynamicBaseWidgetImp) {
                        ((View) d.this.c.getParent()).setVisibility(0);
                    }
                    objectAnimator.removeAllUpdateListeners();
                }
            }
        });
        return objectAnimator;
    }

    abstract List<ObjectAnimator> a();

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.e
    public void b() {
        List<ObjectAnimator> list = this.a;
        if (list == null) {
            return;
        }
        for (ObjectAnimator objectAnimator : list) {
            objectAnimator.cancel();
            objectAnimator.removeAllUpdateListeners();
        }
        Iterator<ScheduledFuture<?>> it = this.f705d.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
    }

    public void c() {
        List<ObjectAnimator> list = this.a;
        if (list == null) {
            return;
        }
        for (final ObjectAnimator objectAnimator : list) {
            objectAnimator.start();
            if (this.b.q() > 0.0d && Build.VERSION.SDK_INT >= 19) {
                objectAnimator.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.animation.a.d.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator, boolean z) {
                        onAnimationEnd(animator);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                        objectAnimator.pause();
                        a aVar = d.this.new a(objectAnimator);
                        ScheduledFuture<?> scheduledFutureSchedule = com.bytedance.sdk.component.g.f.f().schedule(aVar, (long) (d.this.b.q() * 1000.0d), TimeUnit.MILLISECONDS);
                        aVar.a(scheduledFutureSchedule);
                        d.this.f705d.add(scheduledFutureSchedule);
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator, boolean z) {
                        onAnimationStart(animator);
                    }
                });
            }
        }
    }
}
