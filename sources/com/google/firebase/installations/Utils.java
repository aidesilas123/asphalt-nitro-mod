package com.google.firebase.installations;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.facebook.internal.security.CertificateUtil;
import com.google.firebase.installations.local.PersistedInstallationEntry;
import com.google.firebase.installations.time.Clock;
import com.google.firebase.installations.time.SystemClock;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final class Utils {
    public static final long a = TimeUnit.HOURS.toSeconds(1);
    private static final Pattern b = Pattern.compile("\\AA[\\w-]{38}\\z");
    private static Utils c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Clock f4105d;

    private Utils(Clock clock) {
        this.f4105d = clock;
    }

    static boolean e(@Nullable String str) {
        return b.matcher(str).matches();
    }

    static boolean f(@Nullable String str) {
        return str.contains(CertificateUtil.DELIMITER);
    }

    public static Utils getInstance() {
        return getInstance(SystemClock.getInstance());
    }

    public static Utils getInstance(Clock clock) {
        if (c == null) {
            c = new Utils(clock);
        }
        return c;
    }

    public long a() {
        return this.f4105d.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public long c() {
        return (long) (Math.random() * 1000.0d);
    }

    public boolean d(@NonNull PersistedInstallationEntry persistedInstallationEntry) {
        return TextUtils.isEmpty(persistedInstallationEntry.a()) || persistedInstallationEntry.g() + persistedInstallationEntry.b() < b() + a;
    }
}
