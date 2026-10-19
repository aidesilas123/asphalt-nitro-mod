package com.moat.analytics.mobile.glft;

import android.app.Activity;
import android.media.MediaPlayer;
import android.view.View;
import com.moat.analytics.mobile.glft.v;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class s extends g<MediaPlayer> implements NativeVideoTracker {

    static class a implements v.c<NativeVideoTracker> {
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> a;
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> b;
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> f7662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> f7663e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final com.moat.analytics.mobile.glft.a.b.a<Method> f7664f;

        static {
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA = com.moat.analytics.mobile.glft.a.b.a.a();
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA2 = com.moat.analytics.mobile.glft.a.b.a.a();
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA3 = com.moat.analytics.mobile.glft.a.b.a.a();
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA4 = com.moat.analytics.mobile.glft.a.b.a.a();
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA5 = com.moat.analytics.mobile.glft.a.b.a.a();
            com.moat.analytics.mobile.glft.a.b.a<Method> aVarA6 = com.moat.analytics.mobile.glft.a.b.a.a();
            try {
                Method method = NativeVideoTracker.class.getMethod("setActivity", Activity.class);
                Method method2 = NativeVideoTracker.class.getMethod("trackVideoAd", Map.class, MediaPlayer.class, View.class);
                Method method3 = NativeVideoTracker.class.getMethod("setPlayerVolume", Double.class);
                Method method4 = NativeVideoTracker.class.getMethod("changeTargetView", View.class);
                Method method5 = NativeVideoTracker.class.getMethod("dispatchEvent", MoatAdEvent.class);
                Method method6 = NativeVideoTracker.class.getMethod("stopTracking", new Class[0]);
                aVarA = com.moat.analytics.mobile.glft.a.b.a.a(method);
                aVarA2 = com.moat.analytics.mobile.glft.a.b.a.a(method2);
                aVarA3 = com.moat.analytics.mobile.glft.a.b.a.a(method3);
                aVarA4 = com.moat.analytics.mobile.glft.a.b.a.a(method4);
                aVarA5 = com.moat.analytics.mobile.glft.a.b.a.a(method5);
                aVarA6 = com.moat.analytics.mobile.glft.a.b.a.a(method6);
            } catch (NoSuchMethodException e2) {
                l.a(e2);
            }
            a = aVarA;
            b = aVarA2;
            c = aVarA3;
            f7662d = aVarA4;
            f7663e = aVarA5;
            f7664f = aVarA6;
        }

        a() {
        }

        @Override // com.moat.analytics.mobile.glft.v.c
        public Class<NativeVideoTracker> a() {
            return NativeVideoTracker.class;
        }
    }

    s(String str) {
        super(str);
    }

    @Override // com.moat.analytics.mobile.glft.c
    protected Map<String, Object> d() {
        MediaPlayer mediaPlayer = (MediaPlayer) ((c) this).i.get();
        HashMap map = new HashMap();
        map.put("width", Integer.valueOf(mediaPlayer.getVideoWidth()));
        map.put("height", Integer.valueOf(mediaPlayer.getVideoHeight()));
        map.put("duration", Integer.valueOf(mediaPlayer.getDuration()));
        return map;
    }

    @Override // com.moat.analytics.mobile.glft.g
    protected Integer g() {
        return Integer.valueOf(((MediaPlayer) ((c) this).i.get()).getCurrentPosition());
    }

    @Override // com.moat.analytics.mobile.glft.g
    protected boolean h() {
        return ((MediaPlayer) ((c) this).i.get()).isPlaying();
    }

    @Override // com.moat.analytics.mobile.glft.g
    protected Integer i() {
        return Integer.valueOf(((MediaPlayer) ((c) this).i.get()).getDuration());
    }

    @Override // com.moat.analytics.mobile.glft.g, com.moat.analytics.mobile.glft.c
    /* JADX INFO: renamed from: trackVideoAd, reason: merged with bridge method [inline-methods] */
    public boolean a(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
        String str;
        if (mediaPlayer == null) {
            str = "Null player instance. Not tracking.";
        } else {
            try {
                mediaPlayer.getCurrentPosition();
                return super.a(map, mediaPlayer, view);
            } catch (Exception unused) {
                str = "Playback has already completed. Not tracking.";
            }
        }
        n.a(3, "MoatNativeVideoTracker", this, str);
        return false;
    }
}
