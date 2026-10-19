package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import com.facebook.applinks.AppLinkData;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: compiled from: AlarmManagerScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
public class p implements v {
    private final Context a;
    private final j0 b;
    private AlarmManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SchedulerConfig f3057d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f3058e;

    @VisibleForTesting
    p(Context context, j0 j0Var, AlarmManager alarmManager, com.google.android.datatransport.runtime.time.a aVar, SchedulerConfig schedulerConfig) {
        this.a = context;
        this.b = j0Var;
        this.c = alarmManager;
        this.f3058e = aVar;
        this.f3057d = schedulerConfig;
    }

    public p(Context context, j0 j0Var, com.google.android.datatransport.runtime.time.a aVar, SchedulerConfig schedulerConfig) {
        this(context, j0Var, (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM), aVar, schedulerConfig);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.v
    public void a(TransportContext transportContext, int i) {
        b(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.v
    public void b(TransportContext transportContext, int i, boolean z) {
        Uri.Builder builder = new Uri.Builder();
        builder.appendQueryParameter("backendName", transportContext.a());
        builder.appendQueryParameter("priority", String.valueOf(PriorityMapping.toInt(transportContext.c())));
        if (transportContext.b() != null) {
            builder.appendQueryParameter(AppLinkData.ARGUMENTS_EXTRAS_KEY, Base64.encodeToString(transportContext.b(), 0));
        }
        Intent intent = new Intent(this.a, (Class<?>) AlarmManagerSchedulerBroadcastReceiver.class);
        intent.setData(builder.build());
        intent.putExtra("attemptNumber", i);
        if (!z && c(intent)) {
            Logging.d("AlarmManagerScheduler", "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long jE = this.b.E(transportContext);
        long jE2 = this.f3057d.e(transportContext.c(), jE, i);
        Logging.d("AlarmManagerScheduler", "Scheduling upload for context %s in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Long.valueOf(jE2), Long.valueOf(jE), Integer.valueOf(i));
        this.c.set(3, this.f3058e.a() + jE2, PendingIntent.getBroadcast(this.a, 0, intent, 0));
    }

    @VisibleForTesting
    boolean c(Intent intent) {
        return PendingIntent.getBroadcast(this.a, 0, intent, DriveFile.MODE_WRITE_ONLY) != null;
    }
}
