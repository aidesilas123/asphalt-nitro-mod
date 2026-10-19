package com.kidoz.sdk.api.general.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.SoundPool;
import android.os.Build;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
public class SdkSoundManager {
    private static String TAG = "SdkSoundManager";
    private static HashMap<String, Integer> sLoadedSounds = new HashMap<>();
    private static SoundPool sSoundPool;

    @SuppressLint({"NewApi"})
    private static void initSoundPool() {
        if (sSoundPool == null) {
            if (Build.VERSION.SDK_INT < 21) {
                sSoundPool = new SoundPool(3, 3, 0);
                return;
            }
            SoundPool.Builder builder = new SoundPool.Builder();
            builder.setMaxStreams(3);
            AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
            builder2.setContentType(4);
            builder2.setLegacyStreamType(4);
            builder2.setUsage(1);
            builder.setAudioAttributes(builder2.build());
            sSoundPool = builder.build();
        }
    }

    private static void playLoadedSound(Context context, int i) {
        initSoundPool();
        if (context != null) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            float streamVolume = audioManager.getStreamVolume(3) / audioManager.getStreamMaxVolume(3);
            sSoundPool.play(i, streamVolume, streamVolume, 1, 0, 1.0f);
        }
    }

    public static void playSound(Context context, int i) {
        HashMap<String, Integer> map;
        initSoundPool();
        if (context != null && (map = sLoadedSounds) != null) {
            if (map.get(i + "") == null) {
                int iLoad = sSoundPool.load(context, i, 1);
                sLoadedSounds.put(i + "", Integer.valueOf(iLoad));
                playLoadedSound(context, iLoad);
                return;
            }
        }
        HashMap<String, Integer> map2 = sLoadedSounds;
        if (map2 != null) {
            playLoadedSound(context, map2.get("" + i).intValue());
        }
    }

    public static void playSound(Context context, String str) {
        SDKLogger.printDebugLog(TAG, "*** playSound");
        initSoundPool();
        if (context == null || str == null || sSoundPool == null) {
            return;
        }
        HashMap<String, Integer> map = sLoadedSounds;
        if (map != null && map.get(str) == null) {
            int iLoad = sSoundPool.load(str, 1);
            sLoadedSounds.put(str, Integer.valueOf(iLoad));
            playLoadedSound(context, iLoad);
            SDKLogger.printDebugLog(TAG, "playSound: path = " + str + ", soundID = " + String.valueOf(iLoad));
            return;
        }
        HashMap<String, Integer> map2 = sLoadedSounds;
        if (map2 != null) {
            playLoadedSound(context, map2.get(str).intValue());
            SDKLogger.printDebugLog(TAG, "playSound: path = " + str + ", soundID = " + String.valueOf(sLoadedSounds.get(str)));
        }
    }

    public static void preloadSound(Context context, int i) {
        HashMap<String, Integer> map;
        initSoundPool();
        if (context == null || (map = sLoadedSounds) == null) {
            return;
        }
        if (map.get(i + "") == null) {
            int iLoad = sSoundPool.load(context, i, 1);
            sLoadedSounds.put(i + "", Integer.valueOf(iLoad));
        }
    }

    public static void preloadSound(String str) {
        HashMap<String, Integer> map;
        SDKLogger.printDebugLog(TAG, "*** preloadSound");
        initSoundPool();
        if (str == null || (map = sLoadedSounds) == null || map.get(str) != null) {
            return;
        }
        int iLoad = sSoundPool.load(str, 1);
        sLoadedSounds.put(str, Integer.valueOf(iLoad));
        SDKLogger.printDebugLog(TAG, "preloadSound: path = " + str + ", soundID = " + String.valueOf(iLoad));
    }

    public static void releaseManager() {
        SoundPool soundPool = sSoundPool;
        if (soundPool != null) {
            soundPool.release();
        }
        sSoundPool = null;
        HashMap<String, Integer> map = sLoadedSounds;
        if (map != null) {
            map.clear();
        }
    }
}
