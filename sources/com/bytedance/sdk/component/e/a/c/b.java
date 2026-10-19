package com.bytedance.sdk.component.e.a.c;

import com.bytedance.sdk.component.e.a.f;
import com.bytedance.sdk.component.e.a.i;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: EventMonitorUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(AtomicLong atomicLong, int i) {
        f fVarP = i.g().p();
        if (fVarP == null || !fVarP.h() || atomicLong == null) {
            return;
        }
        atomicLong.getAndAdd(i);
    }
}
