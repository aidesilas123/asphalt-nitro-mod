package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.datepicker.MaterialCalendar;

/* JADX INFO: compiled from: MonthsPagerAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
class i extends RecyclerView.Adapter<b> {

    @NonNull
    private final CalendarConstraints a;
    private final DateSelector<?> b;
    private final MaterialCalendar.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3284d;

    /* JADX INFO: compiled from: MonthsPagerAdapter.java */
    class a implements AdapterView.OnItemClickListener {
        final /* synthetic */ MaterialCalendarGridView a;

        a(MaterialCalendarGridView materialCalendarGridView) {
            this.a = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.a.getAdapter().n(i)) {
                i.this.c.a(this.a.getAdapter().getItem(i).longValue());
            }
        }
    }

    /* JADX INFO: compiled from: MonthsPagerAdapter.java */
    public static class b extends RecyclerView.ViewHolder {
        final TextView a;
        final MaterialCalendarGridView b;

        b(@NonNull LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R$id.v);
            this.a = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.b = (MaterialCalendarGridView) linearLayout.findViewById(R$id.r);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    i(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, MaterialCalendar.k kVar) {
        Month monthM = calendarConstraints.m();
        Month monthJ = calendarConstraints.j();
        Month monthL = calendarConstraints.l();
        if (monthM.compareTo(monthL) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (monthL.compareTo(monthJ) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.f3284d = (h.a * MaterialCalendar.A(context)) + (MaterialDatePicker.s(context) ? MaterialCalendar.A(context) : 0);
        this.a = calendarConstraints;
        this.b = dateSelector;
        this.c = kVar;
        setHasStableIds(true);
    }

    @NonNull
    Month b(int i) {
        return this.a.m().o(i);
    }

    @NonNull
    CharSequence c(int i) {
        return b(i).m();
    }

    int d(@NonNull Month month) {
        return this.a.m().p(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i) {
        Month monthO = this.a.m().o(i);
        bVar.a.setText(monthO.m());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) bVar.b.findViewById(R$id.r);
        if (materialCalendarGridView.getAdapter() == null || !monthO.equals(materialCalendarGridView.getAdapter().b)) {
            h hVar = new h(monthO, this.b, this.a);
            materialCalendarGridView.setNumColumns(monthO.f3259d);
            materialCalendarGridView.setAdapter((ListAdapter) hVar);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new a(materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.q, viewGroup, false);
        if (!MaterialDatePicker.s(viewGroup.getContext())) {
            return new b(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f3284d));
        return new b(linearLayout, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.a.k();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.a.m().o(i).n();
    }
}
