package com.nearme.game.sdk.component.proxy;

import android.os.Bundle;
import com.nearme.plugin.framework.LogUtils;
import com.nearme.plugin.framework.activity.PluginProxyActivity;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyActivity extends PluginProxyActivity {
    @Override // com.nearme.plugin.framework.activity.PluginProxyActivity
    protected final String a() {
        return "oppo_game_service.so";
    }

    @Override // com.nearme.plugin.framework.activity.PluginProxyActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        LogUtils.log("ProxyActivity", "onCreate:pre");
        super.onCreate(bundle);
        LogUtils.log("ProxyActivity", "onCreate:post");
        getWindow().setFlags(1024, 1024);
    }
}
