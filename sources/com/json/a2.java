package com.json;

import com.json.environment.thread.IronSourceThreadManager;
import com.json.environment.workerthread.WorkerManager;
import com.json.environment.workerthread.WorkerResult;
import com.json.mediationsdk.logger.IronLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a2 {

    class a implements WorkerManager.WorkEndedListener<b2> {
        final /* synthetic */ b a;

        a(b bVar) {
            this.a = bVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
        public void onWorkCompleted(List<WorkerResult<b2>> list, long j) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (WorkerResult<b2> workerResult : list) {
                if (workerResult instanceof WorkerResult.Completed) {
                    arrayList2.add((b2) ((WorkerResult.Completed) workerResult).data);
                } else if (workerResult instanceof WorkerResult.Canceled) {
                    arrayList.add(((x1) ((WorkerResult.Canceled) workerResult).callable).c());
                } else if (workerResult instanceof WorkerResult.Failed) {
                    WorkerResult.Failed failed = (WorkerResult.Failed) workerResult;
                    x1 x1Var = (x1) failed.callable;
                    arrayList2.add(new b2(x1Var.d(), x1Var.c(), null, 0L, failed.exception.getMessage()));
                }
            }
            a2.this.b(arrayList2, arrayList, j);
            this.a.a(arrayList2, j, arrayList);
        }

        @Override // com.ironsource.environment.workerthread.WorkerManager.WorkEndedListener
        public void onWorkFailed(String str) {
            String str2 = "failed to collect bidding data, error= " + str;
            IronLog.INTERNAL.verbose(str2);
            this.a.onFailure(str2);
        }
    }

    public interface b {
        void a(List<b2> list, long j, List<String> list2);

        void onFailure(String str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<b2> list, List<String> list2, long j) {
        IronLog ironLog;
        StringBuilder sb;
        String strB;
        IronLog.INTERNAL.verbose("tokens received=" + list.size() + ", reached timeout=" + list2.size() + ", total duration=" + j + " millis");
        for (b2 b2Var : list) {
            if (b2Var.a() != null) {
                ironLog = IronLog.INTERNAL;
                sb = new StringBuilder();
                sb.append(b2Var.c());
                sb.append(" - success (");
                sb.append(b2Var.e());
                strB = " millis)";
            } else {
                ironLog = IronLog.INTERNAL;
                sb = new StringBuilder();
                sb.append(b2Var.c());
                sb.append(" - failed (");
                sb.append(b2Var.e());
                sb.append(" millis) error: ");
                strB = b2Var.b();
            }
            sb.append(strB);
            ironLog.verbose(sb.toString());
        }
        for (String str : list2) {
            IronLog.INTERNAL.verbose(str + " reached timeout");
        }
    }

    public void a(List<x1> list, b bVar, long j, TimeUnit timeUnit) {
        try {
            if (list.isEmpty()) {
                IronLog.INTERNAL.verbose("BiddingDataCallable list is empty");
                return;
            }
            WorkerManager workerManager = new WorkerManager(IronSourceThreadManager.INSTANCE.getThreadPoolExecutor());
            Iterator<x1> it = list.iterator();
            while (it.hasNext()) {
                workerManager.addCallable(it.next());
            }
            IronLog.INTERNAL.verbose("instances=" + list.size() + ", timeout=" + j + " millis");
            workerManager.startWork(new a(bVar), j, timeUnit);
        } catch (Throwable th) {
            String str = "Exception - failed to collect bidding data, error= " + th.getMessage();
            IronLog.INTERNAL.error(str);
            bVar.onFailure(str);
        }
    }
}
