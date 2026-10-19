package com.bytedance.sdk.openadsdk.dislike;

import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.p;
import java.util.List;

/* JADX INFO: compiled from: DislikeDispatcher.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a a;
    private final p<com.bytedance.sdk.openadsdk.b.a> b = o.c();

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public void a(@NonNull String str, List<FilterWord> list) {
        a(str, list, null, null);
    }

    public void a(@NonNull String str, List<FilterWord> list, String str2, String str3) {
        this.b.a(str, list, str2, str3);
    }
}
