package com.hyprmx.android.sdk.presentation;

import java.util.Map;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public interface h extends k {
    Object a(String str);

    Object a(String str, Map<String, ? extends Object> map);

    void a(Object obj);

    void a(CoroutineScope coroutineScope);

    void destroy();

    <T> T getProperty(String str);
}
