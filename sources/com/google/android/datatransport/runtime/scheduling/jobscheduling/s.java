package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.os.PersistableBundle;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.facebook.applinks.AppLinkData;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.zip.Adler32;

/* JADX INFO: compiled from: JobInfoScheduler.java */
/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(api = 21)
public class s implements v {
    private final Context a;
    private final j0 b;
    private final SchedulerConfig c;

    public s(Context context, j0 j0Var, SchedulerConfig schedulerConfig) {
        this.a = context;
        this.b = j0Var;
        this.c = schedulerConfig;
    }

    private boolean d(JobScheduler jobScheduler, int i, int i2) {
        for (JobInfo jobInfo : jobScheduler.getAllPendingJobs()) {
            int i3 = jobInfo.getExtras().getInt("attemptNumber");
            if (jobInfo.getId() == i) {
                return i3 >= i2;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.v
    public void a(TransportContext transportContext, int i) {
        b(transportContext, i, false);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.v
    public void b(TransportContext transportContext, int i, boolean z) {
        ComponentName componentName = new ComponentName(this.a, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) this.a.getSystemService("jobscheduler");
        int iC = c(transportContext);
        if (!z && d(jobScheduler, iC, i)) {
            Logging.d("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", transportContext);
            return;
        }
        long jE = this.b.E(transportContext);
        JobInfo.Builder builderB = this.c.b(new JobInfo.Builder(iC, componentName), transportContext.c(), jE, i);
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putInt("attemptNumber", i);
        persistableBundle.putString("backendName", transportContext.a());
        persistableBundle.putInt("priority", PriorityMapping.toInt(transportContext.c()));
        if (transportContext.b() != null) {
            persistableBundle.putString(AppLinkData.ARGUMENTS_EXTRAS_KEY, Base64.encodeToString(transportContext.b(), 0));
        }
        builderB.setExtras(persistableBundle);
        Logging.d("JobInfoScheduler", "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", transportContext, Integer.valueOf(iC), Long.valueOf(this.c.e(transportContext.c(), jE, i)), Long.valueOf(jE), Integer.valueOf(i));
        jobScheduler.schedule(builderB.build());
    }

    @VisibleForTesting
    int c(TransportContext transportContext) {
        Adler32 adler32 = new Adler32();
        adler32.update(this.a.getPackageName().getBytes(Charset.forName(C.UTF8_NAME)));
        adler32.update(transportContext.a().getBytes(Charset.forName(C.UTF8_NAME)));
        adler32.update(ByteBuffer.allocate(4).putInt(PriorityMapping.toInt(transportContext.c())).array());
        if (transportContext.b() != null) {
            adler32.update(transportContext.b());
        }
        return (int) adler32.getValue();
    }
}
