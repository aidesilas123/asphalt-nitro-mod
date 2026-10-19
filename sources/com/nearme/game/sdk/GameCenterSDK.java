package com.nearme.game.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Process;
import com.nearme.game.sdk.common.model.biz.b;
import com.nearme.game.sdk.common.util.AppUtil;

/* JADX INFO: loaded from: classes4.dex */
public class GameCenterSDK {
    private static GameCenterSDK a;
    private static a b;

    private GameCenterSDK(com.nearme.game.sdk.common.model.biz.a aVar, Context context) {
        b = new a(context, aVar);
    }

    private GameCenterSDK(String str, Context context) {
        b = new a(context, str);
    }

    private static boolean b(Context context) {
        if (!context.getPackageName().equals(AppUtil.getCurrentProcessName(context))) {
            return false;
        }
        int pPid = AppUtil.getPPid(AppUtil.getPPid(Process.myPid()));
        return 1 == Math.abs(pPid) || pPid == 0;
    }

    public static GameCenterSDK getInstance() {
        GameCenterSDK gameCenterSDK = a;
        if (gameCenterSDK != null) {
            return gameCenterSDK;
        }
        throw new RuntimeException("GameCenterSDK must be init before call getInstance().");
    }

    @Deprecated
    public static void init(com.nearme.game.sdk.common.model.biz.a aVar, Context context) {
        if (b(context) && a == null) {
            synchronized (GameCenterSDK.class) {
                if (a == null) {
                    aVar.f7678f = context.getPackageName();
                    try {
                        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(aVar.f7678f, 0);
                        aVar.f7679g = packageInfo.versionCode;
                        aVar.h = packageInfo.versionName;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    a = new GameCenterSDK(aVar, context);
                }
            }
        }
    }

    public static void init(String str, Context context) {
        if (b(context) && a == null) {
            synchronized (GameCenterSDK.class) {
                if (a == null) {
                    a = new GameCenterSDK(str, context);
                }
            }
        }
    }

    public void a(b bVar) {
        b.B(bVar);
    }
}
