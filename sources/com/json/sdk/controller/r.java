package com.json.sdk.controller;

import android.app.Activity;
import android.media.AudioManager;
import com.json.q5;

/* JADX INFO: loaded from: classes4.dex */
class r {

    class a implements Runnable {
        final /* synthetic */ AudioManager a;

        a(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.b(this.a);
        }
    }

    class b implements Runnable {
        final /* synthetic */ AudioManager a;

        b(AudioManager audioManager) {
            this.a = audioManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            r.e(this.a);
        }
    }

    r() {
    }

    public static void a(Activity activity) {
        q5.a.a(new a((AudioManager) activity.getSystemService("audio")));
    }

    public static void b(Activity activity) {
        q5.a.a(new b((AudioManager) activity.getSystemService("audio")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(AudioManager audioManager) {
        try {
            audioManager.abandonAudioFocus(null);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(AudioManager audioManager) {
        try {
            audioManager.requestAudioFocus(null, 3, 2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
