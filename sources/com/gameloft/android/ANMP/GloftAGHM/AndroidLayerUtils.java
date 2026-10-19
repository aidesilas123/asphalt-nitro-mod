package com.gameloft.android.ANMP.GloftAGHM;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidLayerUtils implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static AlertDialog a;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ String c;

        /* JADX INFO: renamed from: com.gameloft.android.ANMP.GloftAGHM.AndroidLayerUtils$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0208a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0208a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                AlertDialog unused = AndroidLayerUtils.a = null;
            }
        }

        a(String str, String str2, String str3) {
            this.a = str;
            this.b = str2;
            this.c = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog unused = AndroidLayerUtils.a = new AlertDialog.Builder(SUtils.getActivity()).setTitle(this.a).setMessage(this.b).setCancelable(false).setPositiveButton(this.c, new DialogInterfaceOnClickListenerC0208a()).show();
            synchronized (this) {
                notify();
            }
        }
    }

    public static String GetDeviceRegion() {
        return Device.retrieveDeviceRegion();
    }

    public static boolean IsAlertVisible() {
        return a != null;
    }

    public static void ShowAlert(String str, String str2, String str3) {
        a aVar = new a(str, str2, str3);
        synchronized (aVar) {
            SUtils.getActivity().runOnUiThread(aVar);
            try {
                aVar.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        PopUpsBridgeClass.InitBridgeLibrary(activity, (RelativeLayout) viewGroup);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
