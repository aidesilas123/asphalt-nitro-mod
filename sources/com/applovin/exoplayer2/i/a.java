package com.applovin.exoplayer2.i;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public final class a implements com.applovin.exoplayer2.g {
    public static final a NV = new C0041a().m("").lU();
    public static final g.a<a> br = new g.a() { // from class: com.applovin.exoplayer2.i.n
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            return a.z(bundle);
        }
    };

    @Nullable
    public final CharSequence NW;

    @Nullable
    public final Layout.Alignment NX;

    @Nullable
    public final Layout.Alignment NY;

    @Nullable
    public final Bitmap NZ;
    public final float Oa;
    public final int Ob;
    public final int Oc;
    public final float Od;
    public final int Oe;
    public final float Of;
    public final float Og;
    public final boolean Oh;
    public final int Oi;
    public final int Oj;
    public final float Ok;
    public final int Ol;
    public final float Om;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.a$a, reason: collision with other inner class name */
    public static final class C0041a {

        @Nullable
        private CharSequence NW;

        @Nullable
        private Layout.Alignment NX;

        @Nullable
        private Layout.Alignment NY;

        @Nullable
        private Bitmap NZ;
        private float Oa;
        private int Ob;
        private int Oc;
        private float Od;
        private int Oe;
        private float Of;
        private float Og;
        private boolean Oh;

        @ColorInt
        private int Oi;
        private int Oj;
        private float Ok;
        private int Ol;
        private float Om;

        public C0041a() {
            this.NW = null;
            this.NZ = null;
            this.NX = null;
            this.NY = null;
            this.Oa = -3.4028235E38f;
            this.Ob = Integer.MIN_VALUE;
            this.Oc = Integer.MIN_VALUE;
            this.Od = -3.4028235E38f;
            this.Oe = Integer.MIN_VALUE;
            this.Oj = Integer.MIN_VALUE;
            this.Ok = -3.4028235E38f;
            this.Of = -3.4028235E38f;
            this.Og = -3.4028235E38f;
            this.Oh = false;
            this.Oi = ViewCompat.MEASURED_STATE_MASK;
            this.Ol = Integer.MIN_VALUE;
        }

        private C0041a(a aVar) {
            this.NW = aVar.NW;
            this.NZ = aVar.NZ;
            this.NX = aVar.NX;
            this.NY = aVar.NY;
            this.Oa = aVar.Oa;
            this.Ob = aVar.Ob;
            this.Oc = aVar.Oc;
            this.Od = aVar.Od;
            this.Oe = aVar.Oe;
            this.Oj = aVar.Oj;
            this.Ok = aVar.Ok;
            this.Of = aVar.Of;
            this.Og = aVar.Og;
            this.Oh = aVar.Oh;
            this.Oi = aVar.Oi;
            this.Ol = aVar.Ol;
            this.Om = aVar.Om;
        }

        public C0041a a(Bitmap bitmap) {
            this.NZ = bitmap;
            return this;
        }

        public C0041a a(@Nullable Layout.Alignment alignment) {
            this.NX = alignment;
            return this;
        }

        public C0041a b(float f2, int i) {
            this.Oa = f2;
            this.Ob = i;
            return this;
        }

        public C0041a b(@Nullable Layout.Alignment alignment) {
            this.NY = alignment;
            return this;
        }

        public C0041a c(float f2, int i) {
            this.Ok = f2;
            this.Oj = i;
            return this;
        }

        public C0041a ef(int i) {
            this.Oc = i;
            return this;
        }

        public C0041a eg(int i) {
            this.Oe = i;
            return this;
        }

        public C0041a eh(@ColorInt int i) {
            this.Oi = i;
            this.Oh = true;
            return this;
        }

        public C0041a ei(int i) {
            this.Ol = i;
            return this;
        }

        @Nullable
        public CharSequence lQ() {
            return this.NW;
        }

        public int lR() {
            return this.Oc;
        }

        public int lS() {
            return this.Oe;
        }

        public C0041a lT() {
            this.Oh = false;
            return this;
        }

        public a lU() {
            return new a(this.NW, this.NX, this.NY, this.NZ, this.Oa, this.Ob, this.Oc, this.Od, this.Oe, this.Oj, this.Ok, this.Of, this.Og, this.Oh, this.Oi, this.Ol, this.Om);
        }

        public C0041a m(CharSequence charSequence) {
            this.NW = charSequence;
            return this;
        }

        public C0041a o(float f2) {
            this.Od = f2;
            return this;
        }

        public C0041a p(float f2) {
            this.Of = f2;
            return this;
        }

        public C0041a q(float f2) {
            this.Og = f2;
            return this;
        }

        public C0041a r(float f2) {
            this.Om = f2;
            return this;
        }
    }

    private a(@Nullable CharSequence charSequence, @Nullable Layout.Alignment alignment, @Nullable Layout.Alignment alignment2, @Nullable Bitmap bitmap, float f2, int i, int i2, float f3, int i3, int i4, float f4, float f5, float f6, boolean z, int i5, int i6, float f7) {
        if (charSequence == null) {
            com.applovin.exoplayer2.l.a.checkNotNull(bitmap);
        } else {
            com.applovin.exoplayer2.l.a.checkArgument(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.NW = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.NW = charSequence.toString();
        } else {
            this.NW = null;
        }
        this.NX = alignment;
        this.NY = alignment2;
        this.NZ = bitmap;
        this.Oa = f2;
        this.Ob = i;
        this.Oc = i2;
        this.Od = f3;
        this.Oe = i3;
        this.Of = f5;
        this.Og = f6;
        this.Oh = z;
        this.Oi = i5;
        this.Oj = i4;
        this.Ok = f4;
        this.Ol = i6;
        this.Om = f7;
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a z(Bundle bundle) {
        C0041a c0041a = new C0041a();
        CharSequence charSequence = bundle.getCharSequence(t(0));
        if (charSequence != null) {
            c0041a.m(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(t(1));
        if (alignment != null) {
            c0041a.a(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(t(2));
        if (alignment2 != null) {
            c0041a.b(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(t(3));
        if (bitmap != null) {
            c0041a.a(bitmap);
        }
        if (bundle.containsKey(t(4)) && bundle.containsKey(t(5))) {
            c0041a.b(bundle.getFloat(t(4)), bundle.getInt(t(5)));
        }
        if (bundle.containsKey(t(6))) {
            c0041a.ef(bundle.getInt(t(6)));
        }
        if (bundle.containsKey(t(7))) {
            c0041a.o(bundle.getFloat(t(7)));
        }
        if (bundle.containsKey(t(8))) {
            c0041a.eg(bundle.getInt(t(8)));
        }
        if (bundle.containsKey(t(10)) && bundle.containsKey(t(9))) {
            c0041a.c(bundle.getFloat(t(10)), bundle.getInt(t(9)));
        }
        if (bundle.containsKey(t(11))) {
            c0041a.p(bundle.getFloat(t(11)));
        }
        if (bundle.containsKey(t(12))) {
            c0041a.q(bundle.getFloat(t(12)));
        }
        if (bundle.containsKey(t(13))) {
            c0041a.eh(bundle.getInt(t(13)));
        }
        if (!bundle.getBoolean(t(14), false)) {
            c0041a.lT();
        }
        if (bundle.containsKey(t(15))) {
            c0041a.ei(bundle.getInt(t(15)));
        }
        if (bundle.containsKey(t(16))) {
            c0041a.r(bundle.getFloat(t(16)));
        }
        return c0041a.lU();
    }

    public boolean equals(@Nullable Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return TextUtils.equals(this.NW, aVar.NW) && this.NX == aVar.NX && this.NY == aVar.NY && ((bitmap = this.NZ) != null ? !((bitmap2 = aVar.NZ) == null || !bitmap.sameAs(bitmap2)) : aVar.NZ == null) && this.Oa == aVar.Oa && this.Ob == aVar.Ob && this.Oc == aVar.Oc && this.Od == aVar.Od && this.Oe == aVar.Oe && this.Of == aVar.Of && this.Og == aVar.Og && this.Oh == aVar.Oh && this.Oi == aVar.Oi && this.Oj == aVar.Oj && this.Ok == aVar.Ok && this.Ol == aVar.Ol && this.Om == aVar.Om;
    }

    public int hashCode() {
        return Objects.hashCode(this.NW, this.NX, this.NY, this.NZ, Float.valueOf(this.Oa), Integer.valueOf(this.Ob), Integer.valueOf(this.Oc), Float.valueOf(this.Od), Integer.valueOf(this.Oe), Float.valueOf(this.Of), Float.valueOf(this.Og), Boolean.valueOf(this.Oh), Integer.valueOf(this.Oi), Integer.valueOf(this.Oj), Float.valueOf(this.Ok), Integer.valueOf(this.Ol), Float.valueOf(this.Om));
    }

    public C0041a lP() {
        return new C0041a();
    }
}
