package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.annotation.XmlRes;
import com.google.android.material.R$dimen;
import com.google.android.material.R$plurals;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.b;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class BadgeState {
    private final State a;
    private final State b;
    final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final float f3150d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final float f3151e;

    public static final class State implements Parcelable {
        public static final Parcelable.Creator<State> CREATOR = new a();

        @XmlRes
        private int a;

        @ColorInt
        private Integer b;

        @ColorInt
        private Integer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3152d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3153e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3154f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Locale f3155g;

        @Nullable
        private CharSequence h;

        @PluralsRes
        private int i;

        @StringRes
        private int j;
        private Integer k;
        private Boolean l;

        @Dimension(unit = 1)
        private Integer m;

        @Dimension(unit = 1)
        private Integer n;

        @Dimension(unit = 1)
        private Integer o;

        @Dimension(unit = 1)
        private Integer p;

        @Dimension(unit = 1)
        private Integer q;

        @Dimension(unit = 1)
        private Integer r;

        class a implements Parcelable.Creator<State> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public State createFromParcel(@NonNull Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public State[] newArray(int i) {
                return new State[i];
            }
        }

        public State() {
            this.f3152d = 255;
            this.f3153e = -2;
            this.f3154f = -2;
            this.l = Boolean.TRUE;
        }

        State(@NonNull Parcel parcel) {
            this.f3152d = 255;
            this.f3153e = -2;
            this.f3154f = -2;
            this.l = Boolean.TRUE;
            this.a = parcel.readInt();
            this.b = (Integer) parcel.readSerializable();
            this.c = (Integer) parcel.readSerializable();
            this.f3152d = parcel.readInt();
            this.f3153e = parcel.readInt();
            this.f3154f = parcel.readInt();
            this.h = parcel.readString();
            this.i = parcel.readInt();
            this.k = (Integer) parcel.readSerializable();
            this.m = (Integer) parcel.readSerializable();
            this.n = (Integer) parcel.readSerializable();
            this.o = (Integer) parcel.readSerializable();
            this.p = (Integer) parcel.readSerializable();
            this.q = (Integer) parcel.readSerializable();
            this.r = (Integer) parcel.readSerializable();
            this.l = (Boolean) parcel.readSerializable();
            this.f3155g = (Locale) parcel.readSerializable();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.a);
            parcel.writeSerializable(this.b);
            parcel.writeSerializable(this.c);
            parcel.writeInt(this.f3152d);
            parcel.writeInt(this.f3153e);
            parcel.writeInt(this.f3154f);
            CharSequence charSequence = this.h;
            parcel.writeString(charSequence == null ? null : charSequence.toString());
            parcel.writeInt(this.i);
            parcel.writeSerializable(this.k);
            parcel.writeSerializable(this.m);
            parcel.writeSerializable(this.n);
            parcel.writeSerializable(this.o);
            parcel.writeSerializable(this.p);
            parcel.writeSerializable(this.q);
            parcel.writeSerializable(this.r);
            parcel.writeSerializable(this.l);
            parcel.writeSerializable(this.f3155g);
        }
    }

    BadgeState(Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3, @Nullable State state) {
        State state2 = new State();
        this.b = state2;
        state = state == null ? new State() : state;
        if (i != 0) {
            state.a = i;
        }
        TypedArray typedArrayA = a(context, state.a, i2, i3);
        Resources resources = context.getResources();
        this.c = typedArrayA.getDimensionPixelSize(R$styleable.y, resources.getDimensionPixelSize(R$dimen.K));
        this.f3151e = typedArrayA.getDimensionPixelSize(R$styleable.A, resources.getDimensionPixelSize(R$dimen.J));
        this.f3150d = typedArrayA.getDimensionPixelSize(R$styleable.B, resources.getDimensionPixelSize(R$dimen.O));
        state2.f3152d = state.f3152d == -2 ? 255 : state.f3152d;
        state2.h = state.h == null ? context.getString(R$string.h) : state.h;
        state2.i = state.i == 0 ? R$plurals.a : state.i;
        state2.j = state.j == 0 ? R$string.j : state.j;
        state2.l = Boolean.valueOf(state.l == null || state.l.booleanValue());
        state2.f3154f = state.f3154f == -2 ? typedArrayA.getInt(R$styleable.E, 4) : state.f3154f;
        if (state.f3153e != -2) {
            state2.f3153e = state.f3153e;
        } else {
            int i4 = R$styleable.F;
            if (typedArrayA.hasValue(i4)) {
                state2.f3153e = typedArrayA.getInt(i4, 0);
            } else {
                state2.f3153e = -1;
            }
        }
        state2.b = Integer.valueOf(state.b == null ? u(context, typedArrayA, R$styleable.w) : state.b.intValue());
        if (state.c != null) {
            state2.c = state.c;
        } else {
            int i5 = R$styleable.z;
            if (typedArrayA.hasValue(i5)) {
                state2.c = Integer.valueOf(u(context, typedArrayA, i5));
            } else {
                state2.c = Integer.valueOf(new b(context, R$style.b).i().getDefaultColor());
            }
        }
        state2.k = Integer.valueOf(state.k == null ? typedArrayA.getInt(R$styleable.x, 8388661) : state.k.intValue());
        state2.m = Integer.valueOf(state.m == null ? typedArrayA.getDimensionPixelOffset(R$styleable.C, 0) : state.m.intValue());
        state2.n = Integer.valueOf(state.m == null ? typedArrayA.getDimensionPixelOffset(R$styleable.G, 0) : state.n.intValue());
        state2.o = Integer.valueOf(state.o == null ? typedArrayA.getDimensionPixelOffset(R$styleable.D, state2.m.intValue()) : state.o.intValue());
        state2.p = Integer.valueOf(state.p == null ? typedArrayA.getDimensionPixelOffset(R$styleable.H, state2.n.intValue()) : state.p.intValue());
        state2.q = Integer.valueOf(state.q == null ? 0 : state.q.intValue());
        state2.r = Integer.valueOf(state.r != null ? state.r.intValue() : 0);
        typedArrayA.recycle();
        if (state.f3155g == null) {
            state2.f3155g = Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.FORMAT) : Locale.getDefault();
        } else {
            state2.f3155g = state.f3155g;
        }
        this.a = state;
    }

    private TypedArray a(Context context, @XmlRes int i, @AttrRes int i2, @StyleRes int i3) {
        AttributeSet attributeSet;
        int styleAttribute;
        if (i != 0) {
            AttributeSet drawableXml = DrawableUtils.parseDrawableXml(context, i, "badge");
            styleAttribute = drawableXml.getStyleAttribute();
            attributeSet = drawableXml;
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        return ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R$styleable.v, i2, styleAttribute == 0 ? i3 : styleAttribute, new int[0]);
    }

    private static int u(Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        return MaterialResources.getColorStateList(context, typedArray, i).getDefaultColor();
    }

    @Dimension(unit = 1)
    int b() {
        return this.b.q.intValue();
    }

    @Dimension(unit = 1)
    int c() {
        return this.b.r.intValue();
    }

    int d() {
        return this.b.f3152d;
    }

    @ColorInt
    int e() {
        return this.b.b.intValue();
    }

    int f() {
        return this.b.k.intValue();
    }

    @ColorInt
    int g() {
        return this.b.c.intValue();
    }

    @StringRes
    int h() {
        return this.b.j;
    }

    CharSequence i() {
        return this.b.h;
    }

    @PluralsRes
    int j() {
        return this.b.i;
    }

    @Dimension(unit = 1)
    int k() {
        return this.b.o.intValue();
    }

    @Dimension(unit = 1)
    int l() {
        return this.b.m.intValue();
    }

    int m() {
        return this.b.f3154f;
    }

    int n() {
        return this.b.f3153e;
    }

    Locale o() {
        return this.b.f3155g;
    }

    State p() {
        return this.a;
    }

    @Dimension(unit = 1)
    int q() {
        return this.b.p.intValue();
    }

    @Dimension(unit = 1)
    int r() {
        return this.b.n.intValue();
    }

    boolean s() {
        return this.b.f3153e != -1;
    }

    boolean t() {
        return this.b.l.booleanValue();
    }

    void v(@Dimension(unit = 1) int i) {
        this.a.q = Integer.valueOf(i);
        this.b.q = Integer.valueOf(i);
    }

    void w(@Dimension(unit = 1) int i) {
        this.a.r = Integer.valueOf(i);
        this.b.r = Integer.valueOf(i);
    }

    void x(int i) {
        this.a.f3152d = i;
        this.b.f3152d = i;
    }
}
