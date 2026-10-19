package com.applovin.exoplayer2.d;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.d.c;
import com.applovin.exoplayer2.l.ai;
import com.google.android.gms.games.GamesStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    @RequiresApi(18)
    private static final class a {
        public static boolean b(@Nullable Throwable th) {
            return th instanceof NotProvisionedException;
        }

        public static boolean c(@Nullable Throwable th) {
            return th instanceof DeniedByServerException;
        }
    }

    @RequiresApi(21)
    private static final class b {
        public static boolean d(@Nullable Throwable th) {
            return th instanceof MediaDrm.MediaDrmStateException;
        }

        public static int e(Throwable th) {
            return com.applovin.exoplayer2.h.r(ai.bl(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        }
    }

    @RequiresApi(23)
    private static final class c {
        public static boolean f(@Nullable Throwable th) {
            return th instanceof MediaDrmResetException;
        }
    }

    public static int b(Exception exc, int i) {
        int i2 = ai.acV;
        if (i2 >= 21 && b.d(exc)) {
            return b.e(exc);
        }
        if (i2 >= 23 && c.f(exc)) {
            return 6006;
        }
        if (i2 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i2 >= 18 && a.c(exc)) {
            return 6007;
        }
        if (exc instanceof t) {
            return 6001;
        }
        if (exc instanceof c.d) {
            return 6003;
        }
        if (exc instanceof q) {
            return 6008;
        }
        if (i == 1) {
            return 6006;
        }
        if (i == 2) {
            return GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_OPERATION;
        }
        if (i == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }
}
