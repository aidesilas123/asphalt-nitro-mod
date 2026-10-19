package com.kidoz.sdk.api.general.cache;

/* JADX INFO: loaded from: classes4.dex */
public class WebViewDataRequest extends BaseDataRequest<WebViewData> {
    public WebViewDataRequest(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.kidoz.sdk.api.general.cache.BaseDataRequest
    public WebViewData parseDataResult(String str) {
        return new WebViewData(getUrl(), str);
    }
}
