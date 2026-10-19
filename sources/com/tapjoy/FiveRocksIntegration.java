package com.tapjoy;

import com.tapjoy.internal.o8;

/* JADX INFO: loaded from: classes4.dex */
public class FiveRocksIntegration {
    public static final o8 a = new o8();

    public static void addPlacementCallback(String str, TJPlacement tJPlacement) {
        o8 o8Var = a;
        synchronized (o8Var) {
            o8Var.put(str, tJPlacement);
        }
    }
}
