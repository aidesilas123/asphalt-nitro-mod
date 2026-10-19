package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MonthAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
class h extends BaseAdapter {
    static final int a = n.q().getMaximum(4);
    final Month b;
    final DateSelector<?> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Collection<Long> f3281d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b f3282e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final CalendarConstraints f3283f;

    h(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.b = month;
        this.c = dateSelector;
        this.f3283f = calendarConstraints;
        this.f3281d = dateSelector.M();
    }

    private void e(Context context) {
        if (this.f3282e == null) {
            this.f3282e = new b(context);
        }
    }

    private boolean h(long j) {
        Iterator<Long> it = this.c.M().iterator();
        while (it.hasNext()) {
            if (n.a(j) == n.a(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    private void k(@Nullable TextView textView, long j) {
        a aVar;
        if (textView == null) {
            return;
        }
        if (this.f3283f.i().f(j)) {
            textView.setEnabled(true);
            aVar = h(j) ? this.f3282e.b : n.o().getTimeInMillis() == j ? this.f3282e.c : this.f3282e.a;
        } else {
            textView.setEnabled(false);
            aVar = this.f3282e.f3275g;
        }
        aVar.d(textView);
    }

    private void l(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.h(j).equals(this.b)) {
            k((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().a(this.b.l(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    int a(int i) {
        return b() + (i - 1);
    }

    int b() {
        return this.b.j();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.b.j() || i > i()) {
            return null;
        }
        return Long.valueOf(this.b.k(j(i)));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @Override // android.widget.Adapter
    @androidx.annotation.NonNull
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.widget.TextView getView(int r6, @androidx.annotation.Nullable android.view.View r7, @androidx.annotation.NonNull android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            r5.e(r0)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L1e
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.R$layout.n
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L1e:
            int r7 = r5.b()
            int r7 = r6 - r7
            if (r7 < 0) goto L75
            com.google.android.material.datepicker.Month r8 = r5.b
            int r2 = r8.f3260e
            if (r7 < r2) goto L2d
            goto L75
        L2d:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Integer r4 = java.lang.Integer.valueOf(r7)
            r3[r1] = r4
            java.lang.String r4 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r4, r3)
            r0.setText(r8)
            com.google.android.material.datepicker.Month r8 = r5.b
            long r7 = r8.k(r7)
            com.google.android.material.datepicker.Month r3 = r5.b
            int r3 = r3.c
            com.google.android.material.datepicker.Month r4 = com.google.android.material.datepicker.Month.i()
            int r4 = r4.c
            if (r3 != r4) goto L67
            java.lang.String r7 = com.google.android.material.datepicker.d.g(r7)
            r0.setContentDescription(r7)
            goto L6e
        L67:
            java.lang.String r7 = com.google.android.material.datepicker.d.l(r7)
            r0.setContentDescription(r7)
        L6e:
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L7d
        L75:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
        L7d:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L84
            return r0
        L84:
            long r6 = r6.longValue()
            r5.k(r0, r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.h.getView(int, android.view.View, android.view.ViewGroup):android.widget.TextView");
    }

    boolean f(int i) {
        return i % this.b.f3259d == 0;
    }

    boolean g(int i) {
        return (i + 1) % this.b.f3259d == 0;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.b.f3260e + b();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.b.f3259d;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    int i() {
        return (this.b.j() + this.b.f3260e) - 1;
    }

    int j(int i) {
        return (i - this.b.j()) + 1;
    }

    public void m(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f3281d.iterator();
        while (it.hasNext()) {
            l(materialCalendarGridView, it.next().longValue());
        }
        DateSelector<?> dateSelector = this.c;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.M().iterator();
            while (it2.hasNext()) {
                l(materialCalendarGridView, it2.next().longValue());
            }
            this.f3281d = this.c.M();
        }
    }

    boolean n(int i) {
        return i >= b() && i <= i();
    }
}
