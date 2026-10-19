package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/* JADX INFO: compiled from: DateFormatTextWatcher.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class c extends com.google.android.material.internal.f {

    @NonNull
    private final TextInputLayout a;
    private final DateFormat b;
    private final CalendarConstraints c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f3276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f3277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f3278f;

    /* JADX INFO: compiled from: DateFormatTextWatcher.java */
    class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout textInputLayout = c.this.a;
            DateFormat dateFormat = c.this.b;
            Context context = textInputLayout.getContext();
            textInputLayout.setError(context.getString(R$string.p) + "\n" + String.format(context.getString(R$string.r), this.a) + "\n" + String.format(context.getString(R$string.q), dateFormat.format(new Date(n.o().getTimeInMillis()))));
            c.this.e();
        }
    }

    /* JADX INFO: compiled from: DateFormatTextWatcher.java */
    class b implements Runnable {
        final /* synthetic */ long a;

        b(long j) {
            this.a = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.a.setError(String.format(c.this.f3276d, d.c(this.a)));
            c.this.e();
        }
    }

    c(String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.b = dateFormat;
        this.a = textInputLayout;
        this.c = calendarConstraints;
        this.f3276d = textInputLayout.getContext().getString(R$string.u);
        this.f3277e = new a(str);
    }

    private Runnable d(long j) {
        return new b(j);
    }

    abstract void e();

    abstract void f(@Nullable Long l);

    public void g(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    @Override // com.google.android.material.internal.f, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
        this.a.removeCallbacks(this.f3277e);
        this.a.removeCallbacks(this.f3278f);
        this.a.setError(null);
        f(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date date = this.b.parse(charSequence.toString());
            this.a.setError(null);
            long time = date.getTime();
            if (this.c.i().f(time) && this.c.o(time)) {
                f(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableD = d(time);
            this.f3278f = runnableD;
            g(this.a, runnableD);
        } catch (ParseException unused) {
            g(this.a, this.f3277e);
        }
    }
}
