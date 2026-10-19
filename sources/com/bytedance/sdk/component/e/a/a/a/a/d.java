package com.bytedance.sdk.component.e.a.a.a.a;

import android.content.Context;
import com.bytedance.sdk.component.e.a.i;

/* JADX INFO: compiled from: HighPriorityAdEventRepoImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends a {
    public d(Context context, com.bytedance.sdk.component.e.a.d.b.a aVar) {
        super(context, aVar);
    }

    public static String c(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.component.e.a.a.a.a.a, com.bytedance.sdk.component.e.a.a.a.a.c
    public String b() {
        com.bytedance.sdk.component.e.a.a.e eVarD = i.g().d();
        if (eVarD != null) {
            return eVarD.a();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.e.a.a.a.a.a
    public byte c() {
        return (byte) 1;
    }

    @Override // com.bytedance.sdk.component.e.a.a.a.a.a
    public byte d() {
        return (byte) 0;
    }
}
