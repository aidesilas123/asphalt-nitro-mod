package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.core.app.ActivityCompat;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionActivity extends Activity implements ActivityCompat.OnRequestPermissionsResultCallback {
    private final int a = 1;
    private final int b = 2;
    private final int c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2824d = 1;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            ActivityCompat.requestPermissions(this, new String[]{extras.getString("permissionType")}, 701);
            this.f2824d = 1;
        } else {
            setResult(2);
            finish();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        setResult(2);
        finish();
        return true;
    }

    @Override // android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f2824d = 3;
        if (i != 701) {
            return;
        }
        if (iArr[0] == 0) {
            setResult(1);
        } else {
            setResult(2);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        int i = this.f2824d;
        if (i == 1) {
            this.f2824d = 2;
        } else if (i == 2) {
            setResult(2);
            finish();
        }
    }
}
