package com.bytedance.sdk.component.utils;

import java.util.List;

/* JADX INFO: compiled from: ListUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {
    public static boolean a(List<?> list) {
        return list == null || list.size() == 0;
    }

    public static boolean b(List<?> list) {
        return !a(list);
    }
}
