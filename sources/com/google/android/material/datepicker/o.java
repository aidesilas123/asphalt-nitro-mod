package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: compiled from: YearGridAdapter.java */
/* JADX INFO: loaded from: classes3.dex */
class o extends RecyclerView.Adapter<b> {
    private final MaterialCalendar<?> a;

    /* JADX INFO: compiled from: YearGridAdapter.java */
    class a implements View.OnClickListener {
        final /* synthetic */ int a;

        a(int i) {
            this.a = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            o.this.a.E(o.this.a.w().h(Month.b(this.a, o.this.a.y().b)));
            o.this.a.F(MaterialCalendar.CalendarSelector.DAY);
        }
    }

    /* JADX INFO: compiled from: YearGridAdapter.java */
    public static class b extends RecyclerView.ViewHolder {
        final TextView a;

        b(TextView textView) {
            super(textView);
            this.a = textView;
        }
    }

    o(MaterialCalendar<?> materialCalendar) {
        this.a = materialCalendar;
    }

    @NonNull
    private View.OnClickListener b(int i) {
        return new a(i);
    }

    int c(int i) {
        return i - this.a.w().m().c;
    }

    int d(int i) {
        return this.a.w().m().c + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull b bVar, int i) {
        int iD = d(i);
        String string = bVar.a.getContext().getString(R$string.t);
        bVar.a.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(iD)));
        bVar.a.setContentDescription(String.format(string, Integer.valueOf(iD)));
        com.google.android.material.datepicker.b bVarX = this.a.x();
        Calendar calendarO = n.o();
        com.google.android.material.datepicker.a aVar = calendarO.get(1) == iD ? bVarX.f3274f : bVarX.f3272d;
        Iterator<Long> it = this.a.z().M().iterator();
        while (it.hasNext()) {
            calendarO.setTimeInMillis(it.next().longValue());
            if (calendarO.get(1) == iD) {
                aVar = bVarX.f3273e;
            }
        }
        aVar.d(bVar.a);
        bVar.a.setOnClickListener(b(iD));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public b onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new b((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.s, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.a.w().n();
    }
}
