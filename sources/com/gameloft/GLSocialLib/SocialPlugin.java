package com.gameloft.GLSocialLib;

import android.app.Activity;
import android.content.Intent;
import android.view.ViewGroup;
import com.gameloft.GLSocialLib.GameAPI.GameAPIAndroidGLSocialLib;
import com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib;
import com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a;

/* JADX INFO: loaded from: classes2.dex */
public class SocialPlugin implements a {
    private FacebookAndroidGLSocialLib a = null;
    private GameAPIAndroidGLSocialLib b = null;

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i == 64206 || i == 64207 || i == 64210 || i == 64209) {
            this.a.onActivityResult(i, i2, intent);
            return true;
        }
        if (i == 9001) {
            this.b.onActivityResult(i, i2, intent);
            return true;
        }
        if (i == 1001) {
            this.b.onActivityResult(i, i2, intent);
            return true;
        }
        if (i == 1002) {
            this.b.onActivityResult(i, i2, intent);
            return true;
        }
        if (i != 1004) {
            return false;
        }
        this.b.onActivityResult(i, i2, intent);
        return true;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        this.a = new FacebookAndroidGLSocialLib(activity, activity, viewGroup);
        this.b = new GameAPIAndroidGLSocialLib(activity, viewGroup);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
        this.b.onResume();
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
