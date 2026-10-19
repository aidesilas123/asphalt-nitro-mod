package com.unity3d.services.store.core;

import com.unity3d.scar.adapter.common.j;
import com.unity3d.services.core.webview.WebViewEventCategory;

/* JADX INFO: loaded from: classes4.dex */
public class StoreWebViewError extends j {
    public StoreWebViewError(Enum<?> r1, String str, Object... objArr) {
        super(r1, str, objArr);
    }

    @Override // com.unity3d.scar.adapter.common.j
    public String getDomain() {
        return WebViewEventCategory.STORE.name();
    }
}
