package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.content.Intent;
import android.media.AudioManager;
import android.view.ViewGroup;
import com.gameloft.android.ANMP.GloftAGHM.FrameworkApplication;

/* JADX INFO: loaded from: classes2.dex */
public class AudioListenerPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private Activity a = null;
    private AudioManager b = null;
    private a c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2818d = false;

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        this.a = activity;
        this.b = (AudioManager) FrameworkApplication.getContext().getSystemService("audio");
        this.c = new a();
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
        if (this.f2818d) {
            this.f2818d = false;
            this.b.abandonAudioFocus(this.c);
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
        if (this.b.isMusicActive()) {
            JNIBridge.NativeUserMusicIsPlaying(true);
            return;
        }
        this.f2818d = true;
        JNIBridge.NativeUserMusicIsPlaying(false);
        this.b.requestAudioFocus(this.c, 3, 1);
    }
}
