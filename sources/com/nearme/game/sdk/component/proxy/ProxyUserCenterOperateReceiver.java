package com.nearme.game.sdk.component.proxy;

import android.content.Context;
import android.content.Intent;
import com.nearme.plugin.framework.LogUtils;
import com.nearme.plugin.framework.receiver.PluginProxyBroadcastReceiver;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class ProxyUserCenterOperateReceiver extends PluginProxyBroadcastReceiver {
    @Override // com.nearme.plugin.framework.receiver.PluginProxyBroadcastReceiver, android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws IOException {
        LogUtils.log("ProxyUserCenterOperateReceiver", "onReceive action = " + intent.getAction());
        intent.putExtra("PLUGIN_NAME", "oppo_game_service.so");
        intent.putExtra("LAUNCH_COMPONENT", "com.oppo.usercenter.sdk.helper.UserCenterOperateReceiver");
        super.onReceive(context, intent);
    }
}
