package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import androidx.work.WorkRequest;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.r;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class SchedulerConfig {

    @AutoValue
    public static abstract class ConfigValue {

        @AutoValue.Builder
        public static abstract class a {
            public abstract ConfigValue a();

            public abstract a b(long j);

            public abstract a c(Set<Flag> set);

            public abstract a d(long j);
        }

        public static a builder() {
            return new r.b().c(Collections.emptySet());
        }

        abstract long a();

        abstract Set<Flag> b();

        abstract long c();
    }

    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public static class a {
        private com.google.android.datatransport.runtime.time.a a;
        private Map<Priority, ConfigValue> b = new HashMap();

        public a a(Priority priority, ConfigValue configValue) {
            this.b.put(priority, configValue);
            return this;
        }

        public SchedulerConfig b() {
            Objects.requireNonNull(this.a, "missing required property: clock");
            if (this.b.keySet().size() < Priority.values().length) {
                throw new IllegalStateException("Not all priorities have been configured");
            }
            Map<Priority, ConfigValue> map = this.b;
            this.b = new HashMap();
            return SchedulerConfig.c(this.a, map);
        }

        public a c(com.google.android.datatransport.runtime.time.a aVar) {
            this.a = aVar;
            return this;
        }
    }

    private long a(int i, long j) {
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2L) * ((long) r7))));
    }

    public static a builder() {
        return new a();
    }

    static SchedulerConfig c(com.google.android.datatransport.runtime.time.a aVar, Map<Priority, ConfigValue> map) {
        return new q(aVar, map);
    }

    private static <T> Set<T> g(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    public static SchedulerConfig getDefault(com.google.android.datatransport.runtime.time.a aVar) {
        return builder().a(Priority.DEFAULT, ConfigValue.builder().b(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).d(86400000L).a()).a(Priority.HIGHEST, ConfigValue.builder().b(1000L).d(86400000L).a()).a(Priority.VERY_LOW, ConfigValue.builder().b(86400000L).d(86400000L).c(g(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE)).a()).c(aVar).b();
    }

    @RequiresApi(api = 21)
    private void h(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    @RequiresApi(api = 21)
    public JobInfo.Builder b(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(e(priority, j, i));
        h(builder, f().get(priority).b());
        return builder;
    }

    abstract com.google.android.datatransport.runtime.time.a d();

    public long e(Priority priority, long j, int i) {
        long jA = j - d().a();
        ConfigValue configValue = f().get(priority);
        return Math.min(Math.max(a(i, configValue.a()), jA), configValue.c());
    }

    abstract Map<Priority, ConfigValue> f();
}
