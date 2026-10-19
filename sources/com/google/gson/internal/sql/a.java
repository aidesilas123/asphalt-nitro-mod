package com.google.gson.internal.sql;

import com.google.gson.internal.bind.DefaultDateTypeAdapter;
import com.google.gson.q;
import java.sql.Timestamp;
import java.util.Date;

/* JADX INFO: compiled from: SqlTypesSupport.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {
    public static final boolean a;
    public static final DefaultDateTypeAdapter.b<? extends Date> b;
    public static final DefaultDateTypeAdapter.b<? extends Date> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final q f4243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final q f4244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final q f4245f;

    /* JADX INFO: renamed from: com.google.gson.internal.sql.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SqlTypesSupport.java */
    class C0276a extends DefaultDateTypeAdapter.b<java.sql.Date> {
        C0276a(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public java.sql.Date d(Date date) {
            return new java.sql.Date(date.getTime());
        }
    }

    /* JADX INFO: compiled from: SqlTypesSupport.java */
    class b extends DefaultDateTypeAdapter.b<Timestamp> {
        b(Class cls) {
            super(cls);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.b
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Timestamp d(Date date) {
            return new Timestamp(date.getTime());
        }
    }

    static {
        boolean z;
        try {
            Class.forName("java.sql.Date");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        a = z;
        if (z) {
            b = new C0276a(java.sql.Date.class);
            c = new b(Timestamp.class);
            f4243d = SqlDateTypeAdapter.a;
            f4244e = SqlTimeTypeAdapter.a;
            f4245f = SqlTimestampTypeAdapter.a;
            return;
        }
        b = null;
        c = null;
        f4243d = null;
        f4244e = null;
        f4245f = null;
    }
}
