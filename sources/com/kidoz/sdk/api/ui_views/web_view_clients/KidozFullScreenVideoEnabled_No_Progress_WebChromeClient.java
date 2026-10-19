package com.kidoz.sdk.api.ui_views.web_view_clients;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebView;
import com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient;

/* JADX INFO: loaded from: classes4.dex */
public class KidozFullScreenVideoEnabled_No_Progress_WebChromeClient extends FullScreenVideoEnabledWebChromeClient {
    private final Window mWindow;

    public KidozFullScreenVideoEnabled_No_Progress_WebChromeClient(View view, ViewGroup viewGroup, View view2, WebView webView, Window window) {
        super(view, viewGroup, view2, webView);
        this.mWindow = window;
        setOnToggleFullscreen();
    }

    private void setOnToggleFullscreen() {
        setOnToggledFullscreen(new FullScreenVideoEnabledWebChromeClient.ToggledFullscreenCallback() { // from class: com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.1
            @Override // com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient.ToggledFullscreenCallback
            public void toggledFullscreen(boolean z) {
                if (KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow != null) {
                    if (!z) {
                        WindowManager.LayoutParams attributes = KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.getAttributes();
                        attributes.flags &= -129;
                        KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.setAttributes(attributes);
                        if (Build.VERSION.SDK_INT >= 14) {
                            KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.getDecorView().setSystemUiVisibility(0);
                            return;
                        }
                        return;
                    }
                    WindowManager.LayoutParams attributes2 = KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.getAttributes();
                    int i = attributes2.flags | 1024;
                    attributes2.flags = i;
                    attributes2.flags = i | 128;
                    KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.setAttributes(attributes2);
                    int i2 = Build.VERSION.SDK_INT;
                    KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.this.mWindow.getDecorView().setSystemUiVisibility(i2 >= 16 ? i2 < 19 ? 1798 : 3846 : 2);
                }
            }
        });
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
    }
}
