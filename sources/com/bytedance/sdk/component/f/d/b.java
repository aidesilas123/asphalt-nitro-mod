package com.bytedance.sdk.component.f.d;

import android.util.Log;
import com.bytedance.sdk.component.f.d.c;
import com.bytedance.sdk.component.utils.l;

/* JADX INFO: compiled from: DefaultLoggerDelegate.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements c.b {
    @Override // com.bytedance.sdk.component.f.d.c.b
    public void a(String str, String str2) {
        Log.e(l.e(str), str2);
    }

    @Override // com.bytedance.sdk.component.f.d.c.b
    public void b(String str, String str2) {
        Log.d(l.e(str), str2);
    }
}
