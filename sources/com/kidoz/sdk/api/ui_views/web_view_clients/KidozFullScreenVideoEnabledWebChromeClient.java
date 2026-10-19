package com.kidoz.sdk.api.ui_views.web_view_clients;

import android.webkit.WebView;
import com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient;

/* JADX INFO: loaded from: classes4.dex */
public class KidozFullScreenVideoEnabledWebChromeClient extends FullScreenVideoEnabledWebChromeClient {
    public KidozFullScreenVideoEnabledWebChromeClient(WebView webView) {
        super(null, null, null, webView);
        setOnToggledFullscreen(new FullScreenVideoEnabledWebChromeClient.ToggledFullscreenCallback() { // from class: com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabledWebChromeClient.1
            @Override // com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient.ToggledFullscreenCallback
            public void toggledFullscreen(boolean z) {
            }
        });
    }
}
