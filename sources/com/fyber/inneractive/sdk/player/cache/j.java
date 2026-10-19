package com.fyber.inneractive.sdk.player.cache;

import android.media.MediaExtractor;
import android.media.MediaPlayer;
import android.os.Build;
import com.fyber.inneractive.sdk.player.cache.b;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.File;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends b {
    public final boolean b;

    public j(boolean z) {
        this.b = z;
    }

    @Override // com.fyber.inneractive.sdk.player.cache.b
    public b.a a(a aVar, String str) {
        FileInputStream fileInputStream;
        Throwable th;
        b.a aVar2 = b.a.INVALID;
        MediaPlayer mediaPlayer = new MediaPlayer();
        File file = aVar.a;
        boolean z = true;
        if (file != null && file.exists()) {
            try {
                fileInputStream = new FileInputStream(aVar.a());
                try {
                    mediaPlayer.setDataSource(aVar.a().getAbsolutePath());
                    mediaPlayer.prepare();
                    if (mediaPlayer.getDuration() > 0) {
                        aVar2 = b.a.OK;
                        if (mediaPlayer.getVideoWidth() > 0 && mediaPlayer.getVideoHeight() > 0) {
                            this.a.put("video.width", String.valueOf(mediaPlayer.getVideoWidth()));
                            this.a.put("video.height", String.valueOf(mediaPlayer.getVideoHeight()));
                        }
                        this.a.put("video.duration", String.valueOf(mediaPlayer.getDuration()));
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        IAlog.a("Exception raised while trying to open a cache candidate", th, new Object[0]);
                        if (aVar.c) {
                            aVar2 = b.a.PARTIAL_CANNOT_VALIDATE;
                        }
                    } finally {
                        m.a(fileInputStream);
                    }
                }
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
            }
        }
        try {
            mediaPlayer.release();
        } catch (Throwable unused) {
        }
        boolean z2 = !this.b || Build.VERSION.SDK_INT < 16;
        if (!z2 && aVar2 == b.a.OK) {
            MediaExtractor mediaExtractor = new MediaExtractor();
            try {
                mediaExtractor.setDataSource(aVar.a().getAbsolutePath());
            } catch (Throwable unused2) {
            }
            try {
                for (int i = 0; i < mediaExtractor.getTrackCount(); i++) {
                    String string = mediaExtractor.getTrackFormat(i).getString("mime");
                    if (string == null || !string.startsWith("video/")) {
                    }
                }
                mediaExtractor.release();
            } catch (Throwable unused3) {
            }
            z = z2;
            z2 = z;
        }
        return (aVar2 != b.a.OK || z2) ? aVar2 : aVar.c ? b.a.PARTIAL_CANNOT_VALIDATE : b.a.INVALID;
    }
}
