package com.nearme.game.sdk;

import android.content.Context;
import com.nearme.game.sdk.common.model.biz.b;

/* JADX INFO: compiled from: GCInternalImpl.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a extends d {
    private static boolean u = true;
    private boolean v;

    a(Context context, com.nearme.game.sdk.common.model.biz.a aVar) {
        super(context, aVar);
        this.v = false;
    }

    a(Context context, String str) {
        super(context, C(context, str));
        this.v = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.nearme.game.sdk.common.model.biz.a C(android.content.Context r16, java.lang.String r17) {
        /*
            java.lang.String r1 = r16.getPackageName()
            android.content.pm.PackageManager r2 = r16.getPackageManager()
            r0 = 128(0x80, float:1.8E-43)
            r3 = 1
            r4 = 0
            android.content.pm.ApplicationInfo r0 = r2.getApplicationInfo(r1, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6f
            android.os.Bundle r5 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6f
            java.lang.String r6 = "debug_mode"
            boolean r5 = r5.getBoolean(r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L6f
            android.os.Bundle r6 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            java.lang.String r7 = "is_offline_game"
            boolean r6 = r6.getBoolean(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            com.nearme.game.sdk.a.u = r6     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            android.os.Bundle r6 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            java.lang.String r7 = "game_mode"
            int r6 = r6.getInt(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L68
            android.os.Bundle r7 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L65
            java.lang.String r8 = "app_type"
            int r7 = r7.getInt(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L65
            android.content.Intent r8 = r2.getLaunchIntentForPackage(r1)     // Catch: java.lang.Exception -> L48
            android.content.ComponentName r8 = r8.getComponent()     // Catch: java.lang.Exception -> L48
            android.content.pm.ActivityInfo r8 = r2.getActivityInfo(r8, r4)     // Catch: java.lang.Exception -> L48
            int r8 = r8.screenOrientation     // Catch: java.lang.Exception -> L48
            if (r3 == r8) goto L50
            r9 = 7
            if (r9 != r8) goto L46
            goto L50
        L46:
            r3 = 0
            goto L50
        L48:
            android.os.Bundle r8 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            java.lang.String r9 = "is_orientation_portrait"
            boolean r3 = r8.getBoolean(r9)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
        L50:
            android.os.Bundle r0 = r0.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5c
            java.lang.String r8 = "app_key"
            java.lang.String r0 = r0.getString(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L5c
            r10 = r0
            r13 = r3
            r12 = r5
            goto L7b
        L5c:
            r0 = move-exception
            r15 = r5
            r5 = r0
            r0 = r3
            r3 = r15
            goto L74
        L62:
            r0 = move-exception
            r3 = r5
            goto L6c
        L65:
            r0 = move-exception
            r3 = r5
            goto L6b
        L68:
            r0 = move-exception
            r3 = r5
            r6 = 0
        L6b:
            r7 = 0
        L6c:
            r5 = r0
            r0 = 1
            goto L74
        L6f:
            r0 = move-exception
            r5 = r0
            r0 = 1
            r6 = 0
            r7 = 0
        L74:
            r5.printStackTrace()
            r5 = 0
            r13 = r0
            r12 = r3
            r10 = r5
        L7b:
            r14 = r6
            boolean r0 = android.text.TextUtils.isEmpty(r10)
            if (r0 != 0) goto La2
            com.nearme.game.sdk.common.model.biz.a r3 = new com.nearme.game.sdk.common.model.biz.a
            boolean r9 = com.nearme.game.sdk.a.u
            r8 = r3
            r11 = r17
            r8.<init>(r9, r10, r11, r12, r13, r14)
            r3.f7678f = r1
            r3.j = r7
            android.content.pm.PackageInfo r0 = r2.getPackageInfo(r1, r4)     // Catch: java.lang.Exception -> L9d
            int r1 = r0.versionCode     // Catch: java.lang.Exception -> L9d
            r3.f7679g = r1     // Catch: java.lang.Exception -> L9d
            java.lang.String r0 = r0.versionName     // Catch: java.lang.Exception -> L9d
            r3.h = r0     // Catch: java.lang.Exception -> L9d
            goto La1
        L9d:
            r0 = move-exception
            r0.printStackTrace()
        La1:
            return r3
        La2:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            java.lang.String r1 = "请参照最新sdk接入文档，正确配置AndroidManifest.xml中相关meta-data参数！"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nearme.game.sdk.a.C(android.content.Context, java.lang.String):com.nearme.game.sdk.common.model.biz.a");
    }

    final void B(b bVar) {
        v(7013, bVar);
    }
}
