package com.nearme.plugin.framework.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nearme.plugin.framework.LogUtils;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public class PluginProxyBroadcastReceiver extends BroadcastReceiver {
    /* JADX WARN: Removed duplicated region for block: B:26:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.nearme.plugin.framework.receiver.a a(android.content.Context r11, android.content.Intent r12) throws java.io.IOException {
        /*
            r10 = this;
            java.lang.String r0 = "PLUGIN_NAME"
            java.lang.String r0 = r12.getStringExtra(r0)
            java.lang.String r1 = "LAUNCH_COMPONENT"
            java.lang.String r12 = r12.getStringExtra(r1)
            r7 = 0
            java.lang.String r1 = com.nearme.plugin.framework.PathUtils.getPluginInstallPath(r11, r0)     // Catch: java.io.IOException -> L13
            r8 = r1
            goto L18
        L13:
            r1 = move-exception
            r1.printStackTrace()
            r8 = r7
        L18:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L56
            boolean r1 = android.text.TextUtils.isEmpty(r8)
            if (r1 != 0) goto L56
            java.io.File r1 = new java.io.File
            r1.<init>(r8)
            boolean r1 = r1.exists()
            if (r1 == 0) goto L53
            android.content.pm.PackageInfo r1 = com.nearme.plugin.framework.PluginStatic.getOrCreatePkgInfo(r11, r8)
            java.lang.ClassLoader r5 = com.nearme.plugin.framework.PluginStatic.getOrCreateClassLoaderByPath(r11, r1, r8)     // Catch: java.lang.Exception -> L4d
            java.lang.Class r11 = r5.loadClass(r12)     // Catch: java.lang.Exception -> L4d
            java.lang.Object r11 = r11.newInstance()     // Catch: java.lang.Exception -> L4d
            com.nearme.plugin.framework.receiver.a r11 = (com.nearme.plugin.framework.receiver.a) r11     // Catch: java.lang.Exception -> L4d
            r6 = 0
            r1 = r11
            r2 = r0
            r3 = r8
            r4 = r10
            r1.b(r2, r3, r4, r5, r6)     // Catch: java.lang.Exception -> L4a
            goto L5b
        L4a:
            r1 = move-exception
            r7 = r11
            goto L4e
        L4d:
            r1 = move-exception
        L4e:
            java.lang.String r11 = com.nearme.plugin.framework.LogUtils.getExceptionInfo(r1)
            goto L58
        L53:
            java.lang.String r11 = "plugin file not exsist!"
            goto L58
        L56:
            java.lang.String r11 = "Param error!"
        L58:
            r9 = r7
            r7 = r11
            r11 = r9
        L5b:
            if (r7 == 0) goto L94
            java.lang.String r1 = com.nearme.plugin.framework.LogUtils.a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "PluginProxyBroadcastReceiver.startPlugin errInfo = "
            r2.<init>(r3)
            r2.append(r7)
            java.lang.String r2 = r2.toString()
            com.nearme.plugin.framework.LogUtils.log(r1, r2)
            java.lang.String r1 = com.nearme.plugin.framework.LogUtils.a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "attach info : pluginApk = "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = ", launchReceiver = "
            r2.append(r0)
            r2.append(r12)
            java.lang.String r12 = ", pluginApkFilePath = "
            r2.append(r12)
            r2.append(r8)
            java.lang.String r12 = r2.toString()
            com.nearme.plugin.framework.LogUtils.log(r1, r12)
            goto L9b
        L94:
            java.lang.String r12 = com.nearme.plugin.framework.LogUtils.a
            java.lang.String r0 = "PluginProxyBroadcastReceiver start successfully!"
            com.nearme.plugin.framework.LogUtils.log(r12, r0)
        L9b:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.plugin.framework.receiver.PluginProxyBroadcastReceiver.a(android.content.Context, android.content.Intent):com.nearme.plugin.framework.receiver.a");
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) throws IOException {
        if (LogUtils.b) {
            LogUtils.log(LogUtils.a, "PluginProxyBroadcastReceiver.onReceive intent = " + intent);
        }
        a aVarA = a(context, intent);
        if (LogUtils.b) {
            LogUtils.log(LogUtils.a, "PluginProxyBroadcastReceiver.onReceive receiver = " + aVarA);
        }
        if (aVarA != null) {
            aVarA.a(context, intent);
        }
    }
}
