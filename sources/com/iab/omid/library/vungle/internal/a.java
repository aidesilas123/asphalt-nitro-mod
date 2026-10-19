package com.iab.omid.library.vungle.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.vungle.internal.d;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f5062f = new a(new d());
    protected com.iab.omid.library.vungle.utils.f a = new com.iab.omid.library.vungle.utils.f();
    private Date b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f5063d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5064e;

    private a(d dVar) {
        this.f5063d = dVar;
    }

    public static a a() {
        return f5062f;
    }

    private void c() {
        if (!this.c || this.b == null) {
            return;
        }
        Iterator<com.iab.omid.library.vungle.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(b());
        }
    }

    public void a(@NonNull Context context) {
        if (this.c) {
            return;
        }
        this.f5063d.a(context);
        this.f5063d.a(this);
        this.f5063d.e();
        this.f5064e = this.f5063d.c();
        this.c = true;
    }

    @Override // com.iab.omid.library.vungle.internal.d.a
    public void a(boolean z) {
        if (!this.f5064e && z) {
            d();
        }
        this.f5064e = z;
    }

    public Date b() {
        Date date = this.b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date dateA = this.a.a();
        Date date = this.b;
        if (date == null || dateA.after(date)) {
            this.b = dateA;
            c();
        }
    }
}
