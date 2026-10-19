package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;

/* JADX INFO: loaded from: classes2.dex */
public class UtilsNetworkStateReceiver extends BroadcastReceiver {
    public static int CheckConnectionType(Context context) {
        if (context == null || hasConnectivity(context) == 0) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int type = connectivityManager.getActiveNetworkInfo().getType();
        int i = 1;
        if (type != 1) {
            switch (type) {
                case 6:
                    i = 5;
                    break;
                case 7:
                    i = 2;
                    break;
                case 8:
                    i = 3;
                    break;
                case 9:
                    i = 4;
                    break;
                default:
                    i = 9;
                    break;
            }
        }
        if (i == 9) {
            int networkType = -1;
            try {
                networkType = ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
            } catch (SecurityException unused) {
                if (Build.VERSION.SDK_INT >= 23) {
                    Network[] allNetworks = connectivityManager.getAllNetworks();
                    if (allNetworks.length > 0) {
                        for (Network network : allNetworks) {
                            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                            if (networkCapabilities != null && networkCapabilities.hasTransport(0)) {
                                networkType = 13;
                            }
                        }
                    }
                } else if (type == 0 || type == 4 || type == 5) {
                    networkType = 13;
                }
            }
            switch (networkType) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    i = 6;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    i = 7;
                    break;
                case 13:
                    i = 8;
                    break;
            }
        }
        if (i == 3) {
            return 9;
        }
        return i;
    }

    public static int hasConnectivity(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return 0;
        }
        return activeNetworkInfo.isConnected() ? 1 : 0;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        JNIBridge.SetConnectionType(CheckConnectionType(context));
    }
}
