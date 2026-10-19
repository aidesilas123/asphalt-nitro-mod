package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.runtime.backends.CreationContextFactory_Factory;
import com.google.android.datatransport.runtime.backends.MetadataBackendRegistry_Factory;
import com.google.android.datatransport.runtime.dagger.internal.DoubleCheck;
import com.google.android.datatransport.runtime.dagger.internal.InstanceFactory;
import com.google.android.datatransport.runtime.dagger.internal.Preconditions;
import com.google.android.datatransport.runtime.n;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler_Factory;
import com.google.android.datatransport.runtime.scheduling.SchedulingConfigModule_ConfigFactory;
import com.google.android.datatransport.runtime.scheduling.SchedulingModule_WorkSchedulerFactory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer_Factory;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.t;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.u;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.v;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_DbNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_PackageNameFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_SchemaVersionFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStoreModule_StoreConfigFactory;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager_Factory;
import com.google.android.datatransport.runtime.scheduling.persistence.j0;
import com.google.android.datatransport.runtime.scheduling.persistence.m0;
import com.google.android.datatransport.runtime.time.TimeModule_EventClockFactory;
import com.google.android.datatransport.runtime.time.TimeModule_UptimeClockFactory;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class DaggerTransportRuntimeComponent extends n {
    private e.a.a<Executor> a;
    private e.a.a<Context> b;
    private e.a.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e.a.a f3010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private e.a.a f3011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e.a.a<String> f3012f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e.a.a<m0> f3013g;
    private e.a.a<SchedulerConfig> h;
    private e.a.a<v> i;
    private e.a.a<com.google.android.datatransport.runtime.scheduling.c> j;
    private e.a.a<t> k;
    private e.a.a<u> l;
    private e.a.a<TransportRuntime> m;

    private static final class b implements n.a {
        private Context a;

        private b() {
        }

        @Override // com.google.android.datatransport.runtime.n.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b a(Context context) {
            this.a = (Context) Preconditions.checkNotNull(context);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.n.a
        public n build() {
            Preconditions.checkBuilderRequirement(this.a, Context.class);
            return new DaggerTransportRuntimeComponent(this.a);
        }
    }

    private DaggerTransportRuntimeComponent(Context context) {
        f(context);
    }

    public static n.a builder() {
        return new b();
    }

    private void f(Context context) {
        this.a = DoubleCheck.provider(ExecutionModule_ExecutorFactory.create());
        com.google.android.datatransport.runtime.dagger.internal.b bVarCreate = InstanceFactory.create(context);
        this.b = bVarCreate;
        CreationContextFactory_Factory creationContextFactory_FactoryCreate = CreationContextFactory_Factory.create(bVarCreate, TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create());
        this.c = creationContextFactory_FactoryCreate;
        this.f3010d = DoubleCheck.provider(MetadataBackendRegistry_Factory.create(this.b, creationContextFactory_FactoryCreate));
        this.f3011e = SchemaManager_Factory.create(this.b, EventStoreModule_DbNameFactory.create(), EventStoreModule_SchemaVersionFactory.create());
        this.f3012f = EventStoreModule_PackageNameFactory.create(this.b);
        this.f3013g = DoubleCheck.provider(SQLiteEventStore_Factory.create(TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), EventStoreModule_StoreConfigFactory.create(), this.f3011e, this.f3012f));
        SchedulingConfigModule_ConfigFactory schedulingConfigModule_ConfigFactoryCreate = SchedulingConfigModule_ConfigFactory.create(TimeModule_EventClockFactory.create());
        this.h = schedulingConfigModule_ConfigFactoryCreate;
        SchedulingModule_WorkSchedulerFactory schedulingModule_WorkSchedulerFactoryCreate = SchedulingModule_WorkSchedulerFactory.create(this.b, this.f3013g, schedulingConfigModule_ConfigFactoryCreate, TimeModule_UptimeClockFactory.create());
        this.i = schedulingModule_WorkSchedulerFactoryCreate;
        e.a.a<Executor> aVar = this.a;
        e.a.a aVar2 = this.f3010d;
        e.a.a<m0> aVar3 = this.f3013g;
        this.j = DefaultScheduler_Factory.create(aVar, aVar2, schedulingModule_WorkSchedulerFactoryCreate, aVar3, aVar3);
        e.a.a<Context> aVar4 = this.b;
        e.a.a aVar5 = this.f3010d;
        e.a.a<m0> aVar6 = this.f3013g;
        this.k = Uploader_Factory.create(aVar4, aVar5, aVar6, this.i, this.a, aVar6, TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), this.f3013g);
        e.a.a<Executor> aVar7 = this.a;
        e.a.a<m0> aVar8 = this.f3013g;
        this.l = WorkInitializer_Factory.create(aVar7, aVar8, this.i, aVar8);
        this.m = DoubleCheck.provider(TransportRuntime_Factory.create(TimeModule_EventClockFactory.create(), TimeModule_UptimeClockFactory.create(), this.j, this.k, this.l));
    }

    @Override // com.google.android.datatransport.runtime.n
    j0 d() {
        return this.f3013g.get();
    }

    @Override // com.google.android.datatransport.runtime.n
    TransportRuntime e() {
        return this.m.get();
    }
}
