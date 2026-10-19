package com.gameloft.glads;

import android.app.Activity;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;

/* JADX INFO: loaded from: classes2.dex */
public class RequestPermissionActivity extends Activity implements ActivityCompat.OnRequestPermissionsResultCallback {
    public static boolean a;

    public static native void nativeRequestPermissionResponse(boolean z);

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a = false;
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 701);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        nativeRequestPermissionResponse(a);
    }

    @Override // android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (i != 701) {
            return;
        }
        if (iArr.length > 0 && iArr[0] == 0) {
            a = true;
        }
        finish();
    }
}
