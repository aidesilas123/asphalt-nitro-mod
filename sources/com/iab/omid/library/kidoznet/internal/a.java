package com.iab.omid.library.kidoznet.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.kidoznet.internal.d;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f4990f = new a(new d());
    protected com.iab.omid.library.kidoznet.utils.f a = new com.iab.omid.library.kidoznet.utils.f();
    private Date b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f4991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4992e;

    private a(d dVar) {
        this.f4991d = dVar;
    }

    public static a a() {
        return f4990f;
    }

    private void c() {
        if (!this.c || this.b == null) {
            return;
        }
        Iterator<com.iab.omid.library.kidoznet.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(b());
        }
    }

    public void a(@NonNull Context context) {
        if (this.c) {
            return;
        }
        this.f4991d.a(context);
        this.f4991d.a(this);
        this.f4991d.e();
        this.f4992e = this.f4991d.c();
        this.c = true;
    }

    @Override // com.iab.omid.library.kidoznet.internal.d.a
    public void a(boolean z) {
        if (!this.f4992e && z) {
            d();
        }
        this.f4992e = z;
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
