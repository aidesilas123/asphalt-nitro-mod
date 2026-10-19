package com.nearme.platform.opensdk.pay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes4.dex */
public class PayTask {
    public static boolean isSupportAliQRCode(Context context) {
        return false;
    }

    public static boolean isSupportAliQRScan(Context context) {
        return false;
    }

    public static boolean isSupportAliRenew(Context context) {
        return Utils.a(context) >= 160 && Utils.isAppInstalled(context, "com.eg.android.AlipayGphone");
    }

    public static boolean isSupportWechatQRCode(Context context) {
        return Utils.a(context) >= 161 && Utils.getMMApiLevel(context) >= 8;
    }

    public static boolean isSupportWechatQRScan(Context context) {
        return false;
    }

    public static boolean isSupportWechatRenew(Context context) {
        return Utils.a(context) >= 161 && Utils.isAppInstalled(context, "com.tencent.mm");
    }

    public static void openAliQRCode(Context context) {
    }

    public static void openAliQRScan(Context context) {
    }

    public static void openWechatQRCode(Context context) {
        Intent intent = new Intent("com.nearme.pay.qrcode");
        intent.putExtra("extra_channel", "wxpay");
        intent.putExtra("extra_pkg_name", context.getPackageName());
        if (!(context instanceof Activity)) {
            intent.addFlags(DriveFile.MODE_READ_ONLY);
        }
        context.startActivity(intent);
    }

    public static void openWechatQRScan(Context context) {
    }
}
