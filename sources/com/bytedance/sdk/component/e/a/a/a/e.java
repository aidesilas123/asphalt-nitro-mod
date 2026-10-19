package com.bytedance.sdk.component.e.a.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: MyDBCallback.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements com.bytedance.sdk.component.e.a.a.e {
    public static final e a = new e();
    private volatile SQLiteDatabase b;

    @Override // com.bytedance.sdk.component.e.a.a.e
    public SQLiteDatabase a(Context context) {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    this.b = new d(context).getWritableDatabase();
                    com.bytedance.sdk.component.e.a.c.c.a("---------------DB CREATE  SUCCESS------------");
                }
            }
        }
        return this.b;
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String a() {
        return "loghighpriority";
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String b() {
        return "adevent";
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String c() {
        return null;
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String d() {
        return "logstats";
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String e() {
        return "logstatsbatch";
    }

    @Override // com.bytedance.sdk.component.e.a.a.e
    public String f() {
        return null;
    }
}
