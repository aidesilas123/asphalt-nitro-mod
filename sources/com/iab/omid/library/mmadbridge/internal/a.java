package com.iab.omid.library.mmadbridge.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import com.iab.omid.library.mmadbridge.internal.d;
import java.util.Date;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class a implements d.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f5026f = new a(new d());
    protected com.iab.omid.library.mmadbridge.utils.f a = new com.iab.omid.library.mmadbridge.utils.f();
    private Date b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private d f5027d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5028e;

    private a(d dVar) {
        this.f5027d = dVar;
    }

    public static a a() {
        return f5026f;
    }

    private void c() {
        if (!this.c || this.b == null) {
            return;
        }
        Iterator<com.iab.omid.library.mmadbridge.adsession.a> it = c.c().a().iterator();
        while (it.hasNext()) {
            it.next().getAdSessionStatePublisher().a(b());
        }
    }

    public void a(@NonNull Context context) {
        if (this.c) {
            return;
        }
        this.f5027d.a(context);
        this.f5027d.a(this);
        this.f5027d.e();
        this.f5028e = this.f5027d.c();
        this.c = true;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d.a
    public void a(boolean z) {
        if (!this.f5028e && z) {
            d();
        }
        this.f5028e = z;
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
