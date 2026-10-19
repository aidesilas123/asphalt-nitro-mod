package com.squareup.imagelib;

import android.net.NetworkInfo;
import com.squareup.imagelib.Picasso;
import com.squareup.imagelib.a0;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: PicassoExecutorService.java */
/* JADX INFO: loaded from: classes4.dex */
class r extends ThreadPoolExecutor {

    /* JADX INFO: compiled from: PicassoExecutorService.java */
    private static final class a extends FutureTask<c> implements Comparable<a> {
        private final c a;

        public a(c cVar) {
            super(cVar, null);
            this.a = cVar;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(a aVar) {
            Picasso.Priority priorityR = this.a.r();
            Picasso.Priority priorityR2 = aVar.a.r();
            return priorityR == priorityR2 ? this.a.f7745e - aVar.a.f7745e : priorityR2.ordinal() - priorityR.ordinal();
        }
    }

    r() {
        super(3, 3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a0.e());
    }

    private void b(int i) {
        setCorePoolSize(i);
        setMaximumPoolSize(i);
    }

    void a(NetworkInfo networkInfo) {
        if (networkInfo == null || !networkInfo.isConnectedOrConnecting()) {
            b(3);
            return;
        }
        int type = networkInfo.getType();
        if (type != 0) {
            if (type == 1 || type == 6 || type == 9) {
                b(4);
                return;
            } else {
                b(3);
                return;
            }
        }
        int subtype = networkInfo.getSubtype();
        switch (subtype) {
            case 1:
            case 2:
                b(1);
                return;
            case 3:
            case 4:
            case 5:
            case 6:
                break;
            default:
                switch (subtype) {
                    case 12:
                        break;
                    case 13:
                    case 14:
                    case 15:
                        b(3);
                        break;
                    default:
                        b(3);
                        break;
                }
                return;
        }
        b(2);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        a aVar = new a((c) runnable);
        execute(aVar);
        return aVar;
    }
}
