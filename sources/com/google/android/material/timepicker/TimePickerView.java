package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;

/* JADX INFO: loaded from: classes3.dex */
class TimePickerView extends ConstraintLayout {
    private final Chip a;
    private final Chip b;
    private final ClockHandView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClockFaceView f3464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MaterialButtonToggleGroup f3465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f3466f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private f f3467g;
    private g h;
    private e i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.h != null) {
                TimePickerView.this.h.a(((Integer) view.getTag(R$id.M)).intValue());
            }
        }
    }

    class b implements MaterialButtonToggleGroup.c {
        b() {
        }

        @Override // com.google.android.material.button.MaterialButtonToggleGroup.c
        public void a(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
            int i2 = i == R$id.l ? 1 : 0;
            if (TimePickerView.this.f3467g == null || !z) {
                return;
            }
            TimePickerView.this.f3467g.a(i2);
        }
    }

    class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            e eVar = TimePickerView.this.i;
            if (eVar == null) {
                return false;
            }
            eVar.a();
            return true;
        }
    }

    class d implements View.OnTouchListener {
        final /* synthetic */ GestureDetector a;

        d(GestureDetector gestureDetector) {
            this.a = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface e {
        void a();
    }

    interface f {
        void a(int i);
    }

    interface g {
        void a(int i);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3466f = new a();
        LayoutInflater.from(context).inflate(R$layout.l, this);
        this.f3464d = (ClockFaceView) findViewById(R$id.j);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.m);
        this.f3465e = materialButtonToggleGroup;
        materialButtonToggleGroup.b(new b());
        this.a = (Chip) findViewById(R$id.p);
        this.b = (Chip) findViewById(R$id.n);
        this.c = (ClockHandView) findViewById(R$id.k);
        f();
        e();
    }

    private void e() {
        Chip chip = this.a;
        int i = R$id.M;
        chip.setTag(i, 12);
        this.b.setTag(i, 10);
        this.a.setOnClickListener(this.f3466f);
        this.b.setOnClickListener(this.f3466f);
        this.a.setAccessibilityClassName("android.view.View");
        this.b.setAccessibilityClassName("android.view.View");
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void f() {
        d dVar = new d(new GestureDetector(getContext(), new c()));
        this.a.setOnTouchListener(dVar);
        this.b.setOnTouchListener(dVar);
    }

    private void g() {
        if (this.f3465e.getVisibility() == 0) {
            ConstraintSet constraintSet = new ConstraintSet();
            constraintSet.clone(this);
            constraintSet.clear(R$id.i, ViewCompat.getLayoutDirection(this) == 0 ? 2 : 1);
            constraintSet.applyTo(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        g();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            g();
        }
    }
}
