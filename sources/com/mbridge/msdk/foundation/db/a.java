package com.mbridge.msdk.foundation.db;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: compiled from: BaseDao.java */
/* JADX INFO: loaded from: classes4.dex */
public class a<T> {
    protected g mHelper;

    public a(g gVar) {
        this.mHelper = null;
        this.mHelper = gVar;
    }

    protected synchronized SQLiteDatabase getReadableDatabase() {
        return this.mHelper.a();
    }

    protected synchronized SQLiteDatabase getWritableDatabase() {
        return this.mHelper.b();
    }
}
